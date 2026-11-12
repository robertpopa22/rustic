//! Reading backup sources from files, like restic's `--files-from`, `--files-from-verbatim`
//! and `--files-from-raw`.
//!
//! The rules follow restic 0.19.1 (`cmd/restic/cmd_backup.go`, `internal/textfile`):
//!
//! - `--files-from`: text file; a UTF-8 BOM is removed and UTF-16 (with BOM) is decoded;
//!   every line is trimmed, empty lines and lines starting with `#` are ignored, and each
//!   line is a glob pattern with Go's `filepath.Glob` syntax. A pattern without matches is
//!   skipped with a warning; a malformed pattern is an error.
//! - `--files-from-verbatim`: same decoding; lines are taken literally (one trailing `\r`
//!   removed), only empty lines are ignored.
//! - `--files-from-raw`: names separated by NUL bytes; the listing must end with a NUL and
//!   must not contain empty names.
//!
//! `-` as file name reads standard input, without text decoding.

use std::{
    fs,
    io::Read,
    path::{MAIN_SEPARATOR, Path},
};

use anyhow::{Result, anyhow, bail};
use log::warn;

/// Read a listing given by `--files-from*`; `-` is standard input.
fn read_bytes(file: &Path) -> Result<(Vec<u8>, bool)> {
    if file == Path::new("-") {
        let mut buf = Vec::new();
        _ = std::io::stdin().read_to_end(&mut buf)?;
        Ok((buf, true))
    } else {
        Ok((
            fs::read(file).map_err(|err| anyhow!("{}: {err}", file.display()))?,
            false,
        ))
    }
}

/// Decode a text listing like restic's `textfile.Decode`: strip a UTF-8 BOM, decode UTF-16
/// with BOM. Standard input is not decoded.
fn decode_text(data: Vec<u8>, from_stdin: bool) -> Result<String> {
    if !from_stdin {
        if let Some(rest) = data.strip_prefix(&[0xEF, 0xBB, 0xBF]) {
            return Ok(String::from_utf8(rest.to_vec())?);
        }
        let utf16 = |be: bool| -> Result<String> {
            let units: Vec<u16> = data[2..]
                .chunks(2)
                .map(|c| {
                    let pair = [c[0], *c.get(1).unwrap_or(&0)];
                    if be {
                        u16::from_be_bytes(pair)
                    } else {
                        u16::from_le_bytes(pair)
                    }
                })
                .collect();
            Ok(String::from_utf16(&units)?)
        };
        if data.starts_with(&[0xFF, 0xFE]) {
            return utf16(false);
        }
        if data.starts_with(&[0xFE, 0xFF]) {
            return utf16(true);
        }
    }
    Ok(String::from_utf8(data)?)
}

/// Lines of `--files-from`: trimmed, without empty lines and comments.
pub(crate) fn patterns_from_text(text: &str) -> Vec<String> {
    text.lines()
        .map(str::trim)
        .filter(|l| !l.is_empty() && !l.starts_with('#'))
        .map(str::to_string)
        .collect()
}

/// Lines of `--files-from-verbatim`: literal, only empty lines removed.
pub(crate) fn names_verbatim(text: &str) -> Vec<String> {
    text.split('\n')
        .map(|l| l.strip_suffix('\r').unwrap_or(l))
        .filter(|l| !l.is_empty())
        .map(str::to_string)
        .collect()
}

/// Names of `--files-from-raw`: NUL separated, must end with NUL, no empty names.
pub(crate) fn names_raw(data: &[u8]) -> Result<Vec<String>> {
    if data.is_empty() {
        return Ok(Vec::new());
    }
    let Some(body) = data.strip_suffix(&[0]) else {
        bail!("--files-from-raw: trailing zero byte missing");
    };
    body.split(|&b| b == 0)
        .map(|name| {
            if name.is_empty() {
                bail!("--files-from-raw: empty filename in listing");
            }
            String::from_utf8(name.to_vec())
                .map_err(|_| anyhow!("--files-from-raw: file name is not valid UTF-8"))
        })
        .collect()
}

