# Triage of incoming issues and pull requests (AI-assisted)

This fork reads every issue and pull request it receives in full, with AI doing the
reading, the reproduction attempt and the first analysis, and a human maintainer taking
every decision that leaves the machine. The model is the one already used for the
maintainer's mRemoteNG fork; this file adapts it to a backup tool.

## Principles

1. **Data first.** rustic writes other people's backups. A wrong change can make a
   repository unreadable, or worse, look healthy while it is not. Any change that touches
   the repository format, `prune`, `forget`, `repair`, `copy`, locking or the cache is
   *format-sensitive* and is never merged on AI analysis alone.
2. **restic is the reference.** The goal of this fork is parity with restic. When rustic
   and restic disagree on the same repository, the expected behaviour is restic's unless
   [PARITY.md](PARITY.md) records a deliberate difference.
3. **The reporter is the ground truth.** We cannot reproduce every storage backend, file
   system or locale. Our green test run is evidence about our machine; the reporter's
   confirmation is the only end-to-end proof.
4. **Honesty over throughput.** An analysis says what was run and what was not. "Not
   reproduced" is a valid outcome; "fixed" is said only after a test that failed before
   the change passes after it.
5. **Upstream first.** A fix that is useful to everyone is prepared as a pull request
   for `rustic-rs/rustic` or `rustic-rs/rustic_core`. The fork carries a change alone
   only while upstream has not taken it, and [PARITY.md](PARITY.md) says so.

## Procedure for each issue or pull request

1. **Read all of it.** Title, body, every comment, linked issues and commits, attached
   logs. For a pull request: the whole diff, not only the description.
2. **Classify.** One of: `parity-gap` (restic does it, rustic does not), `bug`,
   `format-sensitive`, `feature` (beyond restic), `docs`, `question`, `duplicate`,
   `upstream` (belongs in `rustic-rs`, not in this fork).
3. **Check against upstream.** Search `rustic-rs/rustic` and `rustic-rs/rustic_core`
   issues and pull requests. If upstream already tracks it, link it and do not open a
   parallel line of work.
4. **Reproduce.** Build from source, create a throw-away repository in a temporary
   directory, run the steps. For parity questions run the same steps with stock restic on
   the same repository and compare output, exit code and resulting repository
   (`restic check --read-data` and `rustic check --read-data` must both pass).
5. **Analyse.** Root cause with file and line references in both code bases.
6. **Second opinion.** For anything format-sensitive or security-relevant, get an
   independent review from at least two other model families before a decision. Record
   disagreements; do not average them away.
7. **Pull requests from others.** Review the diff line by line, build it, run the full
   test suite on Windows and Linux, and run the parity test that matches the change. Check
   licence compatibility (Apache-2.0 / MIT) of any new dependency, and that the PR
   contains no secrets, binaries or generated noise.
8. **Write the outcome.** One of: `fixed`, `not reproduced`, `not a defect`, `upstream`,
   `needs info`. Prepare the reply locally.
9. **Stop before anything public.** Pushing, merging, closing, labelling and posting a
   reply happen only after a maintainer has read the analysis and approved it.

## What the AI must never do

- Post, comment, close, merge or push on its own.
- Open issues or pull requests on `rustic-rs` repositories.
- Put credentials, host names or data from anyone's real backups into this repository,
  its issues or its test fixtures.
- Mark a format-sensitive change safe without a round-trip test against stock restic.

## Tests that count as parity proof

A parity test creates a repository in a temporary directory and checks, for the feature
under test, that:

- restic and rustic produce the same snapshot content (`ls`, `diff`) from the same input;
- what one tool writes, the other reads, checks (`check --read-data`), restores and
  deletes (`forget --prune`) without errors.
