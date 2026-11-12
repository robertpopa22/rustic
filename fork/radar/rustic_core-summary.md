# Fork radar summary: rustic_core.md

## Work found only in one fork (107 branches), freshest first

### orangecms/rustic_core : backup-docs (ahead 1, behind 0)
- 3527267 2026-09-29 core/commands/backup: WIP: fix up documentation on archive()/backup_paths

### Akayashuu/rustic_core : fix/rabin-small-min-size (ahead 2, behind 1)
- 1bdaabe 2026-10-31 fix(chunker): keep chunks within bounds for a small min size
- 6514d17 2026-11-09 Merge branch 'main' into fix/rabin-small-min-size

### MetehanYurtseven/rustic_core : perf/zero-chunks (ahead 2, behind 2)
- 1e51d50 2026-10-24 perf: don't hash all-zero chunks
- a1b0748 2026-11-08 Move determination of zero-bytes-chunk-size to the chunker module

### Akayashuu/rustic_core : fix/restore-special-nofollow (ahead 1, behind 3)
- def05d4 2026-11-06 fix(restore): don't set permissions through a symlink that stands in for another node

### Akayashuu/rustic_core : fix/snapshots-skip-unreadable (ahead 2, behind 3)
- 0778248 2026-11-06 fix(repository): skip unreadable snapshot files when listing all snapshots
- c816039 2026-11-06 fix(check): report unreadable snapshot files in check_with_trees too

### Akayashuu/rustic_core : fix/ci-main-lints (ahead 3, behind 3)
- e7c0e8c 2026-11-06 style: satisfy clippy and rustfmt from Rust 1.99
- 9af0afd 2026-11-06 ci: update install-action so cargo-careful builds on current nightly
- 5c053a2 2026-11-06 test: give each fixture repository its own cache dir

### Akayashuu/rustic_core : fix/cache-unique-tmp (ahead 1, behind 3)
- 79ad486 2026-11-06 fix(cache): give every write of a cached file its own temporary file

### sagemathinc/rustic_core : cocalc/m1-upstream-sync (ahead 9, behind 5)
- 33fdd63 2026-09-06 core: preserve sparse restores and skip proven backup holes
- 5b6146b 2026-09-06 core: add strict backup and restore completeness modes
- f45990d 2026-09-06 core/backup: bound metadata admission before content processing
- 8d0a0b1 2026-09-06 core: stream size exclusions through bounded metadata inventory
- 916dcb3 2026-09-06 core: propagate local metadata failures during strict backups
- e5e4a16 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
- 05a9e14 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
- f715add 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
- 9da81a3 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners

### sagemathinc/rustic_core : cocalc/b1-reuse-hardlinks (ahead 14, behind 5)
- 33fdd63 2026-09-06 core: preserve sparse restores and skip proven backup holes
- 5b6146b 2026-09-06 core: add strict backup and restore completeness modes
- f45990d 2026-09-06 core/backup: bound metadata admission before content processing
- 8d0a0b1 2026-09-06 core: stream size exclusions through bounded metadata inventory
- 916dcb3 2026-09-06 core: propagate local metadata failures during strict backups
- e5e4a16 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
- 05a9e14 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
- f715add 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
- 9da81a3 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
- d3c4e06 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
- 9241091 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
- 0d924ef 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache

### sagemathinc/rustic_core : cocalc/tests-b1-adversaries (ahead 18, behind 5)
- 33fdd63 2026-09-06 core: preserve sparse restores and skip proven backup holes
- 5b6146b 2026-09-06 core: add strict backup and restore completeness modes
- f45990d 2026-09-06 core/backup: bound metadata admission before content processing
- 8d0a0b1 2026-09-06 core: stream size exclusions through bounded metadata inventory
- 916dcb3 2026-09-06 core: propagate local metadata failures during strict backups
- e5e4a16 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
- 05a9e14 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
- f715add 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
- 9da81a3 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
- d3c4e06 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
- 9241091 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
- 0d924ef 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache

### sagemathinc/rustic_core : cocalc/fix-restore-type-mismatch-dir (ahead 13, behind 5)
- 33fdd63 2026-09-06 core: preserve sparse restores and skip proven backup holes
- 5b6146b 2026-09-06 core: add strict backup and restore completeness modes
- f45990d 2026-09-06 core/backup: bound metadata admission before content processing
- 8d0a0b1 2026-09-06 core: stream size exclusions through bounded metadata inventory
- 916dcb3 2026-09-06 core: propagate local metadata failures during strict backups
- e5e4a16 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
- 05a9e14 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
- f715add 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
- 9da81a3 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
- d3c4e06 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
- 9241091 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
- 0d924ef 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache

### sagemathinc/rustic_core : cocalc/restore-error-uncreatable-dir (ahead 14, behind 5)
- 33fdd63 2026-09-06 core: preserve sparse restores and skip proven backup holes
- 5b6146b 2026-09-06 core: add strict backup and restore completeness modes
- f45990d 2026-09-06 core/backup: bound metadata admission before content processing
- 8d0a0b1 2026-09-06 core: stream size exclusions through bounded metadata inventory
- 916dcb3 2026-09-06 core: propagate local metadata failures during strict backups
- e5e4a16 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
- 05a9e14 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
- f715add 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
- 9da81a3 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
- d3c4e06 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
- 9241091 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
- 0d924ef 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache

### sagemathinc/rustic_core : cocalc/tests-b1-followups (ahead 21, behind 5)
- 33fdd63 2026-09-06 core: preserve sparse restores and skip proven backup holes
- 5b6146b 2026-09-06 core: add strict backup and restore completeness modes
- f45990d 2026-09-06 core/backup: bound metadata admission before content processing
- 8d0a0b1 2026-09-06 core: stream size exclusions through bounded metadata inventory
- 916dcb3 2026-09-06 core: propagate local metadata failures during strict backups
- e5e4a16 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
- 05a9e14 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
- f715add 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
- 9da81a3 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
- d3c4e06 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
- 9241091 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
- 0d924ef 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache

### philipmw/rustic_core : catch-b2-error (ahead 1, behind 5)
- 5e6f135 2026-11-01 fix(backend): propagate opendal errors when checking for config

### stefanwichmann/rustic_core : feat/http-connect-timeout (ahead 1, behind 5)
- dda7767 2026-11-04 feat: add a connect-timeout option for http-based backends