/// All names given by the three options, in restic's order (`--files-from`,
/// `--files-from-verbatim`, `--files-from-raw`). Glob patterns are expanded.
pub(crate) fn collect(
    files_from: &[impl AsRef<Path>],
    verbatim: &[impl AsRef<Path>],
    raw: &[impl AsRef<Path>],
) -> Result<Vec<String>> {
    let mut out = Vec::new();
    for file in files_from {
        let (data, stdin) = read_bytes(file.as_ref())?;
        for pattern in patterns_from_text(&decode_text(data, stdin)?) {
            let matches = glob(&pattern).map_err(|err| anyhow!("pattern: {pattern}: {err}"))?;
            if matches.is_empty() {
                warn!("pattern {pattern:?} does not match any files, skipping");
            }
            out.extend(matches);
        }
    }
    for file in verbatim {
        let (data, stdin) = read_bytes(file.as_ref())?;
        out.extend(names_verbatim(&decode_text(data, stdin)?));
    }
    for file in raw {
        let (data, _) = read_bytes(file.as_ref())?;
        out.extend(names_raw(&data)?);
    }
    Ok(out)
}

// ---------------------------------------------------------------------------------------
// Port of Go's path/filepath Match and Glob (Go 1.25), which restic uses.

/// Error for a malformed pattern, as Go's `filepath.ErrBadPattern`.
#[derive(Debug, PartialEq, Eq)]
pub(crate) struct BadPattern;

impl std::fmt::Display for BadPattern {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_str("syntax error in pattern")
    }
}

impl std::error::Error for BadPattern {}

/// Go's `os.PathSeparator`, the only separator `Match` knows (`\` on Windows, `/` elsewhere).
const fn is_separator(c: char) -> bool {
    c == MAIN_SEPARATOR
}

/// Go's `os.IsPathSeparator`, used by `Split` (`/` and `\` on Windows).
const fn is_path_separator(c: char) -> bool {
    c == '/' || (cfg!(windows) && c == '\\')
}

/// Go's `hasMeta`: `*`, `?`, `[`, and `\` on non-Windows.
fn has_meta(path: &str) -> bool {
    path.contains(['*', '?', '[']) || (!cfg!(windows) && path.contains('\\'))
}

/// Go's `filepath.Match`.
pub(crate) fn match_pattern(mut pattern: &str, mut name: &str) -> Result<bool, BadPattern> {
    'pattern: while !pattern.is_empty() {
        let (star, chunk, rest) = scan_chunk(pattern);
        pattern = rest;
        if star && chunk.is_empty() {
            // trailing * matches rest of string unless it has a separator
            return Ok(!name.chars().any(is_separator));
        }
        // look for match at current position
        let (t, ok) = match_chunk(chunk, name)?;
        // if we're the last chunk, make sure we've exhausted the name
        // otherwise we'll give a false result even if we could still match using the star
        if ok && (t.is_empty() || !pattern.is_empty()) {
            name = t;
            continue;
        }
        if star {
            // look for match skipping i+1 bytes; cannot skip a separator
            let mut idx = name.char_indices().peekable();
            while let Some((_, c)) = idx.next() {
                if is_separator(c) {
                    break;
                }
                let next = idx.peek().map_or(name.len(), |(j, _)| *j);
                let (t, ok) = match_chunk(chunk, &name[next..])?;
                if ok {
                    // if we're the last chunk, make sure we exhausted the name
                    if pattern.is_empty() && !t.is_empty() {
                        continue;
                    }
                    name = t;
                    continue 'pattern;
                }
            }
        }
        // Before returning false with no error, check that the remainder of the pattern is
        // syntactically valid.
        while !pattern.is_empty() {
            let (_, chunk, rest) = scan_chunk(pattern);
            pattern = rest;
            _ = match_chunk(chunk, "")?;
        }
        return Ok(false);
    }
    Ok(name.is_empty())
}

/// Go's `scanChunk`: returns (star, chunk, rest).
fn scan_chunk(mut pattern: &str) -> (bool, &str, &str) {
    let mut star = false;
    while let Some(rest) = pattern.strip_prefix('*') {
        pattern = rest;
        star = true;
    }
    let mut in_range = false;
    let bytes = pattern.as_bytes();
    let mut i = 0;
    while i < bytes.len() {
        match bytes[i] {
            b'\\' if !cfg!(windows) => {
                // error check is done in match_chunk: bad pattern
                if i + 1 < bytes.len() {
                    i += 1;
                }
            }
            b'[' => in_range = true,
            b']' => in_range = false,
            b'*' if !in_range => break,
            _ => {}
        }
        i += 1;
    }
    (star, &pattern[..i], &pattern[i..])
}

