# Draft question for rustic-rs/rustic Discussions (category: General) — not sent

## Title

Policy on AI-assisted contributions? (restic-parity work)

## Body

Hi, and thanks for rustic.

We run restic-format repositories in production and would like to help close the
remaining gaps between rustic and restic, so that both tools can be used on the same
repository without surprises. We have started a parity map (commands, flags, behaviour on
a shared repository, tested with stock restic 0.19.1) and have a first small change
ready: `--exclude-caches` and `--exclude-if-present FILE:HEADER`, keeping the tagged
directory and tag file in the snapshot as restic does.

To be upfront about how we work: an AI model drafts the analysis, the code and the
tests. Each change is then reviewed independently by at least two models from other
vendors (counter-opinions), and every finding is either fixed or answered with a reason.
The change is tested on the full suite and against stock restic on a shared repository
in both directions. A person approves it and is responsible for anything we submit. The
whole process is written down here:
https://github.com/robertpopa22/rustic/blob/main/fork/HOW-WE-WORK.md

Before we open anything:

1. Do you accept AI-assisted pull requests? If so, are there conditions, such as
   disclosure in the PR, size limits or a discussion first?
2. Would a design discussion about respecting restic lock files when both tools share a
   repository be welcome? rustic's lock-free design is the reason we are asking first.

The parity map is public here if useful: https://github.com/robertpopa22/rustic/blob/main/fork/PARITY.md