### db3l/rustic_core : concurrency (ahead 3, behind 5)
- 0874755 2026-09-11 Core changes for concurrency management
- 553496d 2026-09-11 Concurrency support for backend, archiver and blob operations
- 9371785 2026-09-11 Concurrency support for commands

### Akayashuu/rustic_core : fix/rest-config-status (ahead 1, behind 7)
- 0b21b36 2026-10-31 fix(backend): report a failed config lookup on the REST backend

### AlphaJack/rustic_core : fix/init-with-config-hot-cold (ahead 2, behind 7)
- 3669ed1 2026-10-15 fix: set is_hot from the repository in init_with_config
- da9bf35 2026-10-31 Merge branch 'main' into fix/init-with-config-hot-cold

### Akayashuu/rustic_core : fix/rabin-prefill-full-window (ahead 1, behind 7)
- 07d1790 2026-10-31 fix(chunker): prefill the whole rolling hash window

### Akayashuu/rustic_core : fix/windows-forward-slash-drive (ahead 1, behind 7)
- 8411e8d 2026-10-31 fix(backend): accept forward slashes after a Windows drive letter

### Akayashuu/rustic_core : fix/keep-minutely-same-hour (ahead 2, behind 9)
- 5548f75 2026-10-31 fix(forget): count minutes within the same hour for keep-minutely
- 5f86868 2026-10-31 test: keep one test per behaviour

### Akayashuu/rustic_core : fix/ignore-inode-negation (ahead 2, behind 9)
- 51ffb8f 2026-10-31 fix(backup): compare inodes unless ignore_inode is set
- adfd1b8 2026-10-31 test: keep one test per behaviour

### Akayashuu/rustic_core : fix/restore-over-existing-hardlink (ahead 2, behind 9)
- aaadbec 2026-10-31 fix(restore): replace an entry that sits where a hardlink belongs
- 5438825 2026-10-31 test: keep one test per behaviour

### stefanwichmann/rustic_core : read-timeout (ahead 2, behind 11)
- 62e5c0b 2026-10-14 feat: add a read-timeout option for http-based backends
- 51f626a 2026-10-31 Merge branch 'main' into read-timeout

### Huge/rustic_core : fix/prune-dir-missing-subtree (ahead 2, behind 12)
- b8b2955 2026-10-06 fix(prune): safely handle directory nodes without subtree in find_used_blobs
- 7deb800 2026-10-31 import Node

### Akayashuu/rustic_core : fix/windows-sanitize-error-test (ahead 2, behind 13)
- b83e41c 2026-10-30 test: compare the Debug form of the path in the sanitize error
- c443953 2026-10-30 Merge branch 'main' into fix/windows-sanitize-error-test

### Huge/rustic_core : fix/blob-location-data-length-underflow (ahead 2, behind 22)
- 0f025e6 2026-10-06 fix: don't underflow in BlobLocation::data_length
- f3a3470 2026-10-30 Merge branch 'main' into fix/blob-location-data-length-underflow

### Huge/rustic_core : fix/repair-snapshots-missing-content (ahead 2, behind 22)
- ee05200 2026-10-06 fix(repair): safely handle file nodes with missing content in repair snapshots
- 511a831 2026-10-30 Merge branch 'main' into fix/repair-snapshots-missing-content

### Huge/rustic_core : fix/blob-locations-coalesce-overflow (ahead 2, behind 22)
- 7192c6e 2026-10-06 fix: don't overflow in BlobLocations::can_coalesce
- bbeddba 2026-10-30 Merge branch 'main' into fix/blob-locations-coalesce-overflow

### Huge/rustic_core : fix/blob-copier-bounds-check (ahead 2, behind 22)
- c1490b4 2026-10-06 fix(packer): validate blob offsets and bounds in BlobCopier
- 6d07a77 2026-10-30 Merge branch 'main' into fix/blob-copier-bounds-check

### Huge/rustic_core : fix/tree-dir-missing-subtree (ahead 3, behind 22)
- 76c1085 2026-10-06 fix(tree): safely handle directory nodes without subtree in NodeStreamer and merge_nodes
- 62f7d6c 2026-10-30 Merge branch 'main' into fix/tree-dir-missing-subtree
- b538bec 2026-10-30 fix test

### Huge/rustic_core : fix/local-destination-path-traversal (ahead 2, behind 22)
- 50c6fee 2026-10-06 fix(restore): prevent path traversal in LocalDestination
- 6404d54 2026-10-30 Merge branch 'main' into fix/local-destination-path-traversal

### Akayashuu/rustic_core : fix/join-tree-loaders (ahead 3, behind 22)
- 3de10c2 2026-10-18 fix: join tree loader threads before releasing the index
- 85872b0 2026-10-18 test: keep a single streamer drop test
- 98f7e28 2026-10-30 Merge branch 'main' into fix/join-tree-loaders

### Huge/rustic_core : fix/keyfile-scrypt-limits (ahead 2, behind 22)
- a14e636 2026-10-07 fix: reject key files with invalid or excessive scrypt parameters
- ba6338b 2026-10-30 Merge branch 'main' into fix/keyfile-scrypt-limits

### BradKollmyer/rustic_core : perf/prune-io (ahead 7, behind 23)
- 9210d41 2026-09-04 fix: request B2's maximum list page size
- d468d44 2026-09-04 fix: fetch 4 MiB unused pack gaps in one read
- a75f3c8 2026-09-04 fix: range-GET prune repack chunks in parallel
- b99e719 2026-09-04 fix: prefetch index files with extra IO workers
- ec07d6a 2026-09-04 fix: scale tree loaders during prune used-blob walk
- 43365be 2026-09-04 fix: store prune used blob ids in a HashMap
- edb089d 2026-09-07 fix: collect index entries in bounded chunks

### lmtlssss/rustic_core : fix-report-xattr-read-errors-20261025 (ahead 2, behind 23)
- 0172da8 2026-10-25 fix(backup): report unreadable xattrs instead of silently discarding them
- 80552e7 2026-10-25 style: apply rustfmt to xattr error propagation tests

### AlphaJack/rustic_core : fix/restore-no-panic (ahead 1, behind 23)
- 8d66388 2026-10-15 fix(restore): return errors from restoring file contents instead of panicking

### AlphaJack/rustic_core : feat/chunker-polynomial (ahead 1, behind 23)
- aa578fd 2026-10-16 feat: add set_chunker_polynomial to ConfigOptions