/// Go's `matchChunk`: returns (rest of name, matched).
fn match_chunk<'a>(mut chunk: &str, mut s: &'a str) -> Result<(&'a str, bool), BadPattern> {
    // failed records whether the match has failed; after it fails, the loop continues on
    // processing chunk, checking that the pattern is well-formed but no longer reading s.
    let mut failed = false;
    while !chunk.is_empty() {
        if !failed && s.is_empty() {
            failed = true;
        }
        let first = chunk.chars().next().unwrap_or_default();
        match first {
            '[' => {
                // character class
                let mut r = '\0';
                if !failed {
                    let c = s.chars().next().unwrap_or_default();
                    s = &s[c.len_utf8()..];
                    r = c;
                }
                chunk = &chunk[1..];
                // possibly negated
                let mut negated = false;
                if let Some(rest) = chunk.strip_prefix('^') {
                    negated = true;
                    chunk = rest;
                }
                // parse all ranges
                let mut matched = false;
                let mut nrange = 0;
                loop {
                    if !chunk.is_empty() && chunk.starts_with(']') && nrange > 0 {
                        chunk = &chunk[1..];
                        break;
                    }
                    let (lo, rest) = get_esc(chunk)?;
                    chunk = rest;
                    let mut hi = lo;
                    if let Some(rest) = chunk.strip_prefix('-') {
                        let (h, rest) = get_esc(rest)?;
                        hi = h;
                        chunk = rest;
                    }
                    if lo <= r && r <= hi {
                        matched = true;
                    }
                    nrange += 1;
                }
                if matched == negated {
                    failed = true;
                }
            }
            '?' => {
                if !failed {
                    let c = s.chars().next().unwrap_or_default();
                    if is_separator(c) {
                        failed = true;
                    }
                    s = &s[c.len_utf8().min(s.len())..];
                }
                chunk = &chunk[1..];
            }
            '\\' if !cfg!(windows) => {
                chunk = &chunk[1..];
                if chunk.is_empty() {
                    return Err(BadPattern);
                }
                let c = chunk.chars().next().unwrap_or_default();
                if !failed {
                    if !s.starts_with(c) {
                        failed = true;
                    } else {
                        s = &s[c.len_utf8()..];
                    }
                }
                chunk = &chunk[c.len_utf8()..];
            }
            c => {
                if !failed {
                    if !s.starts_with(c) {
                        failed = true;
                    } else {
                        s = &s[c.len_utf8()..];
                    }
                }
                chunk = &chunk[c.len_utf8()..];
            }
        }
    }
    if failed {
        return Ok(("", false));
    }
    Ok((s, true))
}

/// Go's `getEsc`.
fn get_esc(chunk: &str) -> Result<(char, &str), BadPattern> {
    let mut chars = chunk.chars();
    let Some(mut r) = chars.next() else {
        return Err(BadPattern);
    };
    if r == '-' || r == ']' {
        return Err(BadPattern);
    }
    let mut rest = &chunk[r.len_utf8()..];
    if r == '\\' && !cfg!(windows) {
        let Some(c) = rest.chars().next() else {
            return Err(BadPattern);
        };
        r = c;
        rest = &rest[c.len_utf8()..];
    }
    if rest.is_empty() {
        return Err(BadPattern);
    }
    Ok((r, rest))
}

/// Go's `filepath.Split` on the native separator(s).
fn split(path: &str) -> (&str, &str) {
    let vol = volume_name_len(path);
    let mut i = path.len();
    while i > vol && !is_path_separator(path[..i].chars().next_back().unwrap_or_default()) {
        i -= path[..i].chars().next_back().map_or(1, char::len_utf8);
    }
    (&path[..i], &path[i..])
}

/// Length of a Windows volume name like `C:` (UNC paths are not expanded here).
fn volume_name_len(path: &str) -> usize {
    let b = path.as_bytes();
    if cfg!(windows) && b.len() >= 2 && b[1] == b':' && b[0].is_ascii_alphabetic() {
        2
    } else {
        0
    }
}

