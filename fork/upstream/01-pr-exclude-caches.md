# Draft PR for rustic-rs/rustic_core — not sent

Branch: `robertpopa22/rustic_core:parity/exclude-caches`

## Title

feat(backup): add --exclude-caches and FILE:HEADER for --exclude-if-present

## Body

This brings exclusion by tag file in line with restic:

- `--exclude-caches` excludes the contents of directories with a valid `CACHEDIR.TAG`
  (Cache Directory Tagging Specification);
- `--exclude-if-present FILE:HEADER` excludes only when the tag file starts with
  `HEADER`; a tag file that cannot be read or does not match is reported as a warning
  and nothing is excluded;
- the tagged directory and the tag file stay in the snapshot; only the rest of the
  directory's contents is excluded.

**Behaviour change:** before this, rustic dropped a directory containing an
`--exclude-if-present` file entirely. restic keeps the directory and the tag file. This
PR follows restic so that snapshots made by either tool from the same tree list the same
entries. If you prefer to keep the old behaviour, it can stay the default and the
restic behaviour can be opt-in; happy to change it.

Closes rustic-rs/rustic#664 (keep the directory and the tag file). The documentation of
`exclude-if-present` in the config docs describes the old behaviour; a docs PR follows.

Empty or absolute tag names are rejected with an error, as restic does; tag presence is
checked once per directory, like restic's rejection cache.

Tests: five unit tests in `backend/ignore.rs`. Checked by hand against restic 0.19.1 on
Windows: same tree, same repository, `restic ls` of both snapshots identical, both
`restic check --read-data` and `rustic check --read-data` pass.

How this was made: drafted with AI assistance (Anthropic Claude), reviewed independently
by two models from other vendors (Google Gemini, xAI Grok); each finding was fixed or
rejected with a restic run as evidence (review log linked from the fork). A person
approved it and is responsible for it.

## Open points before sending

- Read upstream's latest stance on AI-assisted contributions (none written as of
  2026-11-12).
- Decide whether to send the behaviour change as default or opt-in.
