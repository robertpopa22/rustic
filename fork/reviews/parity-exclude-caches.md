# Review: `parity/exclude-caches` (rustic_core)

Author model: Anthropic Claude. Reviewers, independent of each other: Google Gemini
(gemini-pro-latest) and xAI Grok (Grok Build, with live lookup of restic v0.19.1 source).
Each reviewer received the diff, the full file and a one-paragraph goal.

Every behavioural claim below was checked by running stock restic 0.19.1 on Windows.

| # | Reviewer | Finding | Severity given | Decision | Evidence |
|---|---|---|---|---|---|
| 1 | Gemini, Grok | Tag file checked for every entry of a directory (one `open` per sibling) | blocker / major | **fixed** `e24a552`: presence cached per directory, as restic's `rejectionCache` | restic `internal/archiver/exclude.go`, `isExcludedByFile` |
| 2 | Gemini | A short `CACHEDIR.TAG` gives one warning per sibling; restic is silent | major | **partly rejected**: restic *does* warn (`could not read signature … unexpected EOF`), but only once; with the cache from #1 rustic now warns once too | run: restic 0.19.1 printed the warning once for a 3-byte tag |
| 3 | Gemini | On Windows `Cachedir.tag` is found case-insensitively but the tag file itself is then excluded | minor | **rejected**: restic does exactly the same (compares the base name case-sensitively, opens case-insensitively) | run: restic excluded both `case/data` and `case/Cachedir.tag` |
| 4 | Gemini, Grok | Two different tags in one directory exclude each other | minor / noted as same as restic | **rejected**: identical in restic (`CombineRejects` ORs the rejects); test `two_tags_in_one_dir_exclude_each_other_like_restic` pins it | run: restic kept only the directory |
| 5 | Grok | Empty name (`""`, `":header"`) or absolute name matches every directory and silently empties the backup; restic errors out | major | **fixed** `d651d5f`: `parse` returns an error for empty names and for names with root, prefix, `.` or `..` components | restic `RejectIfPresent`: "name for exclusion tagfile is empty" |
| 6 | Grok | Presence without header followed symlinks and swallowed errors; restic uses `lstat` (dangling link = present) and warns on other errors | minor | **fixed** `d651d5f` | restic `exclude.go` `Lstat` branch |

Upstream context found by Grok: the behaviour change (keep the directory and the tag
file) is what open issue rustic-rs/rustic#664 asks for. rustic's documentation (from
rustic-rs/rustic#1506) describes the old behaviour and needs the same change.

Open findings: none.