/// Go's `cleanGlobPath`.
fn clean_glob_path(path: &str) -> String {
    let vol = volume_name_len(path);
    match &path[vol..] {
        "" => format!("{}.", &path[..vol]),
        p if p.len() == 1 && p.chars().all(is_path_separator) => path.to_string(),
        _ => path[..path.len() - 1].to_string(), // chop off trailing separator
    }
}

/// Go's `filepath.Glob`. Returns the matching names, sorted per directory, or
/// [`BadPattern`]. Without meta characters the pattern is returned if it exists (lstat).
pub(crate) fn glob(pattern: &str) -> Result<Vec<String>, BadPattern> {
    // check pattern is well-formed
    _ = match_pattern(pattern, "")?;
    if !has_meta(pattern) {
        return Ok(if Path::new(pattern).symlink_metadata().is_ok() {
            vec![pattern.to_string()]
        } else {
            Vec::new()
        });
    }
    let (dir, file) = split(pattern);
    let vol = volume_name_len(dir);
    let dir = clean_glob_path(dir);
    if !has_meta(&dir[vol.min(dir.len())..]) {
        return glob_dir(&dir, file);
    }
    // Prevent infinite recursion.
    if dir == pattern {
        return Err(BadPattern);
    }
    let mut out = Vec::new();
    for d in glob(&dir)? {
        out.extend(glob_dir(&d, file)?);
    }
    Ok(out)
}

/// Go's `glob`: matches `pattern` against the entries of `dir`.
fn glob_dir(dir: &str, pattern: &str) -> Result<Vec<String>, BadPattern> {
    let Ok(meta) = fs::metadata(dir) else {
        return Ok(Vec::new()); // ignore I/O error
    };
    if !meta.is_dir() {
        return Ok(Vec::new());
    }
    let Ok(entries) = fs::read_dir(dir) else {
        return Ok(Vec::new());
    };
    let mut names: Vec<String> = entries
        .filter_map(std::result::Result::ok)
        .filter_map(|e| e.file_name().into_string().ok())
        .collect();
    names.sort();
    let mut out = Vec::new();
    for n in names {
        if match_pattern(pattern, &n)? {
            out.push(join(dir, &n));
        }
    }
    Ok(out)
}

