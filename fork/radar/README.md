# Fork radar

What other forks of `rustic-rs/rustic` and `rustic-rs/rustic_core` carry that upstream
does not. Generated with [../tools/fork-radar.ps1](../tools/fork-radar.ps1) (raw lists:
`rustic.md`, `rustic_core.md`) and condensed with
[../tools/fork-radar-summary.ps1](../tools/fork-radar-summary.ps1) (`*-summary.md`).
Read-only; nothing is imported without review.

Run of 2026-11-12: `rustic` 156 forks (82 pushed after forking), `rustic_core` 70 forks
(48 pushed). After removing bot branches and old upstream branches that every fork copied:
121 branches with unique work in `rustic` forks, 107 in `rustic_core` forks.

## Worth a closer look

- **Most fresh branches are already open upstream PRs** (Akayashuu, AlphaJack, Huge,
  BradKollmyer, magrathean-uk, stefanwichmann…). We follow them upstream, not import them.
- **sagemathinc/rustic_core (CoCalc)**, branches `cocalc/*`, September 2026, no upstream PR
  found: sparse restore and skipping proven holes in backup, strict completeness modes for
  backup and restore, bounded metadata memory, hardlink reuse, restore fixes and
  adversarial tests. Relevant to the roadmap (restore parity, sparse files).
- **mchobbit/rustic and rustic_core**, branch `backotter` (82 commits in core, 46 in CLI):
  large private line of work, to be read.
- Old upstream branches `lock` / `lock-more` (2024, aawsome): "Add lock_repo command". This
  is rustic's own object-lock feature for storage, not restic lock files; useful context
  for the lock design discussion.
