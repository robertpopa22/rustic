# Parity map: restic 0.19.1 vs rustic (main, 2026-11-12)

Goal of this fork: everything restic does, rustic does too, on the same repository.

Compared: stock `restic 0.19.1` (Windows, amd64) against `rustic` built from
`rustic-rs/rustic@8f5c891` with `rustic_core@d658ed9` (both 2026-11-09), on Windows 11.

**How each line was checked** (column *Src*):

- **R** run locally on throw-away repositories ([tests/cross-compat.ps1](tests/cross-compat.ps1),
  result in [tests/cross-compat-result-windows.txt](tests/cross-compat-result-windows.txt));
- **H** read from both tools' `--help` output (flag-level diff, generated);
- **C** read in the source of both projects;
- **D** taken from upstream's own comparison page
  (`rustic-rs/docs`, `src/comparison-restic.md`, which compares restic 0.19.0 with
  rustic 0.11.3) and **not yet re-verified**. Upstream's page is partly out of date:
  it lists `restore --sparse` as missing, but rustic now has it.

Status: **=** same, **~** partial, **–** missing in rustic, **≠** behaves differently,
**+** fork has closed it (not yet upstream).

Coverage of this first pass: commands and flags 100 % at flag level (H), repository
round-trips for the main commands (R), backends and the long tail only from code and
docs. Estimated 70 % of the map is verified by running; the rest is marked D or C.

## 1. Same repository, both directions (R)

| Scenario | Result |
|---|---|
| restic init (v2) → rustic snapshots, check --read-data, restore (content hash equal), ls, find, dump | = |
| rustic backup into restic repo → restic check --read-data | = |
| rustic forget --prune --instant-delete → restic check --read-data, snapshots | = |
| rustic init → restic snapshots, check --read-data, restore (content hash equal) | = |
| restic backup + forget --prune on rustic repo → rustic check --read-data | = |
| restic key add → rustic opens with the new key; rustic key add → restic opens with it; key list both ways | = |
| restic init --copy-chunker-params, then rustic copy into it → restic check --read-data | = |
| repository version 1: restic init v1 → rustic backup → restic check --read-data | = |
| `--json` for snapshots, ls, find, repoinfo, key list: one valid JSON document on stdout | = (logs go to stderr) |

## 2. Locking (R, C) — most important difference

| Item | restic | rustic | St |
|---|---|---|---|
| Creates lock files in `locks/` | yes, for every operation | never (`rustic_core` has no lock code) | ≠ |
| Honours locks of other clients | yes; `prune` with a backup running exits 11 | no; `rustic prune` ran while a restic backup held a lock (R) | ≠ |
| `unlock` | yes | no command (lock-free design) | – |
| `--no-lock`, `--retry-lock` | yes | n/a | ≠ |
| Two-phase prune (safe concurrent prune) | no | yes | + rustic |

Consequence: mixing the two tools on one repository is safe for reads and for
sequential use (section 1), but **a rustic prune can run while restic writes**. restic
assumes nobody prunes while it holds a lock. Parity needs rustic to at least *read*
restic locks and refuse (or wait) before exclusive operations, and ideally write its own.

## 3. Commands

| restic command | rustic | St | Src | Notes |
|---|---|---|---|---|
| backup | backup | ~ | H, R | missing flags below |
| cache | – | – | H | rustic keeps a cache but has no command to list or clean it |
| cat | cat | ~ | C | restic: config, index, snapshot, key, masterkey, lock, pack, blob, tree; rustic: tree-blob, data-blob, index, snapshot, tree, config? — key/masterkey/lock/pack missing |
| check | check | = | H, R | restic `--with-cache` ≈ rustic `--trust-cache` (inverse default) |
| copy | copy | ≠ | H, R | rustic takes target repos (profiles) via `--target`; restic takes the *source* via `--from-*` |
| diff | diff | ~ | H | rustic lacks `--metadata`-style output parity check; has diff against local dir |
| dump | dump | = | H, R | restic `--target` = rustic `--file`; path syntax differs (`snap:path` vs `snap path`) |
| features | – | – | H | no feature flags in rustic |
| find | find | ~ | H | missing `--blob`, `--tree`, `--pack`, `--show-pack-id`, `--oldest/--newest`, `--long`, `--ignore-case`, `--reverse` |
| forget | forget | ~ | H | missing `--compact`, `--unsafe-allow-remove-all` (= `--keep-none`), `--repack-smaller-than` |
| generate | completions | ~ | H | completions yes; man pages no |
| init | init | ~ | H | `--from-repo` / `--copy-chunker-params` → rustic `copy --init`; `--repository-version` → `--set-version` |
| key add/list/passwd/remove | key add/list/password/remove (+export, create) | ~ | H, R | missing `--new-insecure-no-password`, `--user`/`--host` names differ |
| list | list | = | H | `list locks` returns nothing in rustic |
| ls | ls | ~ | H | missing `--ncdu`, `--sort`, `--reverse`, `--human-readable` |
| migrate | – (`config --set-version`) | ≠ | D | |
| mount | – on Windows; Linux only (`mount` feature) | = on Windows | R | restic has no mount on Windows either; rustic offers `webdav` |
| prune | prune | ~ | H, R | missing `--repack-smaller-than`, `--unsafe-recover-no-free-space` (≈ `--early-delete-index`) |
| recover | – | – | H | |
| repair index | repair index | = | H | `--read-all-packs` = `--read-all` |
| repair packs | – | – | H, C | |
| repair snapshots | repair snapshots | ~ | H | restic `--forget` ≈ rustic `--delete` |
| restore | restore | ~ | H | missing `--overwrite` (if-newer, never), `--verify`, `--include-xattr/--exclude-xattr`; include/exclude via `--glob` |
| rewrite | rewrite | ~ | H | missing `--new-host`, `--new-time`, `--snapshot-summary` |
| self-update | self-update (feature) | = | D | |
| snapshots | snapshots | ~ | H | missing `--compact`, `--latest N` |
| stats | repoinfo (+ TUI) | ≠ | H, R | no `--mode restore-size|files-by-contents|raw-data|blobs-per-file` |
| tag | tag | = | H | |
| unlock | – | – | H | see section 2 |
| options (`-o`) | config profile / env | ≠ | D | |