fn join(dir: &str, name: &str) -> String {
    if dir.is_empty() || dir == "." {
        return name.to_string();
    }
    if dir.ends_with(is_path_separator) {
        format!("{dir}{name}")
    } else {
        format!("{dir}{MAIN_SEPARATOR}{name}")
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn files_from_lines() {
        let text = "# c\n  a  \n\n#b\r\nx y\r\n";
        assert_eq!(patterns_from_text(text), ["a", "x y"]);
    }

    #[test]
    fn verbatim_lines() {
        let text = " a\n#b\n\nc\r\nlast\r";
        assert_eq!(names_verbatim(text), [" a", "#b", "c", "last"]);
    }

    #[test]
    fn raw_listing() {
        assert_eq!(names_raw(b"a\0b c\0").unwrap(), ["a", "b c"]);
        assert!(names_raw(b"").unwrap().is_empty());
        assert_eq!(
            names_raw(b"a\0b").unwrap_err().to_string(),
            "--files-from-raw: trailing zero byte missing"
        );
        assert_eq!(
            names_raw(b"a\0\0b\0").unwrap_err().to_string(),
            "--files-from-raw: empty filename in listing"
        );
    }

    #[test]
    fn decoding() {
        let mut bom = vec![0xEF, 0xBB, 0xBF];
        bom.extend(b"a\n");
        assert_eq!(decode_text(bom.clone(), false).unwrap(), "a\n");
        // stdin is not decoded
        assert!(decode_text(bom, true).unwrap().starts_with('\u{feff}'));
        let mut le = vec![0xFF, 0xFE];
        for u in "b\r\n".encode_utf16() {
            le.extend(u.to_le_bytes());
        }
        assert_eq!(decode_text(le, false).unwrap(), "b\r\n");
    }

    // cases from Go's path/filepath match_test.go
    #[test]
    fn go_match_cases() {
        let cases: &[(&str, &str, Result<bool, BadPattern>)] = &[
            ("abc", "abc", Ok(true)),
            ("*", "abc", Ok(true)),
            ("*c", "abc", Ok(true)),
            ("a*", "a", Ok(true)),
            ("a*", "abc", Ok(true)),
            ("a*", "ab/c", Ok(false)),
            ("a*/b", "abc/b", Ok(true)),
            ("a*/b", "a/c/b", Ok(false)),
            ("a*b*c*d*e*/f", "axbxcxdxe/f", Ok(true)),
            ("a*b*c*d*e*/f", "axbxcxdxexxx/f", Ok(true)),
            ("a*b*c*d*e*/f", "axbxcxdxe/xxx/f", Ok(false)),
            ("a*b*c*d*e*/f", "axbxcxdxexxx/fff", Ok(false)),
            ("a*b?c*x", "abxbbxdbxebxczzx", Ok(true)),
            ("a*b?c*x", "abxbbxdbxebxczzy", Ok(false)),
            ("ab[c]", "abc", Ok(true)),
            ("ab[b-d]", "abc", Ok(true)),
            ("ab[e-g]", "abc", Ok(false)),
            ("ab[^c]", "abc", Ok(false)),
            ("ab[^b-d]", "abc", Ok(false)),
            ("ab[^e-g]", "abc", Ok(true)),
            ("a?b", "a☺b", Ok(true)),
            ("a[^a]b", "a☺b", Ok(true)),
            ("a???b", "a☺b", Ok(false)),
            ("a[^a][^a][^a]b", "a☺b", Ok(false)),
            ("[a-ζ]*", "α", Ok(true)),
            ("*[a-ζ]", "A", Ok(false)),
            ("a?b", "a/b", Ok(false)),
            ("a*b", "a/b", Ok(false)),
            ("[]a]", "]", Err(BadPattern)),
            ("[-]", "-", Err(BadPattern)),
            ("[x-]", "x", Err(BadPattern)),
            ("[x-]", "-", Err(BadPattern)),
            ("[x-]", "z", Err(BadPattern)),
            ("[-x]", "x", Err(BadPattern)),
            ("[-x]", "-", Err(BadPattern)),
            ("[-x]", "a", Err(BadPattern)),
            ("[a-b-c]", "a", Err(BadPattern)),
            ("[", "a", Err(BadPattern)),
            ("[^", "a", Err(BadPattern)),
            ("[^bc", "a", Err(BadPattern)),
            ("a[", "a", Err(BadPattern)),
            ("a[", "ab", Err(BadPattern)),
            ("a[", "x", Err(BadPattern)),
            ("a/b[", "x", Err(BadPattern)),
            ("*x", "xxx", Ok(true)),
            ("**", "abc", Ok(true)),
        ];
        for (pattern, name, want) in cases {
            // like Go's test on Windows: use the native separator
            let pattern = pattern.replace('/', &MAIN_SEPARATOR.to_string());
            let name = name.replace('/', &MAIN_SEPARATOR.to_string());
            assert_eq!(
                &match_pattern(&pattern, &name),
                want,
                "match({pattern:?}, {name:?})"
            );
        }
    }

    #[test]
    fn glob_on_disk() {
        let dir = tempfile::tempdir().unwrap();
        let root = dir.path().to_str().unwrap();
        for f in ["a.txt", "b.txt", "c.log"] {
            fs::write(dir.path().join(f), b"").unwrap();
        }
        fs::create_dir(dir.path().join("sub")).unwrap();
        fs::write(dir.path().join("sub").join("d.txt"), b"").unwrap();
        let sep = MAIN_SEPARATOR;
        let got = glob(&format!("{root}{sep}*.txt")).unwrap();
        assert_eq!(
            got,
            [format!("{root}{sep}a.txt"), format!("{root}{sep}b.txt")]
        );
        let got = glob(&format!("{root}{sep}s*{sep}*.txt")).unwrap();
        assert_eq!(got, [format!("{root}{sep}sub{sep}d.txt")]);
        // ** is the same as * (not recursive)
        assert_eq!(glob(&format!("{root}{sep}**{sep}*.txt")).unwrap().len(), 1);
        assert!(glob(&format!("{root}{sep}none*")).unwrap().is_empty());
        assert_eq!(glob(&format!("{root}{sep}[a.txt")), Err(BadPattern));
        // without meta characters: returned if it exists
        assert_eq!(glob(&format!("{root}{sep}c.log")).unwrap().len(), 1);
        assert!(glob(&format!("{root}{sep}missing")).unwrap().is_empty());
    }
}