### vdavid/rustic_core : zstd-0.14 (ahead 1, behind 23)
- beba467 2026-10-28 fix(deps): update zstd to 0.14.3 to clear the zstd and zstd-safe advisories

### AzmainMahatab/rustic_core : keep-given-subtrees (ahead 1, behind 23)
- c56165d 2026-10-18 feat: keep a directory given with its subtree when archiving

### Huge/rustic_core : fix/localsource-empty-backup-paths (ahead 1, behind 23)
- d136d3e 2026-10-27 fix: validate non-empty backup paths in LocalSource::new

### AlphaJack/rustic_core : fix/as-path-file-source (ahead 1, behind 23)
- d268d6b 2026-10-15 fix(backup): save a single file source under the name given by as-path

### BradKollmyer/rustic_core : fix/cache-drop-absent-packs (ahead 1, behind 23)
- d9f27c2 2026-09-28 fix(cache): drop cached packs that are no longer in the index

### magrathean-uk/rustic_core : fix/1157-empty-source-dir (ahead 1, behind 23)
- 84b0cc9 2026-09-27 Preserve empty source directories in backups

### magrathean-uk/rustic_core : fix/1905-multi-source-as-path (ahead 1, behind 23)
- 3134d7b 2026-09-27 Reject as-path with multiple backup sources

### BradKollmyer/rustic_core : fix/backup-emfile-source-scan (ahead 1, behind 23)
- fe1da29 2026-09-20 fix(backup): retry EMFILE on source scan instead of skipping directories

### BradKollmyer/rustic_core : perf/prune-walk (ahead 18, behind 23)
- 9210d41 2026-09-04 fix: request B2's maximum list page size
- d468d44 2026-09-04 fix: fetch 4 MiB unused pack gaps in one read
- a75f3c8 2026-09-04 fix: range-GET prune repack chunks in parallel
- b99e719 2026-09-04 fix: prefetch index files with extra IO workers
- ec07d6a 2026-09-04 fix: scale tree loaders during prune used-blob walk
- 43365be 2026-09-04 fix: store prune used blob ids in a HashMap
- edb089d 2026-09-07 fix: collect index entries in bounded chunks
- 0464477 2026-09-04 fix: keep cached pack files open for tree blob reads
- 4674695 2026-09-04 fix: stream-decode trees during prune used-blob walk
- 721dc03 2026-09-04 fix: walk unique trees depth-first
- c65570c 2026-09-04 fix: list pack files during prune index and tree walk
- 5e7996f 2026-09-04 fix: start prune pack listing after the index is loaded

### hintjen/rustic-fork : sync/upstream-647d00f6 (ahead 2, behind 23)
- 2c77cde 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates
- 63d49a9 2026-10-10 chore: merge upstream main (647d00f6)

### lmtlssss/rustic_core : fix-restore-worker-io-error-20261025 (ahead 4, behind 23)
- 74f5db0 2026-10-25 ci(test): temporary xattr error propagation regression qualification
- f288f93 2026-10-25 fix(restore): propagate worker I/O errors instead of panicking
- 5dc7cc9 2026-10-25 test(restore): return filesystem write failures from scoped workers
- 2c2d318 2026-10-25 style: format restored worker error return

### magrathean-uk/rustic_core : fix/564-1914-restore-errors (ahead 1, behind 23)
- 17a8004 2026-09-27 Propagate restore I/O failures without panicking

### orangecms/rustic_core : walk-parallel (ahead 1, behind 23)
- 222388b 2026-09-30 core/backend/ignore: walk directories in parallel

### BradKollmyer/rustic_core : perf/prune-zstd-buffer (ahead 28, behind 23)
- 9210d41 2026-09-04 fix: request B2's maximum list page size
- d468d44 2026-09-04 fix: fetch 4 MiB unused pack gaps in one read
- a75f3c8 2026-09-04 fix: range-GET prune repack chunks in parallel
- b99e719 2026-09-04 fix: prefetch index files with extra IO workers
- ec07d6a 2026-09-04 fix: scale tree loaders during prune used-blob walk
- 43365be 2026-09-04 fix: store prune used blob ids in a HashMap
- edb089d 2026-09-07 fix: collect index entries in bounded chunks
- 0464477 2026-09-04 fix: keep cached pack files open for tree blob reads
- 4674695 2026-09-04 fix: stream-decode trees during prune used-blob walk
- 721dc03 2026-09-04 fix: walk unique trees depth-first
- c65570c 2026-09-04 fix: list pack files during prune index and tree walk
- 5e7996f 2026-09-04 fix: start prune pack listing after the index is loaded

### hintjen/rustic-fork : sync/upstream-b78f6489 (ahead 2, behind 24)
- 2c77cde 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates
- c7896a2 2026-09-06 chore: merge upstream main (b78f6489)

### sagemathinc/rustic_core : cocalc/sparse-backups (ahead 5, behind 25)
- 33fdd63 2026-09-06 core: preserve sparse restores and skip proven backup holes
- 5b6146b 2026-09-06 core: add strict backup and restore completeness modes
- f45990d 2026-09-06 core/backup: bound metadata admission before content processing
- 8d0a0b1 2026-09-06 core: stream size exclusions through bounded metadata inventory
- 916dcb3 2026-09-06 core: propagate local metadata failures during strict backups

### hintjen/rustic-fork : sync/upstream-e97a7dcd (ahead 2, behind 25)
- 2c77cde 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates
- 46c1abc 2026-09-05 chore: merge upstream main (e97a7dcd)

### BradKollmyer/rustic_core : fix/backup-unreadable-source-errors (ahead 4, behind 25)
- 04046a2 2026-09-02 fix: count unreadable source files during backup
- 8d14214 2026-09-04 fix: address review of unreadable source error counting
- eeec3fc 2026-09-05 cosmetic change
- 0a29c10 2026-09-05 Merge branch 'main' into fix/backup-unreadable-source-errors

### hintjen/rustic-fork : sync/upstream-6fa7b56e (ahead 2, behind 26)
- 2c77cde 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates
- 7dfe778 2026-09-04 chore: merge upstream main (6fa7b56e)

