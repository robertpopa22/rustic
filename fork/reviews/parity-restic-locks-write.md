# Review log: writing restic-compatible locks, `unlock` (roadmap item 3)

Change: `rustic_core` `parity/restic-locks` (`7235946`, `9dee250`), `rustic`
`parity/restic-locks-write` (`43684d0`, `ddcf028`). Test: [../tests/locks.ps1](../tests/locks.ps1),
39 checks against stock restic 0.19.1 on Windows, all pass (run twice).

Counter-opinions: Codex (static review of both commits) and Gemini (design question, no code
shared). Every claim about restic was checked against restic 0.19.1 source
(`internal/restic/lock.go`, `internal/repository/lock.go`).

| # | From | Finding | Checked in restic | Outcome |
|---|---|---|---|---|
| 1 | Codex | prune planned under the shared lock; a backup could finish before the upgrade, then prune deletes packs the new snapshot needs | restic takes the exclusive lock before planning | **fixed**: `Repository::lock_exclusive()`; prune, forget, check, repair, rewrite --forget/tag take it right after opening |
| 2 | Codex, Gemini | a lost or expired lock does not stop the operation | restic polls every second, refreshes a stale lock only if it still exists, else cancels ("failed to refresh lock in time") | **fixed**: same timing (22.5 min), stale refresh with existence check, then the process stops |
| 3 | Codex, Gemini | `unlock` removed unreadable locks | `RemoveStaleLocks` ignores unreadable locks; only `--remove-all` removes them | **fixed** |
| 4 | Codex | `unlock` ignored `--dry-run` | — | **fixed**: lists what would be removed |
| 5 | Codex | `copy` did not pass `--restic-locks` to the target | — | **fixed** |
| 6 | Codex | local backend hid listing errors in `locks/` | — | **fixed**: strict listing, only a missing directory means no locks |
| 7 | Codex | hot/cold: listed cold, read hot | locks belong to the repository restic sees | **fixed**: locks only in the cold repository |
| 8 | Codex | rewrite/tag wrote snapshots before the exclusive check | — | **fixed** with 1; test A5c |
| 9 | Codex, Gemini | `check` not exclusive | restic `check` locks exclusively | **fixed** with 1; test A5b |
| 10 | Codex, Gemini | Ctrl-C skips destructors, locks stay | restic removes its lock on cancel | **fixed**: Ctrl-C handler calls `remove_held_locks()`. Not tested automatically (no console Ctrl-C from the test) |
| 11 | Codex | upgrade could race with its own refresh | — | **fixed**: one mutex for check, create, refresh, remove |
| 12 | Codex, Gemini | a lock replaced by its owner's refresh made the other client fail at once | restic retries 3 times after 5, 10, 20 s | **fixed** |
| 13 | Codex, Gemini | dead process on the same host not stale | restic `Stale()` checks the PID on the same host | **fixed on Unix**; on Windows the crate forbids unsafe code, so only the age counts (more cautious); test E1c documents it |
| 14 | Codex, Gemini | refresh lost track of old locks whose delete failed | — | **fixed**: kept and retried, removed at the end |
| 15 | Gemini | uid/gid must be omitted when 0 | `json:"uid,omitempty"` | **fixed** |
| 16 | Gemini | lock files must use the repository's codec (v2 compression) | — | **no change**: written with the repository's own encrypt/compress path; restic reads them (test C2) |
| 17 | Gemini | `unlock` cannot open a repository with a stale exclusive lock | — | **rejected**: `unlock` opens with `--ignore-restic-locks`; test E2 |
| 18 | Gemini | locking should be on by default | restic always locks | **open, for upstream**: opt-in (`--restic-locks`) keeps rustic's lock-free design for users who do not share repositories with restic; without the flag rustic still refuses to open during an exclusive restic lock |
| 19 | Gemini | two concurrent rustic prunes each hold a shared lock and block each other's upgrade | — | **accepted as is**: both refuse, nothing is damaged; with item 1 the exclusive lock is taken first thing |
| 20 | Codex | behaviour change without the flag: opening refuses during an exclusive lock | restic does the same | **kept, documented**: `--ignore-restic-locks` restores the old behaviour |

Not covered: `--retry-lock` (restic waits for a lock; rustic refuses at once), Ctrl-C test,
REST/S3 backends.
