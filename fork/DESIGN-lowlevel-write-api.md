# Design note: a public low-level write API in `rustic_core`

Status: draft, prepared in the fork; not yet discussed upstream.

## Problem

`rustic_core` exposes high-level commands (`backup`, `restore`, `prune`, ...). A program
that wants to write data into a restic-format repository *without* walking a file
system — for example a block-level backup of virtual disks that only knows which byte
ranges changed — needs the building blocks under `backup`:

- an encrypting backend (`DecryptBackend` / `DecryptWriteBackend`),
- the blob `Packer` and its statistics,
- the `Indexer` shared between packers,
- the repository's global index, to ask whether a blob already exists,
- the key and the blob hash function.

Today these are `pub(crate)`. A prototype had to patch four visibility modifiers and
add a re-export module to use them. A patch on a published crate is fragile: every
upstream release has to be re-patched, and nobody else benefits.

## Proposal

A small, documented, explicitly *unstable* module, for example
`rustic_core::repository::raw` (name open), behind a cargo feature such as
`unstable-raw-write`:

```rust
let repo = repo.open()?.to_indexed_ids()?;
let mut w = repo.raw_writer()?;            // owns packers + indexer for data and tree blobs
let id = w.add_data_blob(&bytes)?;         // dedups against the global index, packs, encrypts
let id = w.add_tree(&tree)?;               // tree blob
let snap = w.finalize_with_snapshot(snap)?; // flush packs, write index, write snapshot
```

Properties:

- No `pub` on internal types; the module wraps them, so internals can keep changing.
- Same dedup, compression, pack-size and index rules as `backup`, because it reuses the
  same `Packer`/`Indexer` code paths.
- Errors are `RusticResult`; nothing panics on I/O errors.
- Behind a feature flag and marked unstable, so upstream does not take on a
  compatibility promise it does not want.

## Tests

- Unit: write N blobs, finalize, reopen, read every blob back, compare.
- Parity: write a snapshot through the raw writer; stock `restic` must list, restore
  and `check --read-data` it; `restic prune` must keep it intact.

## Size

Medium: about 200–400 lines plus tests, mostly wrapping existing code. The open question
for upstream is naming and whether they accept the feature at all; see
[ROADMAP.md](ROADMAP.md).