### BradKollmyer/rustic_core : feat/aws-glacier (ahead 4, behind 26)
- b91fd28 2026-09-01 feat: warm data packs before dump, cat data-blob, and copy
- 83fb9a7 2026-09-01 feat: add warmup_status, poll wait, and require_warm
- e77aaf9 2026-09-01 feat: native S3 Glacier class split and RestoreObject sidecar
- bf93d97 2026-09-01 test: cover Glacier RestoreObject, poll wait, dump/copy, and prune

### BradKollmyer/rustic_core : fix/opendal-retry-log-noise (ahead 2, behind 26)
- eeb3193 2026-09-04 fix: log OpenDAL retries as a single line
- b49d4aa 2026-09-04 chore: drop CHANGELOG edit; release-plz generates it

### hintjen/rustic-fork : sync/upstream-b7ab1ee0 (ahead 2, behind 27)
- 2c77cde 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates
- 52413c6 2026-08-31 chore: merge upstream main (b7ab1ee0)

### hintjen/rustic-fork : sync/upstream-9d9e4783 (ahead 2, behind 28)
- 2c77cde 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates
- d03feab 2026-08-30 chore: merge upstream main (9d9e4783)

### mchobbit/rustic_core : bko-batch3 (ahead 24, behind 35)
- 661b47a 2026-10-30 backotter: version 0.13.0+backotter.1
- fcac5fa 2026-10-30 backotter: file flags, ACLs and other metadata, as BackOtter's restic keeps them
- ca2c82d 2026-10-30 backotter: BackOtter's restic keeps illumos extended attributes too
- 7821230 2026-10-30 backotter: batch 1 - atime, sparse marks, project IDs, casefold (unreviewed)
- 06f4d9c 2026-10-30 backotter: vendor walkdir 2.5.0, listing directories without changing their atimes
- 6ff672d 2026-10-30 backotter: batch 1 fixes - sparse rule, one open, atimes, casefold, warnings once
- 337df0a 2026-10-31 backotter: NetBSD and DragonFly file flags, NetBSD ACLs, BSD symlink modes
- 02b3f90 2026-10-31 backotter: ZFS DOS flags on Linux (linux.zfs_dos_flags)
- cb3a66b 2026-10-31 backotter: birth times, and minimal nvlists for illumos system attributes
- 2c52ef2 2026-10-31 backotter: illumos SID owners, extended attributes' metadata, ZFS projects
- 9065113 2026-10-31 backotter: a hard link replaces what has its name already
- d5ef444 2026-10-31 backotter: stock tar tests store atimes as mtimes, as on strictatime they must

### mchobbit/rustic_core : backotter (ahead 82, behind 35)
- 661b47a 2026-10-30 backotter: version 0.13.0+backotter.1
- fcac5fa 2026-10-30 backotter: file flags, ACLs and other metadata, as BackOtter's restic keeps them
- ca2c82d 2026-10-30 backotter: BackOtter's restic keeps illumos extended attributes too
- 7821230 2026-10-30 backotter: batch 1 - atime, sparse marks, project IDs, casefold (unreviewed)
- 06f4d9c 2026-10-30 backotter: vendor walkdir 2.5.0, listing directories without changing their atimes
- 6ff672d 2026-10-30 backotter: batch 1 fixes - sparse rule, one open, atimes, casefold, warnings once
- 337df0a 2026-10-31 backotter: NetBSD and DragonFly file flags, NetBSD ACLs, BSD symlink modes
- 02b3f90 2026-10-31 backotter: ZFS DOS flags on Linux (linux.zfs_dos_flags)
- cb3a66b 2026-10-31 backotter: birth times, and minimal nvlists for illumos system attributes
- 2c52ef2 2026-10-31 backotter: illumos SID owners, extended attributes' metadata, ZFS projects
- 9065113 2026-10-31 backotter: a hard link replaces what has its name already
- d5ef444 2026-10-31 backotter: stock tar tests store atimes as mtimes, as on strictatime they must

### Lauri-Nomme/rustic_core : fix/multi-source-backup (ahead 1, behind 35)
- 31c46c4 2026-08-30 fix: preserve files of all sources in multi-source backup

### mchobbit/rustic_core : haiku-attrs (ahead 10, behind 35)
- 661b47a 2026-10-30 backotter: version 0.13.0+backotter.1
- fcac5fa 2026-10-30 backotter: file flags, ACLs and other metadata, as BackOtter's restic keeps them
- ca2c82d 2026-10-30 backotter: BackOtter's restic keeps illumos extended attributes too
- 7821230 2026-10-30 backotter: batch 1 - atime, sparse marks, project IDs, casefold (unreviewed)
- 06f4d9c 2026-10-30 backotter: vendor walkdir 2.5.0, listing directories without changing their atimes
- 6ff672d 2026-10-30 backotter: batch 1 fixes - sparse rule, one open, atimes, casefold, warnings once
- 817230c 2026-10-30 backotter: rustic_core builds for Haiku
- 5d8b5c7 2026-10-30 backotter: Haiku's file attributes, with their types
- e4a2c74 2026-10-30 backotter: Haiku attributes, fixes from review
- 2cec51a 2026-10-30 backotter: Haiku takes batch 1's per-OS functions

