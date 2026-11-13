# Roadmap: closing the gaps

Ordered by value for users who run restic and rustic on the same repository, then by
size. Size: S < 1 day, M 1–5 days, L > 1 week. Every item ships with the test that
proves parity, run against stock restic.

| # | Gap | Size | Parity test | State |
|---|---|---|---|---|
| 1 | `--exclude-caches`, `--exclude-if-present FILE:HEADER`, keep tagged dir and tag file | S | same tree, same snapshot listing from both tools; both `check --read-data` | **done in fork** (`rustic_core` `parity/exclude-caches`), reviewed by Gemini + Grok |
| 2 | Read restic lock files; refuse exclusive operations (prune, forget --prune, repair) while a non-stale restic lock exists; `--no-lock` to override | M | start `restic backup` holding a lock, run `rustic prune`: must refuse like `restic prune` (exit 11) | **done in fork for all exclusive operations** (`rustic_core` `parity/restic-locks`), reviewed by Codex + Gemini; open: strict lock listing, REST 404, hot/cold |
| 3 | Write restic-compatible lock files (opt-in), and `unlock`; also check for an exclusive restic lock before backup | M | `rustic backup` running → `restic prune` refuses; `restic prune` running → `rustic backup` refuses | **done in fork** (`--restic-locks`, `unlock`), reviewed by Codex + Gemini, 39 checks equal to restic ([review](reviews/parity-restic-locks-write.md)); open: `--retry-lock`, on by default (upstream decision) |
| 4 | Public low-level write API (packer, indexer, encrypted backend, global index) behind an unstable feature | M | raw-written snapshot listed, restored, checked and pruned by restic | [DESIGN-lowlevel-write-api.md](DESIGN-lowlevel-write-api.md) |
| 5 | SFTP backend on Windows (opendal sftp is Unix-only; restic calls `ssh`) | M–L | init/backup/check against an SFTP server from Windows | research: opendal upstream vs external `ssh` like restic |
| 6 | `--files-from`, `--files-from-raw`, `--files-from-verbatim` | S→M | same input list → same snapshot listing | **done in fork** (`rustic` `parity/files-from`), Go glob ported, 11 cases equal to restic; open: exit code 3 (upstream PR #1908) |
| 7 | `restore --overwrite always|if-changed|if-newer|never`, `restore --verify` | M | restore over a modified tree, compare result with restic's | **done in fork**: all four modes equal to restic ([tests/restore-overwrite.ps1](tests/restore-overwrite.ps1)) |
| 8 | `stats --mode restore-size|files-by-contents|raw-data|blobs-per-file` with restic's JSON shape | M | `--json` output equal on the same repo | |
| 9 | `cat key|masterkey|lock|pack|blob`, `find --blob/--tree/--pack` | S | byte-equal output on the same repo | **done in fork**: `cat` (pack and blob byte-equal, JSON equal; [tests/cat.ps1](tests/cat.ps1)), `find --blob/--tree/--pack/--show-pack-id/--reverse/--json` (text and JSON equal; [tests/find.ps1](tests/find.ps1)) |
| 10 | `repair packs`, `recover` | M | corrupt a pack on purpose, both tools repair to a repo that passes `check --read-data` | |
| 11 | `cache` command (list, `--cleanup`), `--cleanup-cache` | S | | |
| 12 | `ls --ncdu`, `--sort`, `--reverse`, `--human-readable`; `snapshots --compact`, `--latest N`; `forget --compact` | S | output compared | |
| 13 | `rewrite --new-host`, `--new-time`, `--snapshot-summary` | S | restic reads the rewritten snapshot identically | |
| 14 | TLS options: `--cacert`, `--tls-client-cert`, `--insecure-tls`; `--limit-upload/--limit-download` for all backends | M | REST server with own CA | |
| 15 | Windows: `--use-fs-snapshot` (VSS), `--exclude-cloud-files`, store long path for 8.3 short names | M–L | backup of a locked file; path listing equal | |
| 16 | restic-compatible CLI spellings as aliases (`--exclude`, `--host`, `--tag`, `--path`, `--target`, `key passwd`, `generate`, `migrate`, `features`, `options`) | M | scripts written for restic run unchanged | needs upstream agreement; may live in a compatibility layer |
| 17 | Format edge cases: packs > 128 MiB and custom chunker written by rustic, read by restic; legacy index | S each | round-trip | test-only first |

## Working with upstream

`rustic_core` and `rustic` are effectively maintained by one person, with a second
long-time maintainer and a steady flow of outside pull requests that do get merged. They
have no written policy on AI-assisted contributions. This fork therefore:

1. keeps every change as a small, self-contained branch cut from `upstream/main`;
2. prepares the pull request text locally, with the parity test and its result;
3. sends nothing upstream until the maintainer of this fork decides to;
4. opens a design discussion first for anything that touches rustic's design choices
   (items 2, 3, 4, 16), not a pull request.
