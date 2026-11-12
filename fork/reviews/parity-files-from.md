# Review: `parity/files-from` (rustic)

Author model: Anthropic Claude. Reviewers, independent: Google Gemini (gemini-pro-latest)
and xAI Grok (Grok Build, with live lookup of restic v0.19.1 and Go 1.25 sources).

The first version was rewritten after review: Grok showed it was far from parity. Each
restic behaviour below was confirmed by running restic 0.19.1 on Windows before changing
the code, and the final version was compared with restic on 11 cases.

| # | Reviewer | Finding | Decision | Evidence |
|---|---|---|---|---|
| 1 | Grok | `--files-from-raw` accepted a listing without trailing NUL and empty names | **fixed** | restic: "trailing zero byte missing", "empty filename in listing" (exit 1) |
| 2 | Grok, Gemini | raw names treated as UTF-8 text | **partly fixed**: raw is read as bytes; a non-UTF-8 name is a clear error, because rustic's sources are strings | open: non-UTF-8 names on Unix |
| 3 | Grok | UTF-8 BOM and UTF-16 not handled | **fixed**: port of restic's `textfile.Decode` (named files only, not stdin) | restic backed up the right file from a BOM and a UTF-16 list |
| 4 | Grok | malformed glob skipped instead of aborting | **fixed** | restic: "pattern: …: syntax error in pattern" (exit 1) |
| 5 | Grok, Gemini | `glob` crate differs from Go's `filepath.Glob` (`**`, `[^…]`, escapes, Windows) | **fixed**: `glob` crate removed; Go's `Match`/`Glob` ported, Go's own `match_test.go` cases pass on Windows | restic: `**` behaves as `*` |
| 6 | Grok | restic exits 3 when names were skipped | **open**: rustic has no partial-success exit code; upstream PR rustic-rs/rustic#1908 adds it | restic exit 3, rustic 0, same snapshot |
| 7 | Grok | separate errors for "nothing to back up" and "all missing" | **fixed**, same messages as restic | restic exit 1 in both |
| 8 | Grok, Gemini | stdin can be consumed twice; `-` source combined with lists | **fixed**: backing up stdin cannot be combined with the three options | |
| 9 | Grok | a listed `-` becomes stdin backup | **open**, rare: a list containing only `-` | |
| 10 | Grok | multiple names with one snapshot (#1905 in rustic) | **not reproduced**: 3–5 names per list backed up correctly in every parity case | |
| 11 | Grok | order: restic puts listed names before positional ones | **fixed** | |
| 12 | Grok, Gemini | `--name` silently ignored with the new options | **fixed**: clap conflict | |
| 13 | Grok | one trailing `\r` in verbatim | **fixed** | |
| 14 | Grok | glob I/O errors ignored | **kept as in Go**: Go's `Glob` ignores I/O errors too | Go `filepath.glob` |
| 15 | Gemini | permission errors reported as "does not exist" | **fixed**: only "not found" is skipped; other errors are left to the backup to report | |
| 16 | Gemini | no tests | **fixed**: 6 unit tests incl. 46 Go match cases | |

Parity run (restic 0.19.1 vs rustic, same repository, Windows): files-from, verbatim, raw,
raw without NUL, raw empty name, bad glob, one missing, all missing, UTF-8 BOM, UTF-16,
`**` — same snapshot content and same failures in all 11; only exit code 3 differs.
