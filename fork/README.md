# rustic — Geseidl fork

## Purpose

restic is the reference implementation of its repository format and the tool most
people already run. rustic reads and writes the same format, is available as a library
(`rustic_core`) and moves faster. This fork works toward one goal: **everything restic
does, rustic does too**, so that either tool can be used on any repository, in either
direction, without surprises.

## Relation to upstream

- `robertpopa22/rustic` is a GitHub fork of `rustic-rs/rustic`;
  `robertpopa22/rustic_core` is a GitHub fork of `rustic-rs/rustic_core`. Both keep the
  fork link so they can sync with upstream and send pull requests.
- `main` = upstream `main` + this `fork/` folder + changes not yet accepted upstream.
  Each change also lives on its own branch cut from upstream (`parity/<topic>`), ready to
  become a pull request.
- The licence is unchanged: Apache-2.0 OR MIT, as upstream. Contributions here are
  offered under the same terms.
- Nothing has been sent upstream yet. Pull request drafts live in
  [upstream/](upstream/).

## Documents

| File | What it holds |
|---|---|
| [PARITY.md](PARITY.md) | command-by-command, flag-by-flag map of restic 0.19.1 against rustic, with how each line was verified |
| [ROADMAP.md](ROADMAP.md) | the ordered list of gaps to close, with size and the test that proves parity |
| [TRIAGE.md](TRIAGE.md) | how incoming issues and pull requests are read and analysed (AI-assisted, human-approved) |
| [DESIGN-lowlevel-write-api.md](DESIGN-lowlevel-write-api.md) | proposal for a public low-level write API in `rustic_core` |
| [tests/cross-compat.ps1](tests/cross-compat.ps1) | round-trip test: restic writes / rustic reads and the reverse |
| [upstream/](upstream/) | drafts of pull requests and design discussions, not yet sent |

## Building against the forked library

```bash
cargo build --release \
  --config 'patch."https://github.com/rustic-rs/rustic_core".rustic_core.path="../rustic_core/crates/core"' \
  --config 'patch."https://github.com/rustic-rs/rustic_core".rustic_backend.path="../rustic_core/crates/backend"'
```

with `rustic_core` cloned next to this repository.

## Continuous integration

GitHub Actions are disabled on this fork. Builds and tests run on the maintainer's
own machines, and the results that matter are committed next to the tests.

## Maintained by

<a href="https://geseidl.ro/servicii-it"><img src="https://geseidl.ro/assets/icons/logo-green.png" alt="Geseidl Consulting Group" height="40"></a>

Geseidl uses restic-format repositories to back up virtual machines and wants a second,
library-grade implementation it can build on and rely on: this fork brings rustic to
full parity with restic and offers every change back to the rustic project.
Maintained by [Geseidl IT Solutions](https://geseidl.ro/servicii-it),
part of [Geseidl Consulting Group](https://geseidl.ro).

---

<p align="center">
  <a href="https://make-it-count.ro">
    <img src="https://geseidl.ro/assets/icons/makeitcount-amprenta-gold.png" alt="makeitcount" height="60">
  </a>
  <br>
  <sub><em>We believe great tools should be shared. Every contribution counts.</em></sub>
  <br>
  <sub><a href="https://make-it-count.ro">make-it-count.ro</a></sub>
</p>
