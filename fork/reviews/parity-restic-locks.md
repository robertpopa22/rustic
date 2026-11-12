# Review: `parity/restic-locks` (rustic_core)

Author model: Anthropic Claude. Reviewers, independent: OpenAI Codex and Google Gemini.
(Grok was busy with another review.)

| # | Reviewer | Finding | Decision |
|---|---|---|---|
| 1 | Codex | only `prune` guarded; restic locks exclusively for forget, key remove, repair, config/migrate | **fixed**: guard on prune, forget (snapshot deletion), key remove, repair index, repair snapshots, config changes; tested, all refuse while restic holds a lock |
| 2 | Codex | stale locks were ignored; restic refuses them until `restic unlock` | **fixed**: stale locks block, message suggests `restic unlock` |
| 3 | Codex | empty lock files block rustic; restic skips size 0 | **fixed** |
| 4 | Codex, Gemini | missing `locks/` treated as empty for every file type in the local backend | **fixed**: only for `locks/` |
| 5 | Codex | listing errors could hide a lock (walker drops errors) | **open**: needs a strict listing mode in the backends |
| 6 | Codex, Gemini | TOCTOU: restic can start after rustic checked; rustic writes no lock | **open by design**: closing it needs rustic to write restic-compatible locks (roadmap item 3) |
| 7 | Gemini | non-exclusive check (rustic backup while `restic prune` runs) not wired | **open**: same root cause as 6; a rustic backup during restic prune is the dangerous direction |
| 8 | Codex | REST backend turns 404 on `locks/` into an error | **open**: test against rest-server needed |
| 9 | Codex | hot/cold repositories list cold and read hot | **open** |
| 10 | Codex | same-host dead-PID rule not implemented | **kept**: more cautious than restic; documented |
| 11 | Gemini | add `Lock` to `ALL_FILE_TYPES` | **rejected** (Codex agreed): would make hot/cold repair copy lock files |

Verified with restic 0.19.1 holding a lock (Windows): prune, forget, key remove,
repair index, repair snapshots, config change all exit 1; `snapshots` and `backup` run;
with `--ignore-restic-locks` or after restic finished the operations succeed and
`restic check` reports no errors.
