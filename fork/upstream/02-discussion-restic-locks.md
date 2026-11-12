# Draft design discussion for rustic-rs/rustic — not sent

## Title

Respect restic lock files when restic and rustic share a repository

## Body

rustic is lock-free by design and its two-phase prune is safe against concurrent rustic
backups. restic is not: it relies on lock files, and `restic prune` refuses to run while
another restic process holds a lock.

When both tools use the same repository, rustic does not see restic's locks. Reproduced
with restic 0.19.1 and rustic main (2026-11-09): while `restic backup` was running and
holding a lock, `rustic prune --instant-delete` ran to completion; `restic prune` in the
same situation exited with code 11. With nothing to prune no harm was done, but a
rustic prune that removes packs while restic is still uploading and indexing could leave
restic's new snapshot pointing at deleted data.

Proposal, in steps that can be reviewed separately:

1. Read `locks/` before exclusive operations (`prune`, `forget --prune`, `repair`,
   `config` changes). If a non-stale restic lock exists, stop with a clear message.
   An option such as `--ignore-restic-locks` restores today's behaviour.
2. Optionally write a restic-compatible lock file while rustic runs, so restic also
   sees rustic, behind a config switch for mixed repositories.
3. An `unlock` command for stale restic locks.

Stale detection would follow restic's rules (timestamp age, same host and dead PID).

Question for the maintainers: is this something you would accept, as default or
opt-in, given the lock-free design?