## 4. Global options (H)

restic-only: `--cacert`, `--tls-client-cert`, `--insecure-tls`, `--cleanup-cache`,
`--compression` (rustic: in-repo config), `--pack-size` (in-repo config),
`--limit-download/--limit-upload` (rustic: opendal throttle only), `--key-hint`,
`--repository-file`, `--http-user-agent`, `--stuck-request-timeout`, `--retry-lock`,
`--no-lock`, `-o/--option`, `--verbose`, `--quiet`.

Host/path/tag filters are global in rustic (`--filter-host`, `--filter-paths`,
`--filter-tags`) and per command in restic: same effect, different spelling.

## 5. Backup flags (H, R)

| restic | rustic | St |
|---|---|---|
| `--exclude-caches` | `--exclude-caches` | **+** (closed in fork, R) |
| `--exclude-if-present FILE[:HEADER]`, keeps dir and tag file | was: whole dir dropped, no header | **+** (closed in fork, R) |
| `--files-from`, `--files-from-raw`, `--files-from-verbatim` | – | – |
| `--exclude`, `--iexclude`, `--exclude-file` | `--glob '!x'`, `--iglob`, `--glob-file` | ≠ syntax |
| `--read-concurrency` | – (fixed) | – |
| `--use-fs-snapshot` (VSS on Windows) | – | – |
| `--exclude-cloud-files` (Windows) | – | – |
| `--with-atime` | `--set-atime` | ≠ |
| `--stdin`, `--stdin-from-command` | `-` as source, `--stdin-command` | ≠ syntax |
| `--group-by` | global `--group-by` | = |
| Path stored for a Windows 8.3 short path | restic stores the long name; rustic stores the path as typed (`PROGRA~1` style) | ≠ (R) |

## 6. Backends (C, D)

| Backend | restic | rustic | St |
|---|---|---|---|
| local | yes | yes | = (R) |
| sftp | yes, via `ssh` on all OSes | opendal, **not on Windows** (feature excluded in `crates/backend/Cargo.toml`) | – on Windows |
| rest | yes | yes | = (C) not run: no rest-server on this machine |
| s3, swift, b2, azure, gs | yes | via opendal | = (D) |
| rclone | via stdio | via http on localhost | ≠ (D) |
| dropbox, ftp, gdrive, onedrive, webdav, pcloud, … | no | yes | + rustic |
| `--cacert`, client TLS cert | yes | no | – |

## 7. Format

| Item | St | Src |
|---|---|---|
| Repo v1 and v2 read/write both ways | = | R |
| Compression (zstd) levels | = (rustic -7..22 in config) | D |
| Pack size: restic fixed up to 128 MiB; rustic configurable up to 4 GiB | ≠ — packs > 128 MiB written by rustic: not yet tested with restic | D |
| Custom chunker params in rustic config | ≠ — restic reads them from config, fine; untested | D |
| Legacy index format (restic 0.1) | restic deprecated it; rustic: unknown | – |

## 8. rustic has, restic does not

Config profiles, hooks, lock-free two-phase prune, cold/hot repositories with warm-up,
remote sources, `merge`, `webdav`, `repoinfo`, TUI, `diff` against local files,
`--git-ignore`, labels/descriptions/delete-protection in snapshots, extra snapshot
filters (`--filter-jq`, size, date), `latest~N`, opening a repository by master key,
Prometheus/OpenTelemetry, many opendal backends, `--keep-minutely/quarter-yearly`.

## Not verified in this pass

REST, SFTP, S3 and every remote backend (no servers started); packs > 128 MiB and
custom chunker written by rustic and read by restic; `rewrite`, `repair` and `copy`
output equality; `restore` with `--delete`; cache directory compatibility; large
repositories and performance.
