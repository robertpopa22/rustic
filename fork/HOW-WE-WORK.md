# How we work

This fork is run by one maintainer working with AI tools. This page says exactly what
the AI does, what a person does, and how one model's mistakes get caught by others.
It applies both to our own changes and to anything we propose upstream.

## Roles

| Step | Who |
|---|---|
| Choosing what to work on (the order in [ROADMAP.md](ROADMAP.md)) | the maintainer |
| Reading code in both projects, drafting the change and its tests | an AI model (the *author model*) |
| Building, running the full test suite on Windows, and running the parity test against stock restic | the author model, on the maintainer's machine; results are committed |
| **Counter-opinions**: independent reviews of the diff by models from *other* families | at least two reviewers, see below |
| Deciding on each review finding: fix, or reject with a reason | author model, recorded in the review file |
| Approving a commit for `main`, anything public, anything sent upstream | the maintainer, a person |

## Counter-opinions

A single model reviewing its own work tends to repeat its own mistakes. So every change
that touches behaviour gets reviewed by at least two models from **different families**
than the author (for example Google Gemini and xAI Grok when the author is Anthropic
Claude; OpenAI Codex as a third when available). Each reviewer:

- gets the diff and the full file, plus the goal stated in one paragraph;
- is told to look for differences from restic's real behaviour, edge cases,
  performance and test gaps, and to say plainly when it finds nothing;
- does not see the other reviewers' answers.

Every finding is answered in `reviews/<branch>.md`: **fixed** (with the commit),
**rejected** (with the reason and, where possible, a test showing why), or
**open**. A change with an open *blocker* or *major* finding is not proposed upstream.

Reviews only see public code from this repository and from restic. No private data is
ever sent to any model.

## What counts as proof

- Unit tests in the changed crate.
- The parity test: the same input through stock restic and through rustic, then
  `restic check --read-data` and `rustic check --read-data` on the result, in both
  directions ([tests/](tests/)).
- The full test suite before and after, with any pre-existing failure named.

## Disclosure

Every pull request we send upstream says, in its description, that it was prepared
with AI assistance, which reviewers looked at it, and that a person approved it and is
responsible for it. We follow upstream's policy on AI contributions as soon as they
publish one, and we ask before sending anything while they have none.