### golemcloud/rustic_core : gol-599-restore-prune-errors (ahead 22, behind 35)
- 1578f52 2026-09-15 test: add fault injection backend and panic=abort test crate
- c5cf478 2026-09-15 fix: return the first error of the restore content phase
- ba2313e 2026-09-15 test: check that restore returns content phase errors
- 13019de 2026-09-15 fix: stop tree workers after receiver closes (#546)
- 037b5ae 2026-09-15 test: check that prune returns tree read errors without a panic
- 5623d8e 2026-09-15 test: check a sparse restore of a file that ends in zeros
- f2c4763 2026-09-15 docs: simplify the FirstError and restore_contents doc comments
- e6ee7e5 2026-09-15 test: use boxed forms and plain doc comments in fault test support
- d667a29 2026-09-15 docs: describe how restore_contents stops after the first error
- 24317dc 2026-09-15 test: clarify the fault test docs and the set_length check
- 20c0ad5 2026-09-15 docs: name the thread pool error in the restore_contents docs
- 1a0525e 2026-09-15 test: say backend calls in the fault injection docs

### golemcloud/rustic_core : gol-601-strict-backup-metadata-threads (ahead 29, behind 35)
- 1578f52 2026-09-15 test: add fault injection backend and panic=abort test crate
- c5cf478 2026-09-15 fix: return the first error of the restore content phase
- ba2313e 2026-09-15 test: check that restore returns content phase errors
- 13019de 2026-09-15 fix: stop tree workers after receiver closes (#546)
- 037b5ae 2026-09-15 test: check that prune returns tree read errors without a panic
- 5623d8e 2026-09-15 test: check a sparse restore of a file that ends in zeros
- f2c4763 2026-09-15 docs: simplify the FirstError and restore_contents doc comments
- e6ee7e5 2026-09-15 test: use boxed forms and plain doc comments in fault test support
- d667a29 2026-09-15 docs: describe how restore_contents stops after the first error
- 24317dc 2026-09-15 test: clarify the fault test docs and the set_length check
- 20c0ad5 2026-09-15 docs: name the thread pool error in the restore_contents docs
- 1a0525e 2026-09-15 test: say backend calls in the fault injection docs

### MetehanYurtseven/rustic_core : v0.13.0-zero-chunks (ahead 1, behind 35)
- 9b3b4d3 2026-10-24 perf: don't hash all-zero chunks

### hacker/x-rustic_core : fix/opendal-source-glob-exclusion (ahead 4, behind 41)
- f164f7f 2026-07-26 fix(ish): implement excludes for opendal source to some extent
- f08dfa8 2026-08-07 fix: improve glob exclusion by appending `/` to opendal's paths
- 5caef36 2026-08-08 Merge branch 'main' into fix/opendal-source-glob-exclusion
- 60f90af 2026-08-08 fix format & clippy lints

### Xuanwo/rustic_core : xuanwo/bump-opendal-0.58.1 (ahead 2, behind 42)
- 17dd337 2026-08-04 chore(deps): bump opendal to 0.58.1
- dc0a0a7 2026-08-07 fix clippy lints

### 543069760/rustic_core : feat/opendal-progress-layer (ahead 4, behind 46)
- 490acaa 2026-08-06 feat(backend): add opendal ProgressLayer with conditional chunked writer
- c81a9c1 2026-08-10 feat(backup): add cooperative cancellation via Arc<AtomicBool>
- 4533fd8 2026-08-21 fix(opendal): fall back to one-shot write for backends without multi-write support
- 4565347 2026-08-21 fix(example): pass cancel flag to repo.backup

### hintjen/rustic-fork : fix/ios-dev-t-cfg (ahead 1, behind 46)
- 6473fab 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates

### 543069760/rustic_core : feat/fdsource-streaming (ahead 5, behind 46)
- 490acaa 2026-08-06 feat(backend): add opendal ProgressLayer with conditional chunked writer
- c81a9c1 2026-08-10 feat(backup): add cooperative cancellation via Arc<AtomicBool>
- 4533fd8 2026-08-21 fix(opendal): fall back to one-shot write for backends without multi-write support
- ed70771 2026-10-08 feat: add FdSource ReadSource for streaming backup from fd
- f26bca5 2026-10-09 perf(fdsource): 内置 1MB BufReader 消除 fd 流式备份的 syscall 瓶颈

### 543069760/rustic_core : restore-sparse (ahead 1, behind 46)
- ea68b34 2026-06-17 feat: Add sparse file support for restore

### XayahSuSuSu/rustic_core : android-build (ahead 1, behind 50)
- dbb5c31 2026-05-28 fix: Build for 32-bit Android

### mro68/rustic_core_fork : feat/opendal-pcloud-20260518 (ahead 1, behind 51)
- 4835ee7 2026-05-18 feat(backend): enable pcloud for OpenDAL

### ChecksumDev/rustic_core : feat/parallel-dump (ahead 2, behind 58)
- 7ff0b5c 2026-05-03 perf: parallelize blob fetch in dump command
- 4409311 2026-05-06 perf: hard-code parallelism for dump blob fetch

### davidcforbes/rustic_core : windows-metadata (ahead 3, behind 61)
- bfc942a 2026-05-19 feat(windows): generic_attributes carrier on Metadata
- 725bc9e 2026-05-19 feat(windows): capture security descriptor into generic_attributes
- 10f9ec6 2026-05-19 feat(windows): apply security descriptor from generic_attributes on restore

### davidcforbes/rustic_core : windows-metadata-2b (ahead 9, behind 61)
- bfc942a 2026-05-19 feat(windows): generic_attributes carrier on Metadata
- 725bc9e 2026-05-19 feat(windows): capture security descriptor into generic_attributes
- 10f9ec6 2026-05-19 feat(windows): apply security descriptor from generic_attributes on restore
- 4dc8b67 2026-05-20 feat(node): GenericAttributeValue enum for restic-compat wire shape (kopia-0dr.53)
- a202fb6 2026-05-20 refactor(node): swap generic_attributes value type to GenericAttributeValue (kopia-0dr.53)
- b8e912e 2026-05-20 feat(node): capture windows.file_attributes + windows.creation_time (kopia-0dr.53)
- 46c4bc7 2026-05-20 feat(local_destination): apply windows.file_attributes + creation_time (kopia-0dr.53)
- c86f967 2026-05-20 feat(node): win_ads — FindFirstStreamW NTFS ADS enumeration (kopia-0dr.53)
- e95e936 2026-05-20 feat(ignore): walker hook to yield NTFS ADS as sibling File entries (kopia-0dr.53)

### davidcforbes/rustic_core : windows-metadata-2c (ahead 18, behind 61)
- bfc942a 2026-05-19 feat(windows): generic_attributes carrier on Metadata
- 725bc9e 2026-05-19 feat(windows): capture security descriptor into generic_attributes
- 10f9ec6 2026-05-19 feat(windows): apply security descriptor from generic_attributes on restore
- 4dc8b67 2026-05-20 feat(node): GenericAttributeValue enum for restic-compat wire shape (kopia-0dr.53)
- a202fb6 2026-05-20 refactor(node): swap generic_attributes value type to GenericAttributeValue (kopia-0dr.53)
- b8e912e 2026-05-20 feat(node): capture windows.file_attributes + windows.creation_time (kopia-0dr.53)
- 46c4bc7 2026-05-20 feat(local_destination): apply windows.file_attributes + creation_time (kopia-0dr.53)
- c86f967 2026-05-20 feat(node): win_ads — FindFirstStreamW NTFS ADS enumeration (kopia-0dr.53)
- e95e936 2026-05-20 feat(ignore): walker hook to yield NTFS ADS as sibling File entries (kopia-0dr.53)
- 43c9b6b 2026-05-20 feat(node): SparseExtents variant on GenericAttributeValue (kopia-0dr.54)
- 4e9c156 2026-05-20 feat(node): win_sparse — NTFS sparse-file capture + apply (kopia-0dr.54)
- d781920 2026-05-20 feat(mapper): capture windows.sparse_extents on sparse source files (kopia-0dr.54)

### davidcforbes/rustic_core : phase-e-backup-with-source (ahead 19, behind 61)
- bfc942a 2026-05-19 feat(windows): generic_attributes carrier on Metadata
- 725bc9e 2026-05-19 feat(windows): capture security descriptor into generic_attributes
- 10f9ec6 2026-05-19 feat(windows): apply security descriptor from generic_attributes on restore
- 4dc8b67 2026-05-20 feat(node): GenericAttributeValue enum for restic-compat wire shape (kopia-0dr.53)
- a202fb6 2026-05-20 refactor(node): swap generic_attributes value type to GenericAttributeValue (kopia-0dr.53)
- b8e912e 2026-05-20 feat(node): capture windows.file_attributes + windows.creation_time (kopia-0dr.53)
- 46c4bc7 2026-05-20 feat(local_destination): apply windows.file_attributes + creation_time (kopia-0dr.53)
- c86f967 2026-05-20 feat(node): win_ads — FindFirstStreamW NTFS ADS enumeration (kopia-0dr.53)
- e95e936 2026-05-20 feat(ignore): walker hook to yield NTFS ADS as sibling File entries (kopia-0dr.53)
- 43c9b6b 2026-05-20 feat(node): SparseExtents variant on GenericAttributeValue (kopia-0dr.54)
- 4e9c156 2026-05-20 feat(node): win_sparse — NTFS sparse-file capture + apply (kopia-0dr.54)
- d781920 2026-05-20 feat(mapper): capture windows.sparse_extents on sparse source files (kopia-0dr.54)

### davidcforbes/rustic_core : phase-a-walk-parallel (ahead 20, behind 61)
- bfc942a 2026-05-19 feat(windows): generic_attributes carrier on Metadata
- 725bc9e 2026-05-19 feat(windows): capture security descriptor into generic_attributes
- 10f9ec6 2026-05-19 feat(windows): apply security descriptor from generic_attributes on restore
- 4dc8b67 2026-05-20 feat(node): GenericAttributeValue enum for restic-compat wire shape (kopia-0dr.53)
- a202fb6 2026-05-20 refactor(node): swap generic_attributes value type to GenericAttributeValue (kopia-0dr.53)
- b8e912e 2026-05-20 feat(node): capture windows.file_attributes + windows.creation_time (kopia-0dr.53)
- 46c4bc7 2026-05-20 feat(local_destination): apply windows.file_attributes + creation_time (kopia-0dr.53)
- c86f967 2026-05-20 feat(node): win_ads — FindFirstStreamW NTFS ADS enumeration (kopia-0dr.53)
- e95e936 2026-05-20 feat(ignore): walker hook to yield NTFS ADS as sibling File entries (kopia-0dr.53)
- 43c9b6b 2026-05-20 feat(node): SparseExtents variant on GenericAttributeValue (kopia-0dr.54)
- 4e9c156 2026-05-20 feat(node): win_sparse — NTFS sparse-file capture + apply (kopia-0dr.54)
- d781920 2026-05-20 feat(mapper): capture windows.sparse_extents on sparse source files (kopia-0dr.54)

### davidcforbes/rustic_core : pl3-timestamp-round-trip (ahead 21, behind 61)
- bfc942a 2026-05-19 feat(windows): generic_attributes carrier on Metadata
- 725bc9e 2026-05-19 feat(windows): capture security descriptor into generic_attributes
- 10f9ec6 2026-05-19 feat(windows): apply security descriptor from generic_attributes on restore
- 4dc8b67 2026-05-20 feat(node): GenericAttributeValue enum for restic-compat wire shape (kopia-0dr.53)
- a202fb6 2026-05-20 refactor(node): swap generic_attributes value type to GenericAttributeValue (kopia-0dr.53)
- b8e912e 2026-05-20 feat(node): capture windows.file_attributes + windows.creation_time (kopia-0dr.53)
- 46c4bc7 2026-05-20 feat(local_destination): apply windows.file_attributes + creation_time (kopia-0dr.53)
- c86f967 2026-05-20 feat(node): win_ads — FindFirstStreamW NTFS ADS enumeration (kopia-0dr.53)
- e95e936 2026-05-20 feat(ignore): walker hook to yield NTFS ADS as sibling File entries (kopia-0dr.53)
- 43c9b6b 2026-05-20 feat(node): SparseExtents variant on GenericAttributeValue (kopia-0dr.54)
- 4e9c156 2026-05-20 feat(node): win_sparse — NTFS sparse-file capture + apply (kopia-0dr.54)
- d781920 2026-05-20 feat(mapper): capture windows.sparse_extents on sparse source files (kopia-0dr.54)

### davidcforbes/rustic_core : kopia-gw7a-sd-apply-fallback (ahead 22, behind 61)
- bfc942a 2026-05-19 feat(windows): generic_attributes carrier on Metadata
- 725bc9e 2026-05-19 feat(windows): capture security descriptor into generic_attributes
- 10f9ec6 2026-05-19 feat(windows): apply security descriptor from generic_attributes on restore
- 4dc8b67 2026-05-20 feat(node): GenericAttributeValue enum for restic-compat wire shape (kopia-0dr.53)
- a202fb6 2026-05-20 refactor(node): swap generic_attributes value type to GenericAttributeValue (kopia-0dr.53)
- b8e912e 2026-05-20 feat(node): capture windows.file_attributes + windows.creation_time (kopia-0dr.53)
- 46c4bc7 2026-05-20 feat(local_destination): apply windows.file_attributes + creation_time (kopia-0dr.53)
- c86f967 2026-05-20 feat(node): win_ads — FindFirstStreamW NTFS ADS enumeration (kopia-0dr.53)
- e95e936 2026-05-20 feat(ignore): walker hook to yield NTFS ADS as sibling File entries (kopia-0dr.53)
- 43c9b6b 2026-05-20 feat(node): SparseExtents variant on GenericAttributeValue (kopia-0dr.54)
- 4e9c156 2026-05-20 feat(node): win_sparse — NTFS sparse-file capture + apply (kopia-0dr.54)
- d781920 2026-05-20 feat(mapper): capture windows.sparse_extents on sparse source files (kopia-0dr.54)

### decaychain/rustic_core : uncloud/backup-with-source (ahead 2, behind 61)
- ec3a389 2026-05-01 Add Repository::backup_with_source
- a52ac51 2026-05-01 Re-export Node, NodeType, Metadata, ExtendedAttribute

### davidcforbes/rustic_core : windows-metadata-2d (ahead 13, behind 61)
- bfc942a 2026-05-19 feat(windows): generic_attributes carrier on Metadata
- 725bc9e 2026-05-19 feat(windows): capture security descriptor into generic_attributes
- 10f9ec6 2026-05-19 feat(windows): apply security descriptor from generic_attributes on restore
- 4dc8b67 2026-05-20 feat(node): GenericAttributeValue enum for restic-compat wire shape (kopia-0dr.53)
- a202fb6 2026-05-20 refactor(node): swap generic_attributes value type to GenericAttributeValue (kopia-0dr.53)
- b8e912e 2026-05-20 feat(node): capture windows.file_attributes + windows.creation_time (kopia-0dr.53)
- 46c4bc7 2026-05-20 feat(local_destination): apply windows.file_attributes + creation_time (kopia-0dr.53)
- c86f967 2026-05-20 feat(node): win_ads — FindFirstStreamW NTFS ADS enumeration (kopia-0dr.53)
- e95e936 2026-05-20 feat(ignore): walker hook to yield NTFS ADS as sibling File entries (kopia-0dr.53)
- 43c9b6b 2026-05-20 feat(node): SparseExtents variant on GenericAttributeValue (kopia-0dr.54)
- 4e9c156 2026-05-20 feat(node): win_sparse — NTFS sparse-file capture + apply (kopia-0dr.54)
- d781920 2026-05-20 feat(mapper): capture windows.sparse_extents on sparse source files (kopia-0dr.54)

### hacker/x-rustic_core : fix/git-exclude-ignore (ahead 2, behind 66)
- 547e249 2026-03-28 fix: make `ignore`'s `.git_exclude()` mirror `.git_ignore()`
- 933d52c 2026-03-28 Merge branch 'main' into fix/git-exclude-ignore

### hacker/x-rustic_core : feat/exclude-if-xattr (ahead 1, behind 67)
- 8b71df0 2026-03-21 feat: add exclude-if-xattr option

### tilpner/rustic_core : node-name-cow (ahead 2, behind 70)
- 07d0099 2026-03-05 perf!: use Cow Node names
- 3dc1724 2026-03-05 perf: use borrowed path components when possible

### yonasBSD/rustic_core : yonasBSD (ahead 1, behind 100)
- 6363087 2026-01-08 build(deps): Update deps.

### yonasBSD/rustic_core : fix/panic-snapshots (ahead 3, behind 100)
- 6363087 2026-01-08 build(deps): Update deps.
- f0652f2 2026-01-08 fix: Use u64 device parameter on FreeBSD. Fixes #439
- 60f86b8 2026-01-08 fix: errors

### M1cha/rustic_core : rest-tls (ahead 3, behind 119)
- 1b389e1 2025-10-31 backend: rest: build client only once
- 5df927f 2025-10-31 backend: rest: add support for cacert and tls-client-cert
- dabe132 2025-10-31 Merge branch 'main' into rest-tls

### kapitainsky/rustic_core : patch-1 (ahead 1, behind 126)
- c462cf4 2025-08-21 fix: Make example for time format even more explicit

### kapitainsky/rustic_core : time-hint (ahead 2, behind 127)
- ca8cf51 2025-08-21 fix: Add example for time format
- 9dbc521 2025-08-21 Merge branch 'main' into time-hint

### kapitainsky/rustic_core : chunker-fixed-size (ahead 5, behind 128)
- d5c1d19 2025-08-11 prepare for more chunking methods
- ba6d044 2025-08-11 add chunker options to config
- 509663c 2025-08-11 use chunker config for Rabin chunker
- 3895464 2025-08-11 implement FixedSize chunking
- b5c483c 2025-08-11 add has_same_chunker()

### rdelaage/rustic_core : feat/cmd_input_kv_env (ahead 2, behind 130)
- 8d3b9e3 2025-08-02 feat: Add env argument to the run function of command input
- b526c85 2025-08-06 Merge branch 'main' into feat/cmd_input_kv_env

### kapitainsky/rustic_core : repair-hotcold (ahead 2, behind 142)
- 6878626 2024-09-04 WIP: feat: Add methods for repairing hot/cold repositories
- 1114e13 2025-04-26 adapt init and docu

### jullanggit/rustic_core : keep_minutely (ahead 4, behind 159)
- 9551aae 2024-11-28 added minutely timeline
- 527de19 2024-11-29 fix description for equal_minute()
- 3135f82 2024-11-29 Merge branch 'main' into keep_minutely
- 62e415e 2024-11-29 fix: allow clippy::too_many_lines for forget::matches()

### gilbsgilbs/rustic_core : fix-hot-repo-overwrite (ahead 2, behind 194)
- 7be5fc8 2024-11-14 fix: prevent overwriting hot repository on init
- 4da2c4a 2024-11-17 Merge branch 'main' into fix-hot-repo-overwrite

### nardoor/rustic_core : feature/autocompletion_hints (ahead 1, behind 283)
- 2b9409a 2024-08-31 feat(autocompletion): use clap::ValueHint for better autocompl

### nardoor/rustic_core : experiment/async_repositories (ahead 1, behind 287)
- 46a8f9b 2024-08-31 [EXPERIMENT] begin adding "async" versions of trait/impls

### nardoor/rustic_core : commands (ahead 2, behind 297)
- 508ba2a 2024-08-11 parse commands given by arg or env using shell_words
- 84f70d6 2024-08-11 fix: clap type inference with whole type qualification

### nardoor/rustic_core : fix/extended_atribute_light_failure (ahead 3, behind 303)
- b2e329b 2024-07-28 fix: backup file even if failed listing extended attributes
- 4fac21c 2024-08-05 fix: cfg conditional compilation to fix windows compilation
- 4df1ec4 2024-08-05 log: warn when ignoring extended attributes error

### kapitainsky/rustic_core : check-error (ahead 7, behind 305)
- 3baf513 2024-05-06 check: return error if check fails
- 2336888 2024-05-07 don't use glob imports
- 8563305 2024-05-14 use Box
- 7a28eeb 2024-05-28 use own enum for error severity
- 524642a 2024-05-28 fix clippy lint
- 5c0ceae 2024-05-28 Merge branch 'main' into check-error
- 5b98b3b 2024-06-17 Merge branch 'main' into check-error

### Firflei/rustic_core : public-repo-type (ahead 2, behind 306)
- a4a503d 2024-06-08 fix: Export `FullIndex` and `IndexedStatus` so the Repository type can be fully specified
- fc987ca 2024-06-14 test: Check ability to create wrapper types around repository

### jirutka/rustic_core : native-tls (ahead 3, behind 413)
- e64f1c4 2023-12-30 feat: Add tls-native, tls-rustls features to allow building w/o Rustls
- 0a3007b 2023-12-30 ci: check powerset with tls-native too
- eabff55 2024-01-05 feat: fail build if both tls-native and tls-rustls are enabled

### ProspectPyxis/rustic_core : ignore-file (ahead 6, behind 442)
- c7cf8d6 2023-11-29 feat: add --ignore-file command line flag
- 83f140f 2023-11-29 Merge branch 'main' into ignore-file
- 0249870 2023-12-11 fix: rename command line flag as requested
- 4a570d6 2023-12-11 fix: messed up find and replace, oops
- 8724850 2023-12-11 Merge branch 'main' into ignore-file
- 1b29be6 2023-12-11 Merge branch 'main' into ignore-file

## Old upstream branches copied into many forks (36 groups)

- `feat/remove-unwrap-expect` in 14 forks (ahead 58, behind 326): 31b1b9f 2024-03-17 test: implement more tests and rename tests for consistency
- `fusefs` in 14 forks (ahead 1, behind 306): ad7b125 2024-02-07 feat: add FuseFs
- `cache-warnings` in 14 forks (ahead 1, behind 319): 773edad 2024-04-27 fix: Improve warnings in case of cache errors
- `index-search` in 14 forks (ahead 2, behind 142): 51ff8e4 2025-04-20 add benchmark
- `feature/outsource_config` in 14 forks (ahead 1, behind 379): 4396390 2024-02-04 outsource config I
- `backend-features` in 14 forks (ahead 10, behind 131): 23ee8bd 2025-07-18 backend: Use features for opendal services
- `feat/tracing-logging` in 14 forks (ahead 6, behind 200): 236ea85 2024-10-05 feat: replace log with tracing
- `feat/summary-check` in 14 forks (ahead 24, behind 170): 3be2def 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
- `fix/command_input` in 14 forks (ahead 4, behind 223): 15e47aa 2024-10-03 fix(commands): make CommandInput work with file redirects
- `feature/async_incompatible` in 14 forks (ahead 4, behind 194): d10914b 2024-11-17 fix: typo
- `lock-more` in 14 forks (ahead 2, behind 223): 14488d4 2024-10-05 feat: Add lock_repo command
- `feat/error_handling` in 14 forks (ahead 6, behind 222): 8e227da 2024-10-06 feat(errors): add a RusticIssueCollector
- `lock` in 14 forks (ahead 2, behind 139): 1a526bd 2024-10-05 feat: Add lock_repo command
- `update-cache` in 14 forks (ahead 1, behind 144): 0950ed6 2025-03-05 update Swatinem/rust-cache
- `feat/summary` in 14 forks (ahead 20, behind 145): 3be2def 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
- `examples-no-crate` in 14 forks (ahead 4, behind 132): 68af55e 2025-07-22 move examples in rustic_core crate
- `separate-be` in 14 forks (ahead 21, behind 131): 2e76e89 2025-05-31 refactor: separate backend operations
- `pack-padding` in 14 forks (ahead 29, behind 132): 2e76e89 2025-05-31 refactor: separate backend operations
- `opendal` in 13 forks (ahead 1, behind 122): b757175 2025-09-12 update opendal
- `typed_path` in 13 forks (ahead 23, behind 121): 3706a32 2024-12-29 use typed_path
- `http-transport` in 8 forks (ahead 1, behind 27): ad256a2 2026-08-31 chore!: Prefix all http transport options with http-
- `cocalc/b2-detect-moves` in 7 forks (ahead 44, behind 5): 33fdd63 2026-09-06 core: preserve sparse restores and skip proven backup holes
- `dev` in 3 forks (ahead 95, behind 23): 9210d41 2026-09-04 fix: request B2's maximum list page size
- `gol-650-xattr-security-namespace` in 3 forks (ahead 31, behind 35): 1578f52 2026-09-15 test: add fault injection backend and panic=abort test crate
- `fix/ios-dev-t` in 2 forks (ahead 1, behind 34): 2c77cde 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates
- `perf/prune-json` in 2 forks (ahead 27, behind 23): 9210d41 2026-09-04 fix: request B2's maximum list page size
- `main` in 1 forks (ahead 1, behind 67): b217f6c 2026-03-26 restore: preserve hardlinks on restore
- `main` in 1 forks (ahead 3, behind 153): 8be7995 2024-12-03 feat(warmup): Add warmup wait command
- `main` in 1 forks (ahead 108, behind 46): 81f29e3 2026-06-09 changes
- `main` in 1 forks (ahead 1, behind 212): 5ed600c 2024-10-11 core: export RusticErrorKind and RepositoryErrorKind enums
- `main` in 1 forks (ahead 2, behind 426): d68dc80 2023-12-30 feat: Add tls-native, tls-rustls features to allow building w/o Rustls
- `typed_path` in 1 forks (ahead 22, behind 132): 9d26ab2 2024-12-29 use typed_path
- `main` in 1 forks (ahead 3, behind 5): 4bae111 2026-03-29 fix: rebase-based sync workflow
- `main` in 1 forks (ahead 2, behind 23): 74f5db0 2026-10-25 ci(test): temporary xattr error propagation regression qualification
- `feature/async_incompatible` in 1 forks (ahead 4, behind 184): eb2e1ed 2024-11-17 feat(backend): add is_async_compatible method to ReadBackend and Repository
- `main` in 1 forks (ahead 1, behind 23): fb36670 2026-10-23 Update compatible dependencies and retire Dependabot
