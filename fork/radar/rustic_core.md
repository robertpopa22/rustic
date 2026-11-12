# Fork radar: rustic-rs/rustic_core

Forks: 70. Generated 2026-11-12 20:09.

Forks pushed after creation: 48.

## robertpopa22/rustic_core : backend-features  (ahead 10, behind 131, stars 0)

  - `23ee8bd` 2025-07-18 backend: Use features for opendal services
  - `e1c592a` 2025-07-20 update deps
  - `bec33e4` 2025-07-20 remove ftp feature
  - `9681088` 2025-07-20 fix url dep
  - `57d07b9` 2025-07-22 use feature "ci" in pipelines
  - `851993d` 2025-07-22 fix workflows
  - `930aa54` 2025-07-22 add missing licence
  - `40196f4` 2025-07-22 fix deny.toml
  - `6dfcad6` 2025-07-26 use ci features in ci-heavy.yml
  - `f7f48ec` 2025-07-26 Merge branch 'main' into backend-features

## robertpopa22/rustic_core : cache-warnings  (ahead 1, behind 319, stars 0)

  - `773edad` 2024-04-27 fix: Improve warnings in case of cache errors

## robertpopa22/rustic_core : examples-no-crate  (ahead 4, behind 132, stars 0)

  - `68af55e` 2025-07-22 move examples in rustic_core crate
  - `0648ab3` 2025-07-22 fmt and clippy for examples
  - `5cd6ffd` 2025-07-22 clippy for examples
  - `85e78e2` 2025-07-22 clippy for examples

## robertpopa22/rustic_core : feat/error_handling  (ahead 6, behind 222, stars 0)

  - `8e227da` 2024-10-06 feat(errors): add a RusticIssueCollector
  - `0b74f3c` 2024-10-06 add new issue types
  - `ff5ba3c` 2024-10-06 add RusticIssueResult
  - `8d610bd` 2024-10-06 replace RusticIssueResult struct with type alias
  - `d2dfd46` 2024-10-06 reduce visibility to crate public
  - `b74d2bf` 2024-10-06 reduce visibility of methods to crate public

## robertpopa22/rustic_core : feat/remove-unwrap-expect  (ahead 58, behind 326, stars 0)

  - `31b1b9f` 2024-03-17 test: implement more tests and rename tests for consistency
  - `0ef7c22` 2024-03-17 rename trait for checking errors in rest backend
  - `76f2bed` 2024-03-17 implement transpose on ParentResult and some error handling fixes
  - `39089b1` 2024-03-17 fix doc test and export for overwrite zero duration
  - `5ba3c02` 2024-03-17 rework Id/HexId
  - `ad9203b` 2024-03-17 use parking lot
  - `bce58de` 2024-03-17 more errors for error handling
  - `ccca56d` 2024-03-17 rename filename to file_name (and dir_name) to make it consistent over the code base, also handle cli changes with alias
  - `f24105e` 2024-03-17 rename new_cache to from_backend to make source/intent clearer
  - `0a62645` 2024-03-17 handle fallible location() method
  - `c205d45` 2024-03-17 fix non-self-describing variable names that make it hard to read the code
  - `1ae7a82` 2024-03-17 add more documentation about errors etc
  - `7e0f0ca` 2024-03-17 rename new_node to from_type_and_metadata to make the intent more clear and keep good style
  - `0128764` 2024-03-17 impl Display for Cache
  - `896a14a` 2024-03-17 remove default impl from nodetype as it can be derived
  - `5910c3b` 2024-03-17 impl Debug for Packer
  - `3add91c` 2024-03-17 factor out calculate_pack_size to make it easier testable
  - `2f5d6ea` 2024-03-17 handle TreeArchiver::apply errors and refactor to make it safe against overflows
  - `bf1419f` 2024-03-17 make link_target more consistent over the code base as well
  - `8d2f432` 2024-03-17 use expect to unwrap runtime
  - `1713a01` 2024-03-17 store joinhandle in rclone backend struct and join in Drop impl
  - `a75b4ae` 2024-03-17 warn the user if we shadow their already said rclone user and pass
  - `27a708a` 2024-03-17 cleanup panic docs
  - `35c8fef` 2024-03-17 allow expect for trait method impl
  - `3d9ebb9` 2024-03-17 we allow expect here, because it should always give some and otherwise we would need to create a backoff::Error<reqwest::Error> which is super annoying
  - `d0b0255` 2024-03-17 handle errors in Cache::list_with_size
  - `0439d61` 2024-03-17 bubble up options in TreeIterator
  - `034634b` 2024-03-17 add/remove docs, imports, and derives. derives e.g. serialize for insta test impl
  - `b70e8c0` 2024-03-17 handle option in iter
  - `63a6744` 2024-03-17 Don't panic on file not being able to be deleted.
  - ... 28 more

## robertpopa22/rustic_core : feat/summary  (ahead 20, behind 145, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `08a66fb` 2024-11-25 feat: update retrieve_from_arc_mutex method to use Self type
  - `f30bb6e` 2024-11-25 feat: add assertions to tests for contains_error method in Summary
  - `68b40c9` 2025-01-12 Merge branch 'main' into feat/summary

## robertpopa22/rustic_core : feat/summary-check  (ahead 24, behind 170, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `4316068` 2024-11-25 feat: update check_repository and check_cache_files to return Summary and improve concurrency handling
  - `2f5c7bf` 2024-11-25 feat: enhance error handling in check_cache_files to log errors in Summary with IssueScope
  - `fe64fdd` 2024-11-25 feat: enhance summary logging in check_repository and check_hot_files for better error reporting
  - `525e382` 2024-11-25 feat: refactor summary handling in merge and archiver
  - `36b2e9a` 2024-11-25 feat: add clippy lint allowance for check_repository and update test to capture summary
  - `ce08470` 2024-11-25 feat: simplify summary initialization by removing Mutex and using into_arc_mutex
  - `a2aee81` 2024-11-25 feat: streamline summary retrieval by replacing Mutex unwrapping with retrieve_from_arc_mutex

## robertpopa22/rustic_core : feat/tracing-logging  (ahead 6, behind 200, stars 0)

  - `236ea85` 2024-10-05 feat: replace log with tracing
  - `c9e8292` 2024-10-05 style: cargo fmt
  - `ca56f2d` 2024-10-28 Merge branch 'main' into feat/tracing-logging
  - `62aa898` 2024-10-28 add log feature as default so log and tracing can be used
  - `e95b61b` 2024-10-29 Instrument on:
  - `350eed0` 2024-10-29 add tracing and log feature without feature in core and backend

## robertpopa22/rustic_core : feature/async_incompatible  (ahead 4, behind 194, stars 0)

  - `d10914b` 2024-11-17 fix: typo
  - `51aed6e` 2024-11-17 feat(backend)!: add is_async_compatible method to ReadBackend and Repository
  - `1554c67` 2024-11-17 feat: impl is_async_incompatible for all backends
  - `b6a3851` 2024-11-17 fix: apply clippy lint

## robertpopa22/rustic_core : feature/outsource_config  (ahead 1, behind 379, stars 0)

  - `4396390` 2024-02-04 outsource config I

## robertpopa22/rustic_core : fix/command_input  (ahead 4, behind 223, stars 0)

  - `15e47aa` 2024-10-03 fix(commands): make CommandInput work with file redirects
  - `adcb1ee` 2024-10-04 join on iter, not with shell-split
  - `8e3b412` 2024-10-04 use winsplit, more cases on win, failing
  - `cff8aa7` 2024-10-04 more test cases

## robertpopa22/rustic_core : fixed-size  (ahead 9, behind 3, stars 0)

  - `3f6855d` 2026-11-05 Add more prune tests
  - `e3a1a0d` 2026-10-31 prune: add KeepRecover
  - `6d3842c` 2026-11-01 prune: refactor to deduplicate packs by timestamp
  - `ea88aaf` 2026-11-01 prune: corrections
  - `9f0fbf7` 2026-11-02 cargo fmt
  - `34fb2a1` 2026-11-03 remove deprecated functions
  - `36d23ef` 2026-11-04 cleanups
  - `e86e6a6` 2026-11-05 mark unreachable code as unreachable
  - `8bcaa05` 2026-11-08 breaking!: rename keep-delete to keep-marked

## robertpopa22/rustic_core : fusefs  (ahead 1, behind 306, stars 0)

  - `ad7b125` 2024-02-07 feat: add FuseFs

## robertpopa22/rustic_core : index-search  (ahead 2, behind 142, stars 0)

  - `51ff8e4` 2025-04-20 add benchmark
  - `cc615b5` 2025-04-24 use interpolation_search for index

## robertpopa22/rustic_core : lock  (ahead 2, behind 139, stars 0)

  - `1a526bd` 2024-10-05 feat: Add lock_repo command
  - `5c229c5` 2024-10-06 Proposed changes from review

## robertpopa22/rustic_core : lock-more  (ahead 2, behind 223, stars 0)

  - `14488d4` 2024-10-05 feat: Add lock_repo command
  - `96b8476` 2024-10-05 feat: Add more locking commands

## robertpopa22/rustic_core : main  (ahead 1, behind 0, stars 0)

  - `c11c4f7` 2026-11-12 feat(backup): add --exclude-caches and FILE:HEADER for --exclude-if-present

## robertpopa22/rustic_core : opendal  (ahead 1, behind 122, stars 0)

  - `b757175` 2025-09-12 update opendal

## robertpopa22/rustic_core : pack-padding  (ahead 29, behind 132, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `839a49c` 2025-06-12 WIP: Use padding for packfiles
  - `8f6ae7e` 2025-06-30 pad by filling up to next 64kiB; correct statistics
  - `b76b12f` 2025-07-02 correct test
  - `d2bdcd4` 2025-07-02 only check for padding blobs in prune if padding option is selected
  - `6a0736a` 2025-07-02 add test without padding
  - `ec01585` 2025-07-02 use padding only for 1 test
  - `e08c823` 2025-07-02 prevent 0-size padding; update comments
  - `7a63042` 2025-07-02 adapt windows tests
  - `7738b70` 2025-07-02 correct padding size computation

## robertpopa22/rustic_core : parity/exclude-caches  (ahead 1, behind 0, stars 0)

  - `c11c4f7` 2026-11-12 feat(backup): add --exclude-caches and FILE:HEADER for --exclude-if-present

## robertpopa22/rustic_core : release-plz-2024-09-10T13-13-47Z  (ahead 1, behind 263, stars 0)

  - `6e7b150` 2024-09-23 chore: release

## robertpopa22/rustic_core : release-plz-2024-10-02T18-41-54Z  (ahead 1, behind 225, stars 0)

  - `4369057` 2024-10-03 chore: release

## robertpopa22/rustic_core : release-plz-2024-11-27T10-30-54Z  (ahead 1, behind 165, stars 0)

  - `61f4d8e` 2024-11-27 chore(rustic_backend): release v0.5.2

## robertpopa22/rustic_core : release-plz-2024-12-11T00-11-58Z  (ahead 1, behind 133, stars 0)

  - `f45b347` 2025-06-29 chore: release

## robertpopa22/rustic_core : release-plz-2026-08-21T19-55-16Z  (ahead 1, behind 0, stars 0)

  - `4e14a9a` 2026-11-09 chore: release

## robertpopa22/rustic_core : renovate/all-actions  (ahead 2, behind 143, stars 0)

  - `18480c9` 2024-12-30 chore(deps): update actions
  - `1b29692` 2025-04-19 Merge branch 'main' into renovate/all-actions

## robertpopa22/rustic_core : separate-be  (ahead 21, behind 131, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `9555d5b` 2025-08-02 Merge branch 'main' into separate-be

## robertpopa22/rustic_core : typed_path  (ahead 23, behind 121, stars 0)

  - `3706a32` 2024-12-29 use typed_path
  - `af7037f` 2025-01-11 fix windows build
  - `aff6924` 2025-01-11 more windows fixes
  - `a1f2a33` 2025-01-11 more windows fixes
  - `b8516d2` 2025-01-11 more windows fixes
  - `c71e783` 2025-01-11 more windows fixes
  - `377d52f` 2025-01-12 add util::GlobMatcherExt
  - `d3bb945` 2025-01-12 handle as_path correctly
  - `06b086a` 2025-01-13 fix unix tests
  - `d614f11` 2025-01-13 correctly convert windows into unix path
  - `0803495` 2025-01-13 update windwos snapshots
  - `d127fce` 2025-01-13 update snapshots
  - `04f2e0b` 2025-01-13 remove platform dependency in find snapshots
  - `f4e27f2` 2025-01-13 add util description
  - `3e421ae` 2025-01-13 docu for mod util
  - `219f56c` 2025-01-14 add tests
  - `9401a4e` 2025-01-14 more tests
  - `4655275` 2025-01-19 more util funcs
  - `b6abc4e` 2025-05-23 adaptions to use with rustic
  - `0982644` 2025-05-23 fix windows build
  - `f7bc8a5` 2025-07-07 apply review hints
  - `4a34307` 2025-07-09 make helper funcs public
  - `5db575d` 2025-10-23 adapt check errors

## robertpopa22/rustic_core : update-cache  (ahead 1, behind 144, stars 0)

  - `0950ed6` 2025-03-05 update Swatinem/rust-cache

## mchobbit/rustic_core : backotter  (ahead 82, behind 35, stars 0)

  - `661b47a` 2026-10-30 backotter: version 0.13.0+backotter.1
  - `fcac5fa` 2026-10-30 backotter: file flags, ACLs and other metadata, as BackOtter's restic keeps them
  - `ca2c82d` 2026-10-30 backotter: BackOtter's restic keeps illumos extended attributes too
  - `7821230` 2026-10-30 backotter: batch 1 - atime, sparse marks, project IDs, casefold (unreviewed)
  - `06f4d9c` 2026-10-30 backotter: vendor walkdir 2.5.0, listing directories without changing their atimes
  - `6ff672d` 2026-10-30 backotter: batch 1 fixes - sparse rule, one open, atimes, casefold, warnings once
  - `337df0a` 2026-10-31 backotter: NetBSD and DragonFly file flags, NetBSD ACLs, BSD symlink modes
  - `02b3f90` 2026-10-31 backotter: ZFS DOS flags on Linux (linux.zfs_dos_flags)
  - `cb3a66b` 2026-10-31 backotter: birth times, and minimal nvlists for illumos system attributes
  - `2c52ef2` 2026-10-31 backotter: illumos SID owners, extended attributes' metadata, ZFS projects
  - `9065113` 2026-10-31 backotter: a hard link replaces what has its name already
  - `d5ef444` 2026-10-31 backotter: stock tar tests store atimes as mtimes, as on strictatime they must
  - `87f308e` 2026-10-31 backotter: round 3 in progress - FreeBSD ZFS archive flag, DragonFly ns times, one osattrs function set
  - `c2c4d14` 2026-10-31 backotter: round 3 in progress - BSD flag notes and docs
  - `06cd6ac` 2026-10-31 backotter: round 3 finished - FreeBSD flag rule tests; round 3 checked
  - `e863825` 2026-10-31 backotter: a restore replaces what is in the way; special nodes as restic stores them
  - `ef1dab5` 2026-10-31 backotter: extended attributes that can't be set don't stop the rest; Z for UTC node times
  - `eb6371b` 2026-10-31 backotter: xattrs sorted everywhere; flags set from what a file has; each unmapped SID and unsupported xattr named; bcachefs project IDs
  - `1a2a4a4` 2026-10-31 backotter: sockets skipped at backup and restore, as restic skips them
  - `364f4d5` 2026-10-31 backotter: keep the node of a file illumos quarantined (av_quarantined), without its contents: illumos.unread_size, a warning, restored empty
  - `8f01e49` 2026-10-31 backotter: a file whose contents weren't backed up is restored into a new, empty file, as in BackOtter's restic
  - `8955dee` 2026-10-31 backotter: files with holes read by their data extents; restored with holes per file system block
  - `b7649a7` 2026-10-31 backotter: a sparse restore writes only the non-zero part of each block a blob reaches into; a hole ends at the size now; ENXIO a hole only where SEEK_HOLE agrees; 64-bit lseek
  - `9f88530` 2026-11-01 backotter: the chunker hashes all 64 bytes before a chunk's minimum size, as restic's does, and cuts where restic does
  - `e8cbde9` 2026-11-01 backotter: a file's size is the bytes the backup read, as restic's is, not what lstat gave
  - `ad1635e` 2026-11-01 backotter: notes: on JFS and nilfs2 SEEK_HOLE finds no hole, so files with holes there aren't marked sparse, in both tools alike
  - `5eba94f` 2026-11-01 backotter: Haiku, from branch haiku-attrs
  - `dd432d2` 2026-11-01 backotter: on JFS and nilfs2 the blocks decide which files have holes
  - `ccc68a2` 2026-11-01 backotter: directory atimes from before listing, restores over immutable files, FreeBSD ZFS projects
  - `ff155a7` 2026-11-01 backotter: bcachefs directory options and project IDs before entries; bcachefs.project not kept
  - ... 52 more

## mchobbit/rustic_core : bko-batch3  (ahead 24, behind 35, stars 0)

  - `661b47a` 2026-10-30 backotter: version 0.13.0+backotter.1
  - `fcac5fa` 2026-10-30 backotter: file flags, ACLs and other metadata, as BackOtter's restic keeps them
  - `ca2c82d` 2026-10-30 backotter: BackOtter's restic keeps illumos extended attributes too
  - `7821230` 2026-10-30 backotter: batch 1 - atime, sparse marks, project IDs, casefold (unreviewed)
  - `06f4d9c` 2026-10-30 backotter: vendor walkdir 2.5.0, listing directories without changing their atimes
  - `6ff672d` 2026-10-30 backotter: batch 1 fixes - sparse rule, one open, atimes, casefold, warnings once
  - `337df0a` 2026-10-31 backotter: NetBSD and DragonFly file flags, NetBSD ACLs, BSD symlink modes
  - `02b3f90` 2026-10-31 backotter: ZFS DOS flags on Linux (linux.zfs_dos_flags)
  - `cb3a66b` 2026-10-31 backotter: birth times, and minimal nvlists for illumos system attributes
  - `2c52ef2` 2026-10-31 backotter: illumos SID owners, extended attributes' metadata, ZFS projects
  - `9065113` 2026-10-31 backotter: a hard link replaces what has its name already
  - `d5ef444` 2026-10-31 backotter: stock tar tests store atimes as mtimes, as on strictatime they must
  - `87f308e` 2026-10-31 backotter: round 3 in progress - FreeBSD ZFS archive flag, DragonFly ns times, one osattrs function set
  - `c2c4d14` 2026-10-31 backotter: round 3 in progress - BSD flag notes and docs
  - `06cd6ac` 2026-10-31 backotter: round 3 finished - FreeBSD flag rule tests; round 3 checked
  - `e863825` 2026-10-31 backotter: a restore replaces what is in the way; special nodes as restic stores them
  - `ef1dab5` 2026-10-31 backotter: extended attributes that can't be set don't stop the rest; Z for UTC node times
  - `eb6371b` 2026-10-31 backotter: xattrs sorted everywhere; flags set from what a file has; each unmapped SID and unsupported xattr named; bcachefs project IDs
  - `1a2a4a4` 2026-10-31 backotter: sockets skipped at backup and restore, as restic skips them
  - `364f4d5` 2026-10-31 backotter: keep the node of a file illumos quarantined (av_quarantined), without its contents: illumos.unread_size, a warning, restored empty
  - `8f01e49` 2026-10-31 backotter: a file whose contents weren't backed up is restored into a new, empty file, as in BackOtter's restic
  - `8955dee` 2026-10-31 backotter: files with holes read by their data extents; restored with holes per file system block
  - `b7649a7` 2026-10-31 backotter: a sparse restore writes only the non-zero part of each block a blob reaches into; a hole ends at the size now; ENXIO a hole only where SEEK_HOLE agrees; 64-bit lseek
  - `9f88530` 2026-11-01 backotter: the chunker hashes all 64 bytes before a chunk's minimum size, as restic's does, and cuts where restic does

## mchobbit/rustic_core : haiku-attrs  (ahead 10, behind 35, stars 0)

  - `661b47a` 2026-10-30 backotter: version 0.13.0+backotter.1
  - `fcac5fa` 2026-10-30 backotter: file flags, ACLs and other metadata, as BackOtter's restic keeps them
  - `ca2c82d` 2026-10-30 backotter: BackOtter's restic keeps illumos extended attributes too
  - `7821230` 2026-10-30 backotter: batch 1 - atime, sparse marks, project IDs, casefold (unreviewed)
  - `06f4d9c` 2026-10-30 backotter: vendor walkdir 2.5.0, listing directories without changing their atimes
  - `6ff672d` 2026-10-30 backotter: batch 1 fixes - sparse rule, one open, atimes, casefold, warnings once
  - `817230c` 2026-10-30 backotter: rustic_core builds for Haiku
  - `5d8b5c7` 2026-10-30 backotter: Haiku's file attributes, with their types
  - `e4a2c74` 2026-10-30 backotter: Haiku attributes, fixes from review
  - `2cec51a` 2026-10-30 backotter: Haiku takes batch 1's per-OS functions

## vdavid/rustic_core : backend-features  (ahead 10, behind 131, stars 0)

  - `23ee8bd` 2025-07-18 backend: Use features for opendal services
  - `e1c592a` 2025-07-20 update deps
  - `bec33e4` 2025-07-20 remove ftp feature
  - `9681088` 2025-07-20 fix url dep
  - `57d07b9` 2025-07-22 use feature "ci" in pipelines
  - `851993d` 2025-07-22 fix workflows
  - `930aa54` 2025-07-22 add missing licence
  - `40196f4` 2025-07-22 fix deny.toml
  - `6dfcad6` 2025-07-26 use ci features in ci-heavy.yml
  - `f7f48ec` 2025-07-26 Merge branch 'main' into backend-features

## vdavid/rustic_core : cache-warnings  (ahead 1, behind 319, stars 0)

  - `773edad` 2024-04-27 fix: Improve warnings in case of cache errors

## vdavid/rustic_core : examples-no-crate  (ahead 4, behind 132, stars 0)

  - `68af55e` 2025-07-22 move examples in rustic_core crate
  - `0648ab3` 2025-07-22 fmt and clippy for examples
  - `5cd6ffd` 2025-07-22 clippy for examples
  - `85e78e2` 2025-07-22 clippy for examples

## vdavid/rustic_core : feat/error_handling  (ahead 6, behind 222, stars 0)

  - `8e227da` 2024-10-06 feat(errors): add a RusticIssueCollector
  - `0b74f3c` 2024-10-06 add new issue types
  - `ff5ba3c` 2024-10-06 add RusticIssueResult
  - `8d610bd` 2024-10-06 replace RusticIssueResult struct with type alias
  - `d2dfd46` 2024-10-06 reduce visibility to crate public
  - `b74d2bf` 2024-10-06 reduce visibility of methods to crate public

## vdavid/rustic_core : feat/remove-unwrap-expect  (ahead 58, behind 326, stars 0)

  - `31b1b9f` 2024-03-17 test: implement more tests and rename tests for consistency
  - `0ef7c22` 2024-03-17 rename trait for checking errors in rest backend
  - `76f2bed` 2024-03-17 implement transpose on ParentResult and some error handling fixes
  - `39089b1` 2024-03-17 fix doc test and export for overwrite zero duration
  - `5ba3c02` 2024-03-17 rework Id/HexId
  - `ad9203b` 2024-03-17 use parking lot
  - `bce58de` 2024-03-17 more errors for error handling
  - `ccca56d` 2024-03-17 rename filename to file_name (and dir_name) to make it consistent over the code base, also handle cli changes with alias
  - `f24105e` 2024-03-17 rename new_cache to from_backend to make source/intent clearer
  - `0a62645` 2024-03-17 handle fallible location() method
  - `c205d45` 2024-03-17 fix non-self-describing variable names that make it hard to read the code
  - `1ae7a82` 2024-03-17 add more documentation about errors etc
  - `7e0f0ca` 2024-03-17 rename new_node to from_type_and_metadata to make the intent more clear and keep good style
  - `0128764` 2024-03-17 impl Display for Cache
  - `896a14a` 2024-03-17 remove default impl from nodetype as it can be derived
  - `5910c3b` 2024-03-17 impl Debug for Packer
  - `3add91c` 2024-03-17 factor out calculate_pack_size to make it easier testable
  - `2f5d6ea` 2024-03-17 handle TreeArchiver::apply errors and refactor to make it safe against overflows
  - `bf1419f` 2024-03-17 make link_target more consistent over the code base as well
  - `8d2f432` 2024-03-17 use expect to unwrap runtime
  - `1713a01` 2024-03-17 store joinhandle in rclone backend struct and join in Drop impl
  - `a75b4ae` 2024-03-17 warn the user if we shadow their already said rclone user and pass
  - `27a708a` 2024-03-17 cleanup panic docs
  - `35c8fef` 2024-03-17 allow expect for trait method impl
  - `3d9ebb9` 2024-03-17 we allow expect here, because it should always give some and otherwise we would need to create a backoff::Error<reqwest::Error> which is super annoying
  - `d0b0255` 2024-03-17 handle errors in Cache::list_with_size
  - `0439d61` 2024-03-17 bubble up options in TreeIterator
  - `034634b` 2024-03-17 add/remove docs, imports, and derives. derives e.g. serialize for insta test impl
  - `b70e8c0` 2024-03-17 handle option in iter
  - `63a6744` 2024-03-17 Don't panic on file not being able to be deleted.
  - ... 28 more

## vdavid/rustic_core : feat/summary  (ahead 20, behind 145, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `08a66fb` 2024-11-25 feat: update retrieve_from_arc_mutex method to use Self type
  - `f30bb6e` 2024-11-25 feat: add assertions to tests for contains_error method in Summary
  - `68b40c9` 2025-01-12 Merge branch 'main' into feat/summary

## vdavid/rustic_core : feat/summary-check  (ahead 24, behind 170, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `4316068` 2024-11-25 feat: update check_repository and check_cache_files to return Summary and improve concurrency handling
  - `2f5c7bf` 2024-11-25 feat: enhance error handling in check_cache_files to log errors in Summary with IssueScope
  - `fe64fdd` 2024-11-25 feat: enhance summary logging in check_repository and check_hot_files for better error reporting
  - `525e382` 2024-11-25 feat: refactor summary handling in merge and archiver
  - `36b2e9a` 2024-11-25 feat: add clippy lint allowance for check_repository and update test to capture summary
  - `ce08470` 2024-11-25 feat: simplify summary initialization by removing Mutex and using into_arc_mutex
  - `a2aee81` 2024-11-25 feat: streamline summary retrieval by replacing Mutex unwrapping with retrieve_from_arc_mutex

## vdavid/rustic_core : feat/tracing-logging  (ahead 6, behind 200, stars 0)

  - `236ea85` 2024-10-05 feat: replace log with tracing
  - `c9e8292` 2024-10-05 style: cargo fmt
  - `ca56f2d` 2024-10-28 Merge branch 'main' into feat/tracing-logging
  - `62aa898` 2024-10-28 add log feature as default so log and tracing can be used
  - `e95b61b` 2024-10-29 Instrument on:
  - `350eed0` 2024-10-29 add tracing and log feature without feature in core and backend

## vdavid/rustic_core : feature/async_incompatible  (ahead 4, behind 194, stars 0)

  - `d10914b` 2024-11-17 fix: typo
  - `51aed6e` 2024-11-17 feat(backend)!: add is_async_compatible method to ReadBackend and Repository
  - `1554c67` 2024-11-17 feat: impl is_async_incompatible for all backends
  - `b6a3851` 2024-11-17 fix: apply clippy lint

## vdavid/rustic_core : feature/outsource_config  (ahead 1, behind 379, stars 0)

  - `4396390` 2024-02-04 outsource config I

## vdavid/rustic_core : fix/command_input  (ahead 4, behind 223, stars 0)

  - `15e47aa` 2024-10-03 fix(commands): make CommandInput work with file redirects
  - `adcb1ee` 2024-10-04 join on iter, not with shell-split
  - `8e3b412` 2024-10-04 use winsplit, more cases on win, failing
  - `cff8aa7` 2024-10-04 more test cases

## vdavid/rustic_core : fusefs  (ahead 1, behind 306, stars 0)

  - `ad7b125` 2024-02-07 feat: add FuseFs

## vdavid/rustic_core : http-transport  (ahead 1, behind 27, stars 0)

  - `ad256a2` 2026-08-31 chore!: Prefix all http transport options with http-

## vdavid/rustic_core : index-search  (ahead 2, behind 142, stars 0)

  - `51ff8e4` 2025-04-20 add benchmark
  - `cc615b5` 2025-04-24 use interpolation_search for index

## vdavid/rustic_core : lock  (ahead 2, behind 139, stars 0)

  - `1a526bd` 2024-10-05 feat: Add lock_repo command
  - `5c229c5` 2024-10-06 Proposed changes from review

## vdavid/rustic_core : lock-more  (ahead 2, behind 223, stars 0)

  - `14488d4` 2024-10-05 feat: Add lock_repo command
  - `96b8476` 2024-10-05 feat: Add more locking commands

## vdavid/rustic_core : opendal  (ahead 1, behind 122, stars 0)

  - `b757175` 2025-09-12 update opendal

## vdavid/rustic_core : pack-padding  (ahead 29, behind 132, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `839a49c` 2025-06-12 WIP: Use padding for packfiles
  - `8f6ae7e` 2025-06-30 pad by filling up to next 64kiB; correct statistics
  - `b76b12f` 2025-07-02 correct test
  - `d2bdcd4` 2025-07-02 only check for padding blobs in prune if padding option is selected
  - `6a0736a` 2025-07-02 add test without padding
  - `ec01585` 2025-07-02 use padding only for 1 test
  - `e08c823` 2025-07-02 prevent 0-size padding; update comments
  - `7a63042` 2025-07-02 adapt windows tests
  - `7738b70` 2025-07-02 correct padding size computation

## vdavid/rustic_core : release-plz-2024-09-10T13-13-47Z  (ahead 1, behind 263, stars 0)

  - `6e7b150` 2024-09-23 chore: release

## vdavid/rustic_core : release-plz-2024-10-02T18-41-54Z  (ahead 1, behind 225, stars 0)

  - `4369057` 2024-10-03 chore: release

## vdavid/rustic_core : release-plz-2024-11-27T10-30-54Z  (ahead 1, behind 165, stars 0)

  - `61f4d8e` 2024-11-27 chore(rustic_backend): release v0.5.2

## vdavid/rustic_core : release-plz-2024-12-11T00-11-58Z  (ahead 1, behind 133, stars 0)

  - `f45b347` 2025-06-29 chore: release

## vdavid/rustic_core : release-plz-2026-08-21T19-55-16Z  (ahead 1, behind 23, stars 0)

  - `5e28688` 2026-09-06 chore: release

## vdavid/rustic_core : renovate/all-actions  (ahead 2, behind 143, stars 0)

  - `18480c9` 2024-12-30 chore(deps): update actions
  - `1b29692` 2025-04-19 Merge branch 'main' into renovate/all-actions

## vdavid/rustic_core : separate-be  (ahead 21, behind 131, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `9555d5b` 2025-08-02 Merge branch 'main' into separate-be

## vdavid/rustic_core : typed_path  (ahead 23, behind 121, stars 0)

  - `3706a32` 2024-12-29 use typed_path
  - `af7037f` 2025-01-11 fix windows build
  - `aff6924` 2025-01-11 more windows fixes
  - `a1f2a33` 2025-01-11 more windows fixes
  - `b8516d2` 2025-01-11 more windows fixes
  - `c71e783` 2025-01-11 more windows fixes
  - `377d52f` 2025-01-12 add util::GlobMatcherExt
  - `d3bb945` 2025-01-12 handle as_path correctly
  - `06b086a` 2025-01-13 fix unix tests
  - `d614f11` 2025-01-13 correctly convert windows into unix path
  - `0803495` 2025-01-13 update windwos snapshots
  - `d127fce` 2025-01-13 update snapshots
  - `04f2e0b` 2025-01-13 remove platform dependency in find snapshots
  - `f4e27f2` 2025-01-13 add util description
  - `3e421ae` 2025-01-13 docu for mod util
  - `219f56c` 2025-01-14 add tests
  - `9401a4e` 2025-01-14 more tests
  - `4655275` 2025-01-19 more util funcs
  - `b6abc4e` 2025-05-23 adaptions to use with rustic
  - `0982644` 2025-05-23 fix windows build
  - `f7bc8a5` 2025-07-07 apply review hints
  - `4a34307` 2025-07-09 make helper funcs public
  - `5db575d` 2025-10-23 adapt check errors

## vdavid/rustic_core : update-cache  (ahead 1, behind 144, stars 0)

  - `0950ed6` 2025-03-05 update Swatinem/rust-cache

## vdavid/rustic_core : zstd-0.14  (ahead 1, behind 23, stars 0)

  - `beba467` 2026-10-28 fix(deps): update zstd to 0.14.3 to clear the zstd and zstd-safe advisories

## lmtlssss/rustic_core : backend-features  (ahead 10, behind 131, stars 0)

  - `23ee8bd` 2025-07-18 backend: Use features for opendal services
  - `e1c592a` 2025-07-20 update deps
  - `bec33e4` 2025-07-20 remove ftp feature
  - `9681088` 2025-07-20 fix url dep
  - `57d07b9` 2025-07-22 use feature "ci" in pipelines
  - `851993d` 2025-07-22 fix workflows
  - `930aa54` 2025-07-22 add missing licence
  - `40196f4` 2025-07-22 fix deny.toml
  - `6dfcad6` 2025-07-26 use ci features in ci-heavy.yml
  - `f7f48ec` 2025-07-26 Merge branch 'main' into backend-features

## lmtlssss/rustic_core : cache-warnings  (ahead 1, behind 319, stars 0)

  - `773edad` 2024-04-27 fix: Improve warnings in case of cache errors

## lmtlssss/rustic_core : examples-no-crate  (ahead 4, behind 132, stars 0)

  - `68af55e` 2025-07-22 move examples in rustic_core crate
  - `0648ab3` 2025-07-22 fmt and clippy for examples
  - `5cd6ffd` 2025-07-22 clippy for examples
  - `85e78e2` 2025-07-22 clippy for examples

## lmtlssss/rustic_core : feat/error_handling  (ahead 6, behind 222, stars 0)

  - `8e227da` 2024-10-06 feat(errors): add a RusticIssueCollector
  - `0b74f3c` 2024-10-06 add new issue types
  - `ff5ba3c` 2024-10-06 add RusticIssueResult
  - `8d610bd` 2024-10-06 replace RusticIssueResult struct with type alias
  - `d2dfd46` 2024-10-06 reduce visibility to crate public
  - `b74d2bf` 2024-10-06 reduce visibility of methods to crate public

## lmtlssss/rustic_core : feat/remove-unwrap-expect  (ahead 58, behind 326, stars 0)

  - `31b1b9f` 2024-03-17 test: implement more tests and rename tests for consistency
  - `0ef7c22` 2024-03-17 rename trait for checking errors in rest backend
  - `76f2bed` 2024-03-17 implement transpose on ParentResult and some error handling fixes
  - `39089b1` 2024-03-17 fix doc test and export for overwrite zero duration
  - `5ba3c02` 2024-03-17 rework Id/HexId
  - `ad9203b` 2024-03-17 use parking lot
  - `bce58de` 2024-03-17 more errors for error handling
  - `ccca56d` 2024-03-17 rename filename to file_name (and dir_name) to make it consistent over the code base, also handle cli changes with alias
  - `f24105e` 2024-03-17 rename new_cache to from_backend to make source/intent clearer
  - `0a62645` 2024-03-17 handle fallible location() method
  - `c205d45` 2024-03-17 fix non-self-describing variable names that make it hard to read the code
  - `1ae7a82` 2024-03-17 add more documentation about errors etc
  - `7e0f0ca` 2024-03-17 rename new_node to from_type_and_metadata to make the intent more clear and keep good style
  - `0128764` 2024-03-17 impl Display for Cache
  - `896a14a` 2024-03-17 remove default impl from nodetype as it can be derived
  - `5910c3b` 2024-03-17 impl Debug for Packer
  - `3add91c` 2024-03-17 factor out calculate_pack_size to make it easier testable
  - `2f5d6ea` 2024-03-17 handle TreeArchiver::apply errors and refactor to make it safe against overflows
  - `bf1419f` 2024-03-17 make link_target more consistent over the code base as well
  - `8d2f432` 2024-03-17 use expect to unwrap runtime
  - `1713a01` 2024-03-17 store joinhandle in rclone backend struct and join in Drop impl
  - `a75b4ae` 2024-03-17 warn the user if we shadow their already said rclone user and pass
  - `27a708a` 2024-03-17 cleanup panic docs
  - `35c8fef` 2024-03-17 allow expect for trait method impl
  - `3d9ebb9` 2024-03-17 we allow expect here, because it should always give some and otherwise we would need to create a backoff::Error<reqwest::Error> which is super annoying
  - `d0b0255` 2024-03-17 handle errors in Cache::list_with_size
  - `0439d61` 2024-03-17 bubble up options in TreeIterator
  - `034634b` 2024-03-17 add/remove docs, imports, and derives. derives e.g. serialize for insta test impl
  - `b70e8c0` 2024-03-17 handle option in iter
  - `63a6744` 2024-03-17 Don't panic on file not being able to be deleted.
  - ... 28 more

## lmtlssss/rustic_core : feat/summary  (ahead 20, behind 145, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `08a66fb` 2024-11-25 feat: update retrieve_from_arc_mutex method to use Self type
  - `f30bb6e` 2024-11-25 feat: add assertions to tests for contains_error method in Summary
  - `68b40c9` 2025-01-12 Merge branch 'main' into feat/summary

## lmtlssss/rustic_core : feat/summary-check  (ahead 24, behind 170, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `4316068` 2024-11-25 feat: update check_repository and check_cache_files to return Summary and improve concurrency handling
  - `2f5c7bf` 2024-11-25 feat: enhance error handling in check_cache_files to log errors in Summary with IssueScope
  - `fe64fdd` 2024-11-25 feat: enhance summary logging in check_repository and check_hot_files for better error reporting
  - `525e382` 2024-11-25 feat: refactor summary handling in merge and archiver
  - `36b2e9a` 2024-11-25 feat: add clippy lint allowance for check_repository and update test to capture summary
  - `ce08470` 2024-11-25 feat: simplify summary initialization by removing Mutex and using into_arc_mutex
  - `a2aee81` 2024-11-25 feat: streamline summary retrieval by replacing Mutex unwrapping with retrieve_from_arc_mutex

## lmtlssss/rustic_core : feat/tracing-logging  (ahead 6, behind 200, stars 0)

  - `236ea85` 2024-10-05 feat: replace log with tracing
  - `c9e8292` 2024-10-05 style: cargo fmt
  - `ca56f2d` 2024-10-28 Merge branch 'main' into feat/tracing-logging
  - `62aa898` 2024-10-28 add log feature as default so log and tracing can be used
  - `e95b61b` 2024-10-29 Instrument on:
  - `350eed0` 2024-10-29 add tracing and log feature without feature in core and backend

## lmtlssss/rustic_core : feature/async_incompatible  (ahead 4, behind 194, stars 0)

  - `d10914b` 2024-11-17 fix: typo
  - `51aed6e` 2024-11-17 feat(backend)!: add is_async_compatible method to ReadBackend and Repository
  - `1554c67` 2024-11-17 feat: impl is_async_incompatible for all backends
  - `b6a3851` 2024-11-17 fix: apply clippy lint

## lmtlssss/rustic_core : feature/outsource_config  (ahead 1, behind 379, stars 0)

  - `4396390` 2024-02-04 outsource config I

## lmtlssss/rustic_core : fix/command_input  (ahead 4, behind 223, stars 0)

  - `15e47aa` 2024-10-03 fix(commands): make CommandInput work with file redirects
  - `adcb1ee` 2024-10-04 join on iter, not with shell-split
  - `8e3b412` 2024-10-04 use winsplit, more cases on win, failing
  - `cff8aa7` 2024-10-04 more test cases

## lmtlssss/rustic_core : fix-report-xattr-read-errors-20261025  (ahead 2, behind 23, stars 0)

  - `0172da8` 2026-10-25 fix(backup): report unreadable xattrs instead of silently discarding them
  - `80552e7` 2026-10-25 style: apply rustfmt to xattr error propagation tests

## lmtlssss/rustic_core : fix-restore-worker-io-error-20261025  (ahead 4, behind 23, stars 0)

  - `74f5db0` 2026-10-25 ci(test): temporary xattr error propagation regression qualification
  - `f288f93` 2026-10-25 fix(restore): propagate worker I/O errors instead of panicking
  - `5dc7cc9` 2026-10-25 test(restore): return filesystem write failures from scoped workers
  - `2c2d318` 2026-10-25 style: format restored worker error return

## lmtlssss/rustic_core : fusefs  (ahead 1, behind 306, stars 0)

  - `ad7b125` 2024-02-07 feat: add FuseFs

## lmtlssss/rustic_core : http-transport  (ahead 1, behind 27, stars 0)

  - `ad256a2` 2026-08-31 chore!: Prefix all http transport options with http-

## lmtlssss/rustic_core : index-search  (ahead 2, behind 142, stars 0)

  - `51ff8e4` 2025-04-20 add benchmark
  - `cc615b5` 2025-04-24 use interpolation_search for index

## lmtlssss/rustic_core : lock  (ahead 2, behind 139, stars 0)

  - `1a526bd` 2024-10-05 feat: Add lock_repo command
  - `5c229c5` 2024-10-06 Proposed changes from review

## lmtlssss/rustic_core : lock-more  (ahead 2, behind 223, stars 0)

  - `14488d4` 2024-10-05 feat: Add lock_repo command
  - `96b8476` 2024-10-05 feat: Add more locking commands

## lmtlssss/rustic_core : main  (ahead 2, behind 23, stars 0)

  - `74f5db0` 2026-10-25 ci(test): temporary xattr error propagation regression qualification
  - `22c726e` 2026-10-25 ci(test): temporary no-secret Rust restore I/O error regression

## lmtlssss/rustic_core : opendal  (ahead 1, behind 122, stars 0)

  - `b757175` 2025-09-12 update opendal

## lmtlssss/rustic_core : pack-padding  (ahead 29, behind 132, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `839a49c` 2025-06-12 WIP: Use padding for packfiles
  - `8f6ae7e` 2025-06-30 pad by filling up to next 64kiB; correct statistics
  - `b76b12f` 2025-07-02 correct test
  - `d2bdcd4` 2025-07-02 only check for padding blobs in prune if padding option is selected
  - `6a0736a` 2025-07-02 add test without padding
  - `ec01585` 2025-07-02 use padding only for 1 test
  - `e08c823` 2025-07-02 prevent 0-size padding; update comments
  - `7a63042` 2025-07-02 adapt windows tests
  - `7738b70` 2025-07-02 correct padding size computation

## lmtlssss/rustic_core : release-plz-2024-09-10T13-13-47Z  (ahead 1, behind 263, stars 0)

  - `6e7b150` 2024-09-23 chore: release

## lmtlssss/rustic_core : release-plz-2024-10-02T18-41-54Z  (ahead 1, behind 225, stars 0)

  - `4369057` 2024-10-03 chore: release

## lmtlssss/rustic_core : release-plz-2024-11-27T10-30-54Z  (ahead 1, behind 165, stars 0)

  - `61f4d8e` 2024-11-27 chore(rustic_backend): release v0.5.2

## lmtlssss/rustic_core : release-plz-2024-12-11T00-11-58Z  (ahead 1, behind 133, stars 0)

  - `f45b347` 2025-06-29 chore: release

## lmtlssss/rustic_core : release-plz-2026-08-21T19-55-16Z  (ahead 1, behind 23, stars 0)

  - `5e28688` 2026-09-06 chore: release

## lmtlssss/rustic_core : renovate/all-actions  (ahead 2, behind 143, stars 0)

  - `18480c9` 2024-12-30 chore(deps): update actions
  - `1b29692` 2025-04-19 Merge branch 'main' into renovate/all-actions

## lmtlssss/rustic_core : separate-be  (ahead 21, behind 131, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `9555d5b` 2025-08-02 Merge branch 'main' into separate-be

## lmtlssss/rustic_core : typed_path  (ahead 23, behind 121, stars 0)

  - `3706a32` 2024-12-29 use typed_path
  - `af7037f` 2025-01-11 fix windows build
  - `aff6924` 2025-01-11 more windows fixes
  - `a1f2a33` 2025-01-11 more windows fixes
  - `b8516d2` 2025-01-11 more windows fixes
  - `c71e783` 2025-01-11 more windows fixes
  - `377d52f` 2025-01-12 add util::GlobMatcherExt
  - `d3bb945` 2025-01-12 handle as_path correctly
  - `06b086a` 2025-01-13 fix unix tests
  - `d614f11` 2025-01-13 correctly convert windows into unix path
  - `0803495` 2025-01-13 update windwos snapshots
  - `d127fce` 2025-01-13 update snapshots
  - `04f2e0b` 2025-01-13 remove platform dependency in find snapshots
  - `f4e27f2` 2025-01-13 add util description
  - `3e421ae` 2025-01-13 docu for mod util
  - `219f56c` 2025-01-14 add tests
  - `9401a4e` 2025-01-14 more tests
  - `4655275` 2025-01-19 more util funcs
  - `b6abc4e` 2025-05-23 adaptions to use with rustic
  - `0982644` 2025-05-23 fix windows build
  - `f7bc8a5` 2025-07-07 apply review hints
  - `4a34307` 2025-07-09 make helper funcs public
  - `5db575d` 2025-10-23 adapt check errors

## lmtlssss/rustic_core : update-cache  (ahead 1, behind 144, stars 0)

  - `0950ed6` 2025-03-05 update Swatinem/rust-cache

## MetehanYurtseven/rustic_core : perf/zero-chunks  (ahead 2, behind 2, stars 0)

  - `1e51d50` 2026-10-24 perf: don't hash all-zero chunks
  - `a1b0748` 2026-11-08 Move determination of zero-bytes-chunk-size to the chunker module

## MetehanYurtseven/rustic_core : v0.13.0-zero-chunks  (ahead 1, behind 35, stars 0)

  - `9b3b4d3` 2026-10-24 perf: don't hash all-zero chunks

## Akayashuu/rustic_core : backend-features  (ahead 10, behind 131, stars 0)

  - `23ee8bd` 2025-07-18 backend: Use features for opendal services
  - `e1c592a` 2025-07-20 update deps
  - `bec33e4` 2025-07-20 remove ftp feature
  - `9681088` 2025-07-20 fix url dep
  - `57d07b9` 2025-07-22 use feature "ci" in pipelines
  - `851993d` 2025-07-22 fix workflows
  - `930aa54` 2025-07-22 add missing licence
  - `40196f4` 2025-07-22 fix deny.toml
  - `6dfcad6` 2025-07-26 use ci features in ci-heavy.yml
  - `f7f48ec` 2025-07-26 Merge branch 'main' into backend-features

## Akayashuu/rustic_core : cache-warnings  (ahead 1, behind 319, stars 0)

  - `773edad` 2024-04-27 fix: Improve warnings in case of cache errors

## Akayashuu/rustic_core : examples-no-crate  (ahead 4, behind 132, stars 0)

  - `68af55e` 2025-07-22 move examples in rustic_core crate
  - `0648ab3` 2025-07-22 fmt and clippy for examples
  - `5cd6ffd` 2025-07-22 clippy for examples
  - `85e78e2` 2025-07-22 clippy for examples

## Akayashuu/rustic_core : feat/error_handling  (ahead 6, behind 222, stars 0)

  - `8e227da` 2024-10-06 feat(errors): add a RusticIssueCollector
  - `0b74f3c` 2024-10-06 add new issue types
  - `ff5ba3c` 2024-10-06 add RusticIssueResult
  - `8d610bd` 2024-10-06 replace RusticIssueResult struct with type alias
  - `d2dfd46` 2024-10-06 reduce visibility to crate public
  - `b74d2bf` 2024-10-06 reduce visibility of methods to crate public

## Akayashuu/rustic_core : feat/remove-unwrap-expect  (ahead 58, behind 326, stars 0)

  - `31b1b9f` 2024-03-17 test: implement more tests and rename tests for consistency
  - `0ef7c22` 2024-03-17 rename trait for checking errors in rest backend
  - `76f2bed` 2024-03-17 implement transpose on ParentResult and some error handling fixes
  - `39089b1` 2024-03-17 fix doc test and export for overwrite zero duration
  - `5ba3c02` 2024-03-17 rework Id/HexId
  - `ad9203b` 2024-03-17 use parking lot
  - `bce58de` 2024-03-17 more errors for error handling
  - `ccca56d` 2024-03-17 rename filename to file_name (and dir_name) to make it consistent over the code base, also handle cli changes with alias
  - `f24105e` 2024-03-17 rename new_cache to from_backend to make source/intent clearer
  - `0a62645` 2024-03-17 handle fallible location() method
  - `c205d45` 2024-03-17 fix non-self-describing variable names that make it hard to read the code
  - `1ae7a82` 2024-03-17 add more documentation about errors etc
  - `7e0f0ca` 2024-03-17 rename new_node to from_type_and_metadata to make the intent more clear and keep good style
  - `0128764` 2024-03-17 impl Display for Cache
  - `896a14a` 2024-03-17 remove default impl from nodetype as it can be derived
  - `5910c3b` 2024-03-17 impl Debug for Packer
  - `3add91c` 2024-03-17 factor out calculate_pack_size to make it easier testable
  - `2f5d6ea` 2024-03-17 handle TreeArchiver::apply errors and refactor to make it safe against overflows
  - `bf1419f` 2024-03-17 make link_target more consistent over the code base as well
  - `8d2f432` 2024-03-17 use expect to unwrap runtime
  - `1713a01` 2024-03-17 store joinhandle in rclone backend struct and join in Drop impl
  - `a75b4ae` 2024-03-17 warn the user if we shadow their already said rclone user and pass
  - `27a708a` 2024-03-17 cleanup panic docs
  - `35c8fef` 2024-03-17 allow expect for trait method impl
  - `3d9ebb9` 2024-03-17 we allow expect here, because it should always give some and otherwise we would need to create a backoff::Error<reqwest::Error> which is super annoying
  - `d0b0255` 2024-03-17 handle errors in Cache::list_with_size
  - `0439d61` 2024-03-17 bubble up options in TreeIterator
  - `034634b` 2024-03-17 add/remove docs, imports, and derives. derives e.g. serialize for insta test impl
  - `b70e8c0` 2024-03-17 handle option in iter
  - `63a6744` 2024-03-17 Don't panic on file not being able to be deleted.
  - ... 28 more

## Akayashuu/rustic_core : feat/summary  (ahead 20, behind 145, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `08a66fb` 2024-11-25 feat: update retrieve_from_arc_mutex method to use Self type
  - `f30bb6e` 2024-11-25 feat: add assertions to tests for contains_error method in Summary
  - `68b40c9` 2025-01-12 Merge branch 'main' into feat/summary

## Akayashuu/rustic_core : feat/summary-check  (ahead 24, behind 170, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `4316068` 2024-11-25 feat: update check_repository and check_cache_files to return Summary and improve concurrency handling
  - `2f5c7bf` 2024-11-25 feat: enhance error handling in check_cache_files to log errors in Summary with IssueScope
  - `fe64fdd` 2024-11-25 feat: enhance summary logging in check_repository and check_hot_files for better error reporting
  - `525e382` 2024-11-25 feat: refactor summary handling in merge and archiver
  - `36b2e9a` 2024-11-25 feat: add clippy lint allowance for check_repository and update test to capture summary
  - `ce08470` 2024-11-25 feat: simplify summary initialization by removing Mutex and using into_arc_mutex
  - `a2aee81` 2024-11-25 feat: streamline summary retrieval by replacing Mutex unwrapping with retrieve_from_arc_mutex

## Akayashuu/rustic_core : feat/tracing-logging  (ahead 6, behind 200, stars 0)

  - `236ea85` 2024-10-05 feat: replace log with tracing
  - `c9e8292` 2024-10-05 style: cargo fmt
  - `ca56f2d` 2024-10-28 Merge branch 'main' into feat/tracing-logging
  - `62aa898` 2024-10-28 add log feature as default so log and tracing can be used
  - `e95b61b` 2024-10-29 Instrument on:
  - `350eed0` 2024-10-29 add tracing and log feature without feature in core and backend

## Akayashuu/rustic_core : feature/async_incompatible  (ahead 4, behind 194, stars 0)

  - `d10914b` 2024-11-17 fix: typo
  - `51aed6e` 2024-11-17 feat(backend)!: add is_async_compatible method to ReadBackend and Repository
  - `1554c67` 2024-11-17 feat: impl is_async_incompatible for all backends
  - `b6a3851` 2024-11-17 fix: apply clippy lint

## Akayashuu/rustic_core : feature/outsource_config  (ahead 1, behind 379, stars 0)

  - `4396390` 2024-02-04 outsource config I

## Akayashuu/rustic_core : fix/cache-unique-tmp  (ahead 1, behind 3, stars 0)

  - `79ad486` 2026-11-06 fix(cache): give every write of a cached file its own temporary file

## Akayashuu/rustic_core : fix/ci-main-lints  (ahead 3, behind 3, stars 0)

  - `e7c0e8c` 2026-11-06 style: satisfy clippy and rustfmt from Rust 1.99
  - `9af0afd` 2026-11-06 ci: update install-action so cargo-careful builds on current nightly
  - `5c053a2` 2026-11-06 test: give each fixture repository its own cache dir

## Akayashuu/rustic_core : fix/command_input  (ahead 4, behind 223, stars 0)

  - `15e47aa` 2024-10-03 fix(commands): make CommandInput work with file redirects
  - `adcb1ee` 2024-10-04 join on iter, not with shell-split
  - `8e3b412` 2024-10-04 use winsplit, more cases on win, failing
  - `cff8aa7` 2024-10-04 more test cases

## Akayashuu/rustic_core : fix/ignore-inode-negation  (ahead 2, behind 9, stars 0)

  - `51ffb8f` 2026-10-31 fix(backup): compare inodes unless ignore_inode is set
  - `adfd1b8` 2026-10-31 test: keep one test per behaviour

## Akayashuu/rustic_core : fix/join-tree-loaders  (ahead 3, behind 22, stars 0)

  - `3de10c2` 2026-10-18 fix: join tree loader threads before releasing the index
  - `85872b0` 2026-10-18 test: keep a single streamer drop test
  - `98f7e28` 2026-10-30 Merge branch 'main' into fix/join-tree-loaders

## Akayashuu/rustic_core : fix/keep-minutely-same-hour  (ahead 2, behind 9, stars 0)

  - `5548f75` 2026-10-31 fix(forget): count minutes within the same hour for keep-minutely
  - `5f86868` 2026-10-31 test: keep one test per behaviour

## Akayashuu/rustic_core : fix/rabin-prefill-full-window  (ahead 1, behind 7, stars 0)

  - `07d1790` 2026-10-31 fix(chunker): prefill the whole rolling hash window

## Akayashuu/rustic_core : fix/rabin-small-min-size  (ahead 2, behind 1, stars 0)

  - `1bdaabe` 2026-10-31 fix(chunker): keep chunks within bounds for a small min size
  - `6514d17` 2026-11-09 Merge branch 'main' into fix/rabin-small-min-size

## Akayashuu/rustic_core : fix/rest-config-status  (ahead 1, behind 7, stars 0)

  - `0b21b36` 2026-10-31 fix(backend): report a failed config lookup on the REST backend

## Akayashuu/rustic_core : fix/restore-over-existing-hardlink  (ahead 2, behind 9, stars 0)

  - `aaadbec` 2026-10-31 fix(restore): replace an entry that sits where a hardlink belongs
  - `5438825` 2026-10-31 test: keep one test per behaviour

## Akayashuu/rustic_core : fix/restore-special-nofollow  (ahead 1, behind 3, stars 0)

  - `def05d4` 2026-11-06 fix(restore): don't set permissions through a symlink that stands in for another node

## Akayashuu/rustic_core : fix/snapshots-skip-unreadable  (ahead 2, behind 3, stars 0)

  - `0778248` 2026-11-06 fix(repository): skip unreadable snapshot files when listing all snapshots
  - `c816039` 2026-11-06 fix(check): report unreadable snapshot files in check_with_trees too

## Akayashuu/rustic_core : fix/windows-forward-slash-drive  (ahead 1, behind 7, stars 0)

  - `8411e8d` 2026-10-31 fix(backend): accept forward slashes after a Windows drive letter

## Akayashuu/rustic_core : fix/windows-sanitize-error-test  (ahead 2, behind 13, stars 0)

  - `b83e41c` 2026-10-30 test: compare the Debug form of the path in the sanitize error
  - `c443953` 2026-10-30 Merge branch 'main' into fix/windows-sanitize-error-test

## Akayashuu/rustic_core : fusefs  (ahead 1, behind 306, stars 0)

  - `ad7b125` 2024-02-07 feat: add FuseFs

## Akayashuu/rustic_core : http-transport  (ahead 1, behind 27, stars 0)

  - `ad256a2` 2026-08-31 chore!: Prefix all http transport options with http-

## Akayashuu/rustic_core : index-search  (ahead 2, behind 142, stars 0)

  - `51ff8e4` 2025-04-20 add benchmark
  - `cc615b5` 2025-04-24 use interpolation_search for index

## Akayashuu/rustic_core : lock  (ahead 2, behind 139, stars 0)

  - `1a526bd` 2024-10-05 feat: Add lock_repo command
  - `5c229c5` 2024-10-06 Proposed changes from review

## Akayashuu/rustic_core : lock-more  (ahead 2, behind 223, stars 0)

  - `14488d4` 2024-10-05 feat: Add lock_repo command
  - `96b8476` 2024-10-05 feat: Add more locking commands

## Akayashuu/rustic_core : opendal  (ahead 1, behind 122, stars 0)

  - `b757175` 2025-09-12 update opendal

## Akayashuu/rustic_core : pack-padding  (ahead 29, behind 132, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `839a49c` 2025-06-12 WIP: Use padding for packfiles
  - `8f6ae7e` 2025-06-30 pad by filling up to next 64kiB; correct statistics
  - `b76b12f` 2025-07-02 correct test
  - `d2bdcd4` 2025-07-02 only check for padding blobs in prune if padding option is selected
  - `6a0736a` 2025-07-02 add test without padding
  - `ec01585` 2025-07-02 use padding only for 1 test
  - `e08c823` 2025-07-02 prevent 0-size padding; update comments
  - `7a63042` 2025-07-02 adapt windows tests
  - `7738b70` 2025-07-02 correct padding size computation

## Akayashuu/rustic_core : release-plz-2024-09-10T13-13-47Z  (ahead 1, behind 263, stars 0)

  - `6e7b150` 2024-09-23 chore: release

## Akayashuu/rustic_core : release-plz-2024-10-02T18-41-54Z  (ahead 1, behind 225, stars 0)

  - `4369057` 2024-10-03 chore: release

## Akayashuu/rustic_core : release-plz-2024-11-27T10-30-54Z  (ahead 1, behind 165, stars 0)

  - `61f4d8e` 2024-11-27 chore(rustic_backend): release v0.5.2

## Akayashuu/rustic_core : release-plz-2024-12-11T00-11-58Z  (ahead 1, behind 133, stars 0)

  - `f45b347` 2025-06-29 chore: release

## Akayashuu/rustic_core : release-plz-2026-08-21T19-55-16Z  (ahead 1, behind 23, stars 0)

  - `5e28688` 2026-09-06 chore: release

## Akayashuu/rustic_core : renovate/all-actions  (ahead 2, behind 143, stars 0)

  - `18480c9` 2024-12-30 chore(deps): update actions
  - `1b29692` 2025-04-19 Merge branch 'main' into renovate/all-actions

## Akayashuu/rustic_core : separate-be  (ahead 21, behind 131, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `9555d5b` 2025-08-02 Merge branch 'main' into separate-be

## Akayashuu/rustic_core : typed_path  (ahead 23, behind 121, stars 0)

  - `3706a32` 2024-12-29 use typed_path
  - `af7037f` 2025-01-11 fix windows build
  - `aff6924` 2025-01-11 more windows fixes
  - `a1f2a33` 2025-01-11 more windows fixes
  - `b8516d2` 2025-01-11 more windows fixes
  - `c71e783` 2025-01-11 more windows fixes
  - `377d52f` 2025-01-12 add util::GlobMatcherExt
  - `d3bb945` 2025-01-12 handle as_path correctly
  - `06b086a` 2025-01-13 fix unix tests
  - `d614f11` 2025-01-13 correctly convert windows into unix path
  - `0803495` 2025-01-13 update windwos snapshots
  - `d127fce` 2025-01-13 update snapshots
  - `04f2e0b` 2025-01-13 remove platform dependency in find snapshots
  - `f4e27f2` 2025-01-13 add util description
  - `3e421ae` 2025-01-13 docu for mod util
  - `219f56c` 2025-01-14 add tests
  - `9401a4e` 2025-01-14 more tests
  - `4655275` 2025-01-19 more util funcs
  - `b6abc4e` 2025-05-23 adaptions to use with rustic
  - `0982644` 2025-05-23 fix windows build
  - `f7bc8a5` 2025-07-07 apply review hints
  - `4a34307` 2025-07-09 make helper funcs public
  - `5db575d` 2025-10-23 adapt check errors

## Akayashuu/rustic_core : update-cache  (ahead 1, behind 144, stars 0)

  - `0950ed6` 2025-03-05 update Swatinem/rust-cache

## AzmainMahatab/rustic_core : backend-features  (ahead 10, behind 131, stars 0)

  - `23ee8bd` 2025-07-18 backend: Use features for opendal services
  - `e1c592a` 2025-07-20 update deps
  - `bec33e4` 2025-07-20 remove ftp feature
  - `9681088` 2025-07-20 fix url dep
  - `57d07b9` 2025-07-22 use feature "ci" in pipelines
  - `851993d` 2025-07-22 fix workflows
  - `930aa54` 2025-07-22 add missing licence
  - `40196f4` 2025-07-22 fix deny.toml
  - `6dfcad6` 2025-07-26 use ci features in ci-heavy.yml
  - `f7f48ec` 2025-07-26 Merge branch 'main' into backend-features

## AzmainMahatab/rustic_core : cache-warnings  (ahead 1, behind 319, stars 0)

  - `773edad` 2024-04-27 fix: Improve warnings in case of cache errors

## AzmainMahatab/rustic_core : examples-no-crate  (ahead 4, behind 132, stars 0)

  - `68af55e` 2025-07-22 move examples in rustic_core crate
  - `0648ab3` 2025-07-22 fmt and clippy for examples
  - `5cd6ffd` 2025-07-22 clippy for examples
  - `85e78e2` 2025-07-22 clippy for examples

## AzmainMahatab/rustic_core : feat/error_handling  (ahead 6, behind 222, stars 0)

  - `8e227da` 2024-10-06 feat(errors): add a RusticIssueCollector
  - `0b74f3c` 2024-10-06 add new issue types
  - `ff5ba3c` 2024-10-06 add RusticIssueResult
  - `8d610bd` 2024-10-06 replace RusticIssueResult struct with type alias
  - `d2dfd46` 2024-10-06 reduce visibility to crate public
  - `b74d2bf` 2024-10-06 reduce visibility of methods to crate public

## AzmainMahatab/rustic_core : feat/remove-unwrap-expect  (ahead 58, behind 326, stars 0)

  - `31b1b9f` 2024-03-17 test: implement more tests and rename tests for consistency
  - `0ef7c22` 2024-03-17 rename trait for checking errors in rest backend
  - `76f2bed` 2024-03-17 implement transpose on ParentResult and some error handling fixes
  - `39089b1` 2024-03-17 fix doc test and export for overwrite zero duration
  - `5ba3c02` 2024-03-17 rework Id/HexId
  - `ad9203b` 2024-03-17 use parking lot
  - `bce58de` 2024-03-17 more errors for error handling
  - `ccca56d` 2024-03-17 rename filename to file_name (and dir_name) to make it consistent over the code base, also handle cli changes with alias
  - `f24105e` 2024-03-17 rename new_cache to from_backend to make source/intent clearer
  - `0a62645` 2024-03-17 handle fallible location() method
  - `c205d45` 2024-03-17 fix non-self-describing variable names that make it hard to read the code
  - `1ae7a82` 2024-03-17 add more documentation about errors etc
  - `7e0f0ca` 2024-03-17 rename new_node to from_type_and_metadata to make the intent more clear and keep good style
  - `0128764` 2024-03-17 impl Display for Cache
  - `896a14a` 2024-03-17 remove default impl from nodetype as it can be derived
  - `5910c3b` 2024-03-17 impl Debug for Packer
  - `3add91c` 2024-03-17 factor out calculate_pack_size to make it easier testable
  - `2f5d6ea` 2024-03-17 handle TreeArchiver::apply errors and refactor to make it safe against overflows
  - `bf1419f` 2024-03-17 make link_target more consistent over the code base as well
  - `8d2f432` 2024-03-17 use expect to unwrap runtime
  - `1713a01` 2024-03-17 store joinhandle in rclone backend struct and join in Drop impl
  - `a75b4ae` 2024-03-17 warn the user if we shadow their already said rclone user and pass
  - `27a708a` 2024-03-17 cleanup panic docs
  - `35c8fef` 2024-03-17 allow expect for trait method impl
  - `3d9ebb9` 2024-03-17 we allow expect here, because it should always give some and otherwise we would need to create a backoff::Error<reqwest::Error> which is super annoying
  - `d0b0255` 2024-03-17 handle errors in Cache::list_with_size
  - `0439d61` 2024-03-17 bubble up options in TreeIterator
  - `034634b` 2024-03-17 add/remove docs, imports, and derives. derives e.g. serialize for insta test impl
  - `b70e8c0` 2024-03-17 handle option in iter
  - `63a6744` 2024-03-17 Don't panic on file not being able to be deleted.
  - ... 28 more

## AzmainMahatab/rustic_core : feat/summary  (ahead 20, behind 145, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `08a66fb` 2024-11-25 feat: update retrieve_from_arc_mutex method to use Self type
  - `f30bb6e` 2024-11-25 feat: add assertions to tests for contains_error method in Summary
  - `68b40c9` 2025-01-12 Merge branch 'main' into feat/summary

## AzmainMahatab/rustic_core : feat/summary-check  (ahead 24, behind 170, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `4316068` 2024-11-25 feat: update check_repository and check_cache_files to return Summary and improve concurrency handling
  - `2f5c7bf` 2024-11-25 feat: enhance error handling in check_cache_files to log errors in Summary with IssueScope
  - `fe64fdd` 2024-11-25 feat: enhance summary logging in check_repository and check_hot_files for better error reporting
  - `525e382` 2024-11-25 feat: refactor summary handling in merge and archiver
  - `36b2e9a` 2024-11-25 feat: add clippy lint allowance for check_repository and update test to capture summary
  - `ce08470` 2024-11-25 feat: simplify summary initialization by removing Mutex and using into_arc_mutex
  - `a2aee81` 2024-11-25 feat: streamline summary retrieval by replacing Mutex unwrapping with retrieve_from_arc_mutex

## AzmainMahatab/rustic_core : feat/tracing-logging  (ahead 6, behind 200, stars 0)

  - `236ea85` 2024-10-05 feat: replace log with tracing
  - `c9e8292` 2024-10-05 style: cargo fmt
  - `ca56f2d` 2024-10-28 Merge branch 'main' into feat/tracing-logging
  - `62aa898` 2024-10-28 add log feature as default so log and tracing can be used
  - `e95b61b` 2024-10-29 Instrument on:
  - `350eed0` 2024-10-29 add tracing and log feature without feature in core and backend

## AzmainMahatab/rustic_core : feature/async_incompatible  (ahead 4, behind 194, stars 0)

  - `d10914b` 2024-11-17 fix: typo
  - `51aed6e` 2024-11-17 feat(backend)!: add is_async_compatible method to ReadBackend and Repository
  - `1554c67` 2024-11-17 feat: impl is_async_incompatible for all backends
  - `b6a3851` 2024-11-17 fix: apply clippy lint

## AzmainMahatab/rustic_core : feature/outsource_config  (ahead 1, behind 379, stars 0)

  - `4396390` 2024-02-04 outsource config I

## AzmainMahatab/rustic_core : fix/command_input  (ahead 4, behind 223, stars 0)

  - `15e47aa` 2024-10-03 fix(commands): make CommandInput work with file redirects
  - `adcb1ee` 2024-10-04 join on iter, not with shell-split
  - `8e3b412` 2024-10-04 use winsplit, more cases on win, failing
  - `cff8aa7` 2024-10-04 more test cases

## AzmainMahatab/rustic_core : fusefs  (ahead 1, behind 306, stars 0)

  - `ad7b125` 2024-02-07 feat: add FuseFs

## AzmainMahatab/rustic_core : http-transport  (ahead 1, behind 27, stars 0)

  - `ad256a2` 2026-08-31 chore!: Prefix all http transport options with http-

## AzmainMahatab/rustic_core : index-search  (ahead 2, behind 142, stars 0)

  - `51ff8e4` 2025-04-20 add benchmark
  - `cc615b5` 2025-04-24 use interpolation_search for index

## AzmainMahatab/rustic_core : keep-given-subtrees  (ahead 1, behind 23, stars 0)

  - `c56165d` 2026-10-18 feat: keep a directory given with its subtree when archiving

## AzmainMahatab/rustic_core : lock  (ahead 2, behind 139, stars 0)

  - `1a526bd` 2024-10-05 feat: Add lock_repo command
  - `5c229c5` 2024-10-06 Proposed changes from review

## AzmainMahatab/rustic_core : lock-more  (ahead 2, behind 223, stars 0)

  - `14488d4` 2024-10-05 feat: Add lock_repo command
  - `96b8476` 2024-10-05 feat: Add more locking commands

## AzmainMahatab/rustic_core : opendal  (ahead 1, behind 122, stars 0)

  - `b757175` 2025-09-12 update opendal

## AzmainMahatab/rustic_core : pack-padding  (ahead 29, behind 132, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `839a49c` 2025-06-12 WIP: Use padding for packfiles
  - `8f6ae7e` 2025-06-30 pad by filling up to next 64kiB; correct statistics
  - `b76b12f` 2025-07-02 correct test
  - `d2bdcd4` 2025-07-02 only check for padding blobs in prune if padding option is selected
  - `6a0736a` 2025-07-02 add test without padding
  - `ec01585` 2025-07-02 use padding only for 1 test
  - `e08c823` 2025-07-02 prevent 0-size padding; update comments
  - `7a63042` 2025-07-02 adapt windows tests
  - `7738b70` 2025-07-02 correct padding size computation

## AzmainMahatab/rustic_core : release-plz-2024-09-10T13-13-47Z  (ahead 1, behind 263, stars 0)

  - `6e7b150` 2024-09-23 chore: release

## AzmainMahatab/rustic_core : release-plz-2024-10-02T18-41-54Z  (ahead 1, behind 225, stars 0)

  - `4369057` 2024-10-03 chore: release

## AzmainMahatab/rustic_core : release-plz-2024-11-27T10-30-54Z  (ahead 1, behind 165, stars 0)

  - `61f4d8e` 2024-11-27 chore(rustic_backend): release v0.5.2

## AzmainMahatab/rustic_core : release-plz-2024-12-11T00-11-58Z  (ahead 1, behind 133, stars 0)

  - `f45b347` 2025-06-29 chore: release

## AzmainMahatab/rustic_core : release-plz-2026-08-21T19-55-16Z  (ahead 1, behind 23, stars 0)

  - `5e28688` 2026-09-06 chore: release

## AzmainMahatab/rustic_core : renovate/all-actions  (ahead 2, behind 143, stars 0)

  - `18480c9` 2024-12-30 chore(deps): update actions
  - `1b29692` 2025-04-19 Merge branch 'main' into renovate/all-actions

## AzmainMahatab/rustic_core : separate-be  (ahead 21, behind 131, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `9555d5b` 2025-08-02 Merge branch 'main' into separate-be

## AzmainMahatab/rustic_core : typed_path  (ahead 23, behind 121, stars 0)

  - `3706a32` 2024-12-29 use typed_path
  - `af7037f` 2025-01-11 fix windows build
  - `aff6924` 2025-01-11 more windows fixes
  - `a1f2a33` 2025-01-11 more windows fixes
  - `b8516d2` 2025-01-11 more windows fixes
  - `c71e783` 2025-01-11 more windows fixes
  - `377d52f` 2025-01-12 add util::GlobMatcherExt
  - `d3bb945` 2025-01-12 handle as_path correctly
  - `06b086a` 2025-01-13 fix unix tests
  - `d614f11` 2025-01-13 correctly convert windows into unix path
  - `0803495` 2025-01-13 update windwos snapshots
  - `d127fce` 2025-01-13 update snapshots
  - `04f2e0b` 2025-01-13 remove platform dependency in find snapshots
  - `f4e27f2` 2025-01-13 add util description
  - `3e421ae` 2025-01-13 docu for mod util
  - `219f56c` 2025-01-14 add tests
  - `9401a4e` 2025-01-14 more tests
  - `4655275` 2025-01-19 more util funcs
  - `b6abc4e` 2025-05-23 adaptions to use with rustic
  - `0982644` 2025-05-23 fix windows build
  - `f7bc8a5` 2025-07-07 apply review hints
  - `4a34307` 2025-07-09 make helper funcs public
  - `5db575d` 2025-10-23 adapt check errors

## AzmainMahatab/rustic_core : update-cache  (ahead 1, behind 144, stars 0)

  - `0950ed6` 2025-03-05 update Swatinem/rust-cache

## AlphaJack/rustic_core : feat/chunker-polynomial  (ahead 1, behind 23, stars 0)

  - `aa578fd` 2026-10-16 feat: add set_chunker_polynomial to ConfigOptions

## AlphaJack/rustic_core : fix/as-path-file-source  (ahead 1, behind 23, stars 0)

  - `d268d6b` 2026-10-15 fix(backup): save a single file source under the name given by as-path

## AlphaJack/rustic_core : fix/init-with-config-hot-cold  (ahead 2, behind 7, stars 0)

  - `3669ed1` 2026-10-15 fix: set is_hot from the repository in init_with_config
  - `da9bf35` 2026-10-31 Merge branch 'main' into fix/init-with-config-hot-cold

## AlphaJack/rustic_core : fix/restore-no-panic  (ahead 1, behind 23, stars 0)

  - `8d66388` 2026-10-15 fix(restore): return errors from restoring file contents instead of panicking

## stefanwichmann/rustic_core : backend-features  (ahead 10, behind 131, stars 0)

  - `23ee8bd` 2025-07-18 backend: Use features for opendal services
  - `e1c592a` 2025-07-20 update deps
  - `bec33e4` 2025-07-20 remove ftp feature
  - `9681088` 2025-07-20 fix url dep
  - `57d07b9` 2025-07-22 use feature "ci" in pipelines
  - `851993d` 2025-07-22 fix workflows
  - `930aa54` 2025-07-22 add missing licence
  - `40196f4` 2025-07-22 fix deny.toml
  - `6dfcad6` 2025-07-26 use ci features in ci-heavy.yml
  - `f7f48ec` 2025-07-26 Merge branch 'main' into backend-features

## stefanwichmann/rustic_core : cache-warnings  (ahead 1, behind 319, stars 0)

  - `773edad` 2024-04-27 fix: Improve warnings in case of cache errors

## stefanwichmann/rustic_core : examples-no-crate  (ahead 4, behind 132, stars 0)

  - `68af55e` 2025-07-22 move examples in rustic_core crate
  - `0648ab3` 2025-07-22 fmt and clippy for examples
  - `5cd6ffd` 2025-07-22 clippy for examples
  - `85e78e2` 2025-07-22 clippy for examples

## stefanwichmann/rustic_core : feat/error_handling  (ahead 6, behind 222, stars 0)

  - `8e227da` 2024-10-06 feat(errors): add a RusticIssueCollector
  - `0b74f3c` 2024-10-06 add new issue types
  - `ff5ba3c` 2024-10-06 add RusticIssueResult
  - `8d610bd` 2024-10-06 replace RusticIssueResult struct with type alias
  - `d2dfd46` 2024-10-06 reduce visibility to crate public
  - `b74d2bf` 2024-10-06 reduce visibility of methods to crate public

## stefanwichmann/rustic_core : feat/http-connect-timeout  (ahead 1, behind 5, stars 0)

  - `dda7767` 2026-11-04 feat: add a connect-timeout option for http-based backends

## stefanwichmann/rustic_core : feat/remove-unwrap-expect  (ahead 58, behind 326, stars 0)

  - `31b1b9f` 2024-03-17 test: implement more tests and rename tests for consistency
  - `0ef7c22` 2024-03-17 rename trait for checking errors in rest backend
  - `76f2bed` 2024-03-17 implement transpose on ParentResult and some error handling fixes
  - `39089b1` 2024-03-17 fix doc test and export for overwrite zero duration
  - `5ba3c02` 2024-03-17 rework Id/HexId
  - `ad9203b` 2024-03-17 use parking lot
  - `bce58de` 2024-03-17 more errors for error handling
  - `ccca56d` 2024-03-17 rename filename to file_name (and dir_name) to make it consistent over the code base, also handle cli changes with alias
  - `f24105e` 2024-03-17 rename new_cache to from_backend to make source/intent clearer
  - `0a62645` 2024-03-17 handle fallible location() method
  - `c205d45` 2024-03-17 fix non-self-describing variable names that make it hard to read the code
  - `1ae7a82` 2024-03-17 add more documentation about errors etc
  - `7e0f0ca` 2024-03-17 rename new_node to from_type_and_metadata to make the intent more clear and keep good style
  - `0128764` 2024-03-17 impl Display for Cache
  - `896a14a` 2024-03-17 remove default impl from nodetype as it can be derived
  - `5910c3b` 2024-03-17 impl Debug for Packer
  - `3add91c` 2024-03-17 factor out calculate_pack_size to make it easier testable
  - `2f5d6ea` 2024-03-17 handle TreeArchiver::apply errors and refactor to make it safe against overflows
  - `bf1419f` 2024-03-17 make link_target more consistent over the code base as well
  - `8d2f432` 2024-03-17 use expect to unwrap runtime
  - `1713a01` 2024-03-17 store joinhandle in rclone backend struct and join in Drop impl
  - `a75b4ae` 2024-03-17 warn the user if we shadow their already said rclone user and pass
  - `27a708a` 2024-03-17 cleanup panic docs
  - `35c8fef` 2024-03-17 allow expect for trait method impl
  - `3d9ebb9` 2024-03-17 we allow expect here, because it should always give some and otherwise we would need to create a backoff::Error<reqwest::Error> which is super annoying
  - `d0b0255` 2024-03-17 handle errors in Cache::list_with_size
  - `0439d61` 2024-03-17 bubble up options in TreeIterator
  - `034634b` 2024-03-17 add/remove docs, imports, and derives. derives e.g. serialize for insta test impl
  - `b70e8c0` 2024-03-17 handle option in iter
  - `63a6744` 2024-03-17 Don't panic on file not being able to be deleted.
  - ... 28 more

## stefanwichmann/rustic_core : feat/summary  (ahead 20, behind 145, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `08a66fb` 2024-11-25 feat: update retrieve_from_arc_mutex method to use Self type
  - `f30bb6e` 2024-11-25 feat: add assertions to tests for contains_error method in Summary
  - `68b40c9` 2025-01-12 Merge branch 'main' into feat/summary

## stefanwichmann/rustic_core : feat/summary-check  (ahead 24, behind 170, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `4316068` 2024-11-25 feat: update check_repository and check_cache_files to return Summary and improve concurrency handling
  - `2f5c7bf` 2024-11-25 feat: enhance error handling in check_cache_files to log errors in Summary with IssueScope
  - `fe64fdd` 2024-11-25 feat: enhance summary logging in check_repository and check_hot_files for better error reporting
  - `525e382` 2024-11-25 feat: refactor summary handling in merge and archiver
  - `36b2e9a` 2024-11-25 feat: add clippy lint allowance for check_repository and update test to capture summary
  - `ce08470` 2024-11-25 feat: simplify summary initialization by removing Mutex and using into_arc_mutex
  - `a2aee81` 2024-11-25 feat: streamline summary retrieval by replacing Mutex unwrapping with retrieve_from_arc_mutex

## stefanwichmann/rustic_core : feat/tracing-logging  (ahead 6, behind 200, stars 0)

  - `236ea85` 2024-10-05 feat: replace log with tracing
  - `c9e8292` 2024-10-05 style: cargo fmt
  - `ca56f2d` 2024-10-28 Merge branch 'main' into feat/tracing-logging
  - `62aa898` 2024-10-28 add log feature as default so log and tracing can be used
  - `e95b61b` 2024-10-29 Instrument on:
  - `350eed0` 2024-10-29 add tracing and log feature without feature in core and backend

## stefanwichmann/rustic_core : feature/async_incompatible  (ahead 4, behind 194, stars 0)

  - `d10914b` 2024-11-17 fix: typo
  - `51aed6e` 2024-11-17 feat(backend)!: add is_async_compatible method to ReadBackend and Repository
  - `1554c67` 2024-11-17 feat: impl is_async_incompatible for all backends
  - `b6a3851` 2024-11-17 fix: apply clippy lint

## stefanwichmann/rustic_core : feature/outsource_config  (ahead 1, behind 379, stars 0)

  - `4396390` 2024-02-04 outsource config I

## stefanwichmann/rustic_core : fix/command_input  (ahead 4, behind 223, stars 0)

  - `15e47aa` 2024-10-03 fix(commands): make CommandInput work with file redirects
  - `adcb1ee` 2024-10-04 join on iter, not with shell-split
  - `8e3b412` 2024-10-04 use winsplit, more cases on win, failing
  - `cff8aa7` 2024-10-04 more test cases

## stefanwichmann/rustic_core : fusefs  (ahead 1, behind 306, stars 0)

  - `ad7b125` 2024-02-07 feat: add FuseFs

## stefanwichmann/rustic_core : http-transport  (ahead 1, behind 27, stars 0)

  - `ad256a2` 2026-08-31 chore!: Prefix all http transport options with http-

## stefanwichmann/rustic_core : index-search  (ahead 2, behind 142, stars 0)

  - `51ff8e4` 2025-04-20 add benchmark
  - `cc615b5` 2025-04-24 use interpolation_search for index

## stefanwichmann/rustic_core : lock  (ahead 2, behind 139, stars 0)

  - `1a526bd` 2024-10-05 feat: Add lock_repo command
  - `5c229c5` 2024-10-06 Proposed changes from review

## stefanwichmann/rustic_core : lock-more  (ahead 2, behind 223, stars 0)

  - `14488d4` 2024-10-05 feat: Add lock_repo command
  - `96b8476` 2024-10-05 feat: Add more locking commands

## stefanwichmann/rustic_core : opendal  (ahead 1, behind 122, stars 0)

  - `b757175` 2025-09-12 update opendal

## stefanwichmann/rustic_core : pack-padding  (ahead 29, behind 132, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `839a49c` 2025-06-12 WIP: Use padding for packfiles
  - `8f6ae7e` 2025-06-30 pad by filling up to next 64kiB; correct statistics
  - `b76b12f` 2025-07-02 correct test
  - `d2bdcd4` 2025-07-02 only check for padding blobs in prune if padding option is selected
  - `6a0736a` 2025-07-02 add test without padding
  - `ec01585` 2025-07-02 use padding only for 1 test
  - `e08c823` 2025-07-02 prevent 0-size padding; update comments
  - `7a63042` 2025-07-02 adapt windows tests
  - `7738b70` 2025-07-02 correct padding size computation

## stefanwichmann/rustic_core : read-timeout  (ahead 2, behind 11, stars 0)

  - `62e5c0b` 2026-10-14 feat: add a read-timeout option for http-based backends
  - `51f626a` 2026-10-31 Merge branch 'main' into read-timeout

## stefanwichmann/rustic_core : release-plz-2024-09-10T13-13-47Z  (ahead 1, behind 263, stars 0)

  - `6e7b150` 2024-09-23 chore: release

## stefanwichmann/rustic_core : release-plz-2024-10-02T18-41-54Z  (ahead 1, behind 225, stars 0)

  - `4369057` 2024-10-03 chore: release

## stefanwichmann/rustic_core : release-plz-2024-11-27T10-30-54Z  (ahead 1, behind 165, stars 0)

  - `61f4d8e` 2024-11-27 chore(rustic_backend): release v0.5.2

## stefanwichmann/rustic_core : release-plz-2024-12-11T00-11-58Z  (ahead 1, behind 133, stars 0)

  - `f45b347` 2025-06-29 chore: release

## stefanwichmann/rustic_core : release-plz-2026-08-21T19-55-16Z  (ahead 1, behind 23, stars 0)

  - `5e28688` 2026-09-06 chore: release

## stefanwichmann/rustic_core : renovate/all-actions  (ahead 2, behind 143, stars 0)

  - `18480c9` 2024-12-30 chore(deps): update actions
  - `1b29692` 2025-04-19 Merge branch 'main' into renovate/all-actions

## stefanwichmann/rustic_core : separate-be  (ahead 21, behind 131, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `9555d5b` 2025-08-02 Merge branch 'main' into separate-be

## stefanwichmann/rustic_core : typed_path  (ahead 23, behind 121, stars 0)

  - `3706a32` 2024-12-29 use typed_path
  - `af7037f` 2025-01-11 fix windows build
  - `aff6924` 2025-01-11 more windows fixes
  - `a1f2a33` 2025-01-11 more windows fixes
  - `b8516d2` 2025-01-11 more windows fixes
  - `c71e783` 2025-01-11 more windows fixes
  - `377d52f` 2025-01-12 add util::GlobMatcherExt
  - `d3bb945` 2025-01-12 handle as_path correctly
  - `06b086a` 2025-01-13 fix unix tests
  - `d614f11` 2025-01-13 correctly convert windows into unix path
  - `0803495` 2025-01-13 update windwos snapshots
  - `d127fce` 2025-01-13 update snapshots
  - `04f2e0b` 2025-01-13 remove platform dependency in find snapshots
  - `f4e27f2` 2025-01-13 add util description
  - `3e421ae` 2025-01-13 docu for mod util
  - `219f56c` 2025-01-14 add tests
  - `9401a4e` 2025-01-14 more tests
  - `4655275` 2025-01-19 more util funcs
  - `b6abc4e` 2025-05-23 adaptions to use with rustic
  - `0982644` 2025-05-23 fix windows build
  - `f7bc8a5` 2025-07-07 apply review hints
  - `4a34307` 2025-07-09 make helper funcs public
  - `5db575d` 2025-10-23 adapt check errors

## stefanwichmann/rustic_core : update-cache  (ahead 1, behind 144, stars 0)

  - `0950ed6` 2025-03-05 update Swatinem/rust-cache

## Huge/rustic_core : backend-features  (ahead 10, behind 131, stars 0)

  - `23ee8bd` 2025-07-18 backend: Use features for opendal services
  - `e1c592a` 2025-07-20 update deps
  - `bec33e4` 2025-07-20 remove ftp feature
  - `9681088` 2025-07-20 fix url dep
  - `57d07b9` 2025-07-22 use feature "ci" in pipelines
  - `851993d` 2025-07-22 fix workflows
  - `930aa54` 2025-07-22 add missing licence
  - `40196f4` 2025-07-22 fix deny.toml
  - `6dfcad6` 2025-07-26 use ci features in ci-heavy.yml
  - `f7f48ec` 2025-07-26 Merge branch 'main' into backend-features

## Huge/rustic_core : cache-warnings  (ahead 1, behind 319, stars 0)

  - `773edad` 2024-04-27 fix: Improve warnings in case of cache errors

## Huge/rustic_core : examples-no-crate  (ahead 4, behind 132, stars 0)

  - `68af55e` 2025-07-22 move examples in rustic_core crate
  - `0648ab3` 2025-07-22 fmt and clippy for examples
  - `5cd6ffd` 2025-07-22 clippy for examples
  - `85e78e2` 2025-07-22 clippy for examples

## Huge/rustic_core : feat/error_handling  (ahead 6, behind 222, stars 0)

  - `8e227da` 2024-10-06 feat(errors): add a RusticIssueCollector
  - `0b74f3c` 2024-10-06 add new issue types
  - `ff5ba3c` 2024-10-06 add RusticIssueResult
  - `8d610bd` 2024-10-06 replace RusticIssueResult struct with type alias
  - `d2dfd46` 2024-10-06 reduce visibility to crate public
  - `b74d2bf` 2024-10-06 reduce visibility of methods to crate public

## Huge/rustic_core : feat/remove-unwrap-expect  (ahead 58, behind 326, stars 0)

  - `31b1b9f` 2024-03-17 test: implement more tests and rename tests for consistency
  - `0ef7c22` 2024-03-17 rename trait for checking errors in rest backend
  - `76f2bed` 2024-03-17 implement transpose on ParentResult and some error handling fixes
  - `39089b1` 2024-03-17 fix doc test and export for overwrite zero duration
  - `5ba3c02` 2024-03-17 rework Id/HexId
  - `ad9203b` 2024-03-17 use parking lot
  - `bce58de` 2024-03-17 more errors for error handling
  - `ccca56d` 2024-03-17 rename filename to file_name (and dir_name) to make it consistent over the code base, also handle cli changes with alias
  - `f24105e` 2024-03-17 rename new_cache to from_backend to make source/intent clearer
  - `0a62645` 2024-03-17 handle fallible location() method
  - `c205d45` 2024-03-17 fix non-self-describing variable names that make it hard to read the code
  - `1ae7a82` 2024-03-17 add more documentation about errors etc
  - `7e0f0ca` 2024-03-17 rename new_node to from_type_and_metadata to make the intent more clear and keep good style
  - `0128764` 2024-03-17 impl Display for Cache
  - `896a14a` 2024-03-17 remove default impl from nodetype as it can be derived
  - `5910c3b` 2024-03-17 impl Debug for Packer
  - `3add91c` 2024-03-17 factor out calculate_pack_size to make it easier testable
  - `2f5d6ea` 2024-03-17 handle TreeArchiver::apply errors and refactor to make it safe against overflows
  - `bf1419f` 2024-03-17 make link_target more consistent over the code base as well
  - `8d2f432` 2024-03-17 use expect to unwrap runtime
  - `1713a01` 2024-03-17 store joinhandle in rclone backend struct and join in Drop impl
  - `a75b4ae` 2024-03-17 warn the user if we shadow their already said rclone user and pass
  - `27a708a` 2024-03-17 cleanup panic docs
  - `35c8fef` 2024-03-17 allow expect for trait method impl
  - `3d9ebb9` 2024-03-17 we allow expect here, because it should always give some and otherwise we would need to create a backoff::Error<reqwest::Error> which is super annoying
  - `d0b0255` 2024-03-17 handle errors in Cache::list_with_size
  - `0439d61` 2024-03-17 bubble up options in TreeIterator
  - `034634b` 2024-03-17 add/remove docs, imports, and derives. derives e.g. serialize for insta test impl
  - `b70e8c0` 2024-03-17 handle option in iter
  - `63a6744` 2024-03-17 Don't panic on file not being able to be deleted.
  - ... 28 more

## Huge/rustic_core : feat/summary  (ahead 20, behind 145, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `08a66fb` 2024-11-25 feat: update retrieve_from_arc_mutex method to use Self type
  - `f30bb6e` 2024-11-25 feat: add assertions to tests for contains_error method in Summary
  - `68b40c9` 2025-01-12 Merge branch 'main' into feat/summary

## Huge/rustic_core : feat/summary-check  (ahead 24, behind 170, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `4316068` 2024-11-25 feat: update check_repository and check_cache_files to return Summary and improve concurrency handling
  - `2f5c7bf` 2024-11-25 feat: enhance error handling in check_cache_files to log errors in Summary with IssueScope
  - `fe64fdd` 2024-11-25 feat: enhance summary logging in check_repository and check_hot_files for better error reporting
  - `525e382` 2024-11-25 feat: refactor summary handling in merge and archiver
  - `36b2e9a` 2024-11-25 feat: add clippy lint allowance for check_repository and update test to capture summary
  - `ce08470` 2024-11-25 feat: simplify summary initialization by removing Mutex and using into_arc_mutex
  - `a2aee81` 2024-11-25 feat: streamline summary retrieval by replacing Mutex unwrapping with retrieve_from_arc_mutex

## Huge/rustic_core : feat/tracing-logging  (ahead 6, behind 200, stars 0)

  - `236ea85` 2024-10-05 feat: replace log with tracing
  - `c9e8292` 2024-10-05 style: cargo fmt
  - `ca56f2d` 2024-10-28 Merge branch 'main' into feat/tracing-logging
  - `62aa898` 2024-10-28 add log feature as default so log and tracing can be used
  - `e95b61b` 2024-10-29 Instrument on:
  - `350eed0` 2024-10-29 add tracing and log feature without feature in core and backend

## Huge/rustic_core : feature/async_incompatible  (ahead 4, behind 194, stars 0)

  - `d10914b` 2024-11-17 fix: typo
  - `51aed6e` 2024-11-17 feat(backend)!: add is_async_compatible method to ReadBackend and Repository
  - `1554c67` 2024-11-17 feat: impl is_async_incompatible for all backends
  - `b6a3851` 2024-11-17 fix: apply clippy lint

## Huge/rustic_core : feature/outsource_config  (ahead 1, behind 379, stars 0)

  - `4396390` 2024-02-04 outsource config I

## Huge/rustic_core : fix/blob-copier-bounds-check  (ahead 2, behind 22, stars 0)

  - `c1490b4` 2026-10-06 fix(packer): validate blob offsets and bounds in BlobCopier
  - `6d07a77` 2026-10-30 Merge branch 'main' into fix/blob-copier-bounds-check

## Huge/rustic_core : fix/blob-location-data-length-underflow  (ahead 2, behind 22, stars 0)

  - `0f025e6` 2026-10-06 fix: don't underflow in BlobLocation::data_length
  - `f3a3470` 2026-10-30 Merge branch 'main' into fix/blob-location-data-length-underflow

## Huge/rustic_core : fix/blob-locations-coalesce-overflow  (ahead 2, behind 22, stars 0)

  - `7192c6e` 2026-10-06 fix: don't overflow in BlobLocations::can_coalesce
  - `bbeddba` 2026-10-30 Merge branch 'main' into fix/blob-locations-coalesce-overflow

## Huge/rustic_core : fix/command_input  (ahead 4, behind 223, stars 0)

  - `15e47aa` 2024-10-03 fix(commands): make CommandInput work with file redirects
  - `adcb1ee` 2024-10-04 join on iter, not with shell-split
  - `8e3b412` 2024-10-04 use winsplit, more cases on win, failing
  - `cff8aa7` 2024-10-04 more test cases

## Huge/rustic_core : fix/keyfile-scrypt-limits  (ahead 2, behind 22, stars 0)

  - `a14e636` 2026-10-07 fix: reject key files with invalid or excessive scrypt parameters
  - `ba6338b` 2026-10-30 Merge branch 'main' into fix/keyfile-scrypt-limits

## Huge/rustic_core : fix/local-destination-path-traversal  (ahead 2, behind 22, stars 0)

  - `50c6fee` 2026-10-06 fix(restore): prevent path traversal in LocalDestination
  - `6404d54` 2026-10-30 Merge branch 'main' into fix/local-destination-path-traversal

## Huge/rustic_core : fix/localsource-empty-backup-paths  (ahead 1, behind 23, stars 0)

  - `d136d3e` 2026-10-27 fix: validate non-empty backup paths in LocalSource::new

## Huge/rustic_core : fix/prune-dir-missing-subtree  (ahead 2, behind 12, stars 0)

  - `b8b2955` 2026-10-06 fix(prune): safely handle directory nodes without subtree in find_used_blobs
  - `7deb800` 2026-10-31 import Node

## Huge/rustic_core : fix/repair-snapshots-missing-content  (ahead 2, behind 22, stars 0)

  - `ee05200` 2026-10-06 fix(repair): safely handle file nodes with missing content in repair snapshots
  - `511a831` 2026-10-30 Merge branch 'main' into fix/repair-snapshots-missing-content

## Huge/rustic_core : fix/tree-dir-missing-subtree  (ahead 3, behind 22, stars 0)

  - `76c1085` 2026-10-06 fix(tree): safely handle directory nodes without subtree in NodeStreamer and merge_nodes
  - `62f7d6c` 2026-10-30 Merge branch 'main' into fix/tree-dir-missing-subtree
  - `b538bec` 2026-10-30 fix test

## Huge/rustic_core : fusefs  (ahead 1, behind 306, stars 0)

  - `ad7b125` 2024-02-07 feat: add FuseFs

## Huge/rustic_core : http-transport  (ahead 1, behind 27, stars 0)

  - `ad256a2` 2026-08-31 chore!: Prefix all http transport options with http-

## Huge/rustic_core : index-search  (ahead 2, behind 142, stars 0)

  - `51ff8e4` 2025-04-20 add benchmark
  - `cc615b5` 2025-04-24 use interpolation_search for index

## Huge/rustic_core : lock  (ahead 2, behind 139, stars 0)

  - `1a526bd` 2024-10-05 feat: Add lock_repo command
  - `5c229c5` 2024-10-06 Proposed changes from review

## Huge/rustic_core : lock-more  (ahead 2, behind 223, stars 0)

  - `14488d4` 2024-10-05 feat: Add lock_repo command
  - `96b8476` 2024-10-05 feat: Add more locking commands

## Huge/rustic_core : opendal  (ahead 1, behind 122, stars 0)

  - `b757175` 2025-09-12 update opendal

## Huge/rustic_core : pack-padding  (ahead 29, behind 132, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `839a49c` 2025-06-12 WIP: Use padding for packfiles
  - `8f6ae7e` 2025-06-30 pad by filling up to next 64kiB; correct statistics
  - `b76b12f` 2025-07-02 correct test
  - `d2bdcd4` 2025-07-02 only check for padding blobs in prune if padding option is selected
  - `6a0736a` 2025-07-02 add test without padding
  - `ec01585` 2025-07-02 use padding only for 1 test
  - `e08c823` 2025-07-02 prevent 0-size padding; update comments
  - `7a63042` 2025-07-02 adapt windows tests
  - `7738b70` 2025-07-02 correct padding size computation

## Huge/rustic_core : release-plz-2024-09-10T13-13-47Z  (ahead 1, behind 263, stars 0)

  - `6e7b150` 2024-09-23 chore: release

## Huge/rustic_core : release-plz-2024-10-02T18-41-54Z  (ahead 1, behind 225, stars 0)

  - `4369057` 2024-10-03 chore: release

## Huge/rustic_core : release-plz-2024-11-27T10-30-54Z  (ahead 1, behind 165, stars 0)

  - `61f4d8e` 2024-11-27 chore(rustic_backend): release v0.5.2

## Huge/rustic_core : release-plz-2024-12-11T00-11-58Z  (ahead 1, behind 133, stars 0)

  - `f45b347` 2025-06-29 chore: release

## Huge/rustic_core : release-plz-2026-08-21T19-55-16Z  (ahead 1, behind 23, stars 0)

  - `5e28688` 2026-09-06 chore: release

## Huge/rustic_core : renovate/all-actions  (ahead 2, behind 143, stars 0)

  - `18480c9` 2024-12-30 chore(deps): update actions
  - `1b29692` 2025-04-19 Merge branch 'main' into renovate/all-actions

## Huge/rustic_core : separate-be  (ahead 21, behind 131, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `9555d5b` 2025-08-02 Merge branch 'main' into separate-be

## Huge/rustic_core : typed_path  (ahead 23, behind 121, stars 0)

  - `3706a32` 2024-12-29 use typed_path
  - `af7037f` 2025-01-11 fix windows build
  - `aff6924` 2025-01-11 more windows fixes
  - `a1f2a33` 2025-01-11 more windows fixes
  - `b8516d2` 2025-01-11 more windows fixes
  - `c71e783` 2025-01-11 more windows fixes
  - `377d52f` 2025-01-12 add util::GlobMatcherExt
  - `d3bb945` 2025-01-12 handle as_path correctly
  - `06b086a` 2025-01-13 fix unix tests
  - `d614f11` 2025-01-13 correctly convert windows into unix path
  - `0803495` 2025-01-13 update windwos snapshots
  - `d127fce` 2025-01-13 update snapshots
  - `04f2e0b` 2025-01-13 remove platform dependency in find snapshots
  - `f4e27f2` 2025-01-13 add util description
  - `3e421ae` 2025-01-13 docu for mod util
  - `219f56c` 2025-01-14 add tests
  - `9401a4e` 2025-01-14 more tests
  - `4655275` 2025-01-19 more util funcs
  - `b6abc4e` 2025-05-23 adaptions to use with rustic
  - `0982644` 2025-05-23 fix windows build
  - `f7bc8a5` 2025-07-07 apply review hints
  - `4a34307` 2025-07-09 make helper funcs public
  - `5db575d` 2025-10-23 adapt check errors

## Huge/rustic_core : update-cache  (ahead 1, behind 144, stars 0)

  - `0950ed6` 2025-03-05 update Swatinem/rust-cache

## db3l/rustic_core : concurrency  (ahead 3, behind 5, stars 0)

  - `0874755` 2026-09-11 Core changes for concurrency management
  - `553496d` 2026-09-11 Concurrency support for backend, archiver and blob operations
  - `9371785` 2026-09-11 Concurrency support for commands

## orangecms/rustic_core : backup-docs  (ahead 1, behind 0, stars 0)

  - `3527267` 2026-09-29 core/commands/backup: WIP: fix up documentation on archive()/backup_paths

## orangecms/rustic_core : walk-parallel  (ahead 1, behind 23, stars 0)

  - `222388b` 2026-09-30 core/backend/ignore: walk directories in parallel

## magrathean-uk/rustic_core : backend-features  (ahead 10, behind 131, stars 0)

  - `23ee8bd` 2025-07-18 backend: Use features for opendal services
  - `e1c592a` 2025-07-20 update deps
  - `bec33e4` 2025-07-20 remove ftp feature
  - `9681088` 2025-07-20 fix url dep
  - `57d07b9` 2025-07-22 use feature "ci" in pipelines
  - `851993d` 2025-07-22 fix workflows
  - `930aa54` 2025-07-22 add missing licence
  - `40196f4` 2025-07-22 fix deny.toml
  - `6dfcad6` 2025-07-26 use ci features in ci-heavy.yml
  - `f7f48ec` 2025-07-26 Merge branch 'main' into backend-features

## magrathean-uk/rustic_core : cache-warnings  (ahead 1, behind 319, stars 0)

  - `773edad` 2024-04-27 fix: Improve warnings in case of cache errors

## magrathean-uk/rustic_core : examples-no-crate  (ahead 4, behind 132, stars 0)

  - `68af55e` 2025-07-22 move examples in rustic_core crate
  - `0648ab3` 2025-07-22 fmt and clippy for examples
  - `5cd6ffd` 2025-07-22 clippy for examples
  - `85e78e2` 2025-07-22 clippy for examples

## magrathean-uk/rustic_core : feat/error_handling  (ahead 6, behind 222, stars 0)

  - `8e227da` 2024-10-06 feat(errors): add a RusticIssueCollector
  - `0b74f3c` 2024-10-06 add new issue types
  - `ff5ba3c` 2024-10-06 add RusticIssueResult
  - `8d610bd` 2024-10-06 replace RusticIssueResult struct with type alias
  - `d2dfd46` 2024-10-06 reduce visibility to crate public
  - `b74d2bf` 2024-10-06 reduce visibility of methods to crate public

## magrathean-uk/rustic_core : feat/remove-unwrap-expect  (ahead 58, behind 326, stars 0)

  - `31b1b9f` 2024-03-17 test: implement more tests and rename tests for consistency
  - `0ef7c22` 2024-03-17 rename trait for checking errors in rest backend
  - `76f2bed` 2024-03-17 implement transpose on ParentResult and some error handling fixes
  - `39089b1` 2024-03-17 fix doc test and export for overwrite zero duration
  - `5ba3c02` 2024-03-17 rework Id/HexId
  - `ad9203b` 2024-03-17 use parking lot
  - `bce58de` 2024-03-17 more errors for error handling
  - `ccca56d` 2024-03-17 rename filename to file_name (and dir_name) to make it consistent over the code base, also handle cli changes with alias
  - `f24105e` 2024-03-17 rename new_cache to from_backend to make source/intent clearer
  - `0a62645` 2024-03-17 handle fallible location() method
  - `c205d45` 2024-03-17 fix non-self-describing variable names that make it hard to read the code
  - `1ae7a82` 2024-03-17 add more documentation about errors etc
  - `7e0f0ca` 2024-03-17 rename new_node to from_type_and_metadata to make the intent more clear and keep good style
  - `0128764` 2024-03-17 impl Display for Cache
  - `896a14a` 2024-03-17 remove default impl from nodetype as it can be derived
  - `5910c3b` 2024-03-17 impl Debug for Packer
  - `3add91c` 2024-03-17 factor out calculate_pack_size to make it easier testable
  - `2f5d6ea` 2024-03-17 handle TreeArchiver::apply errors and refactor to make it safe against overflows
  - `bf1419f` 2024-03-17 make link_target more consistent over the code base as well
  - `8d2f432` 2024-03-17 use expect to unwrap runtime
  - `1713a01` 2024-03-17 store joinhandle in rclone backend struct and join in Drop impl
  - `a75b4ae` 2024-03-17 warn the user if we shadow their already said rclone user and pass
  - `27a708a` 2024-03-17 cleanup panic docs
  - `35c8fef` 2024-03-17 allow expect for trait method impl
  - `3d9ebb9` 2024-03-17 we allow expect here, because it should always give some and otherwise we would need to create a backoff::Error<reqwest::Error> which is super annoying
  - `d0b0255` 2024-03-17 handle errors in Cache::list_with_size
  - `0439d61` 2024-03-17 bubble up options in TreeIterator
  - `034634b` 2024-03-17 add/remove docs, imports, and derives. derives e.g. serialize for insta test impl
  - `b70e8c0` 2024-03-17 handle option in iter
  - `63a6744` 2024-03-17 Don't panic on file not being able to be deleted.
  - ... 28 more

## magrathean-uk/rustic_core : feat/summary  (ahead 20, behind 145, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `08a66fb` 2024-11-25 feat: update retrieve_from_arc_mutex method to use Self type
  - `f30bb6e` 2024-11-25 feat: add assertions to tests for contains_error method in Summary
  - `68b40c9` 2025-01-12 Merge branch 'main' into feat/summary

## magrathean-uk/rustic_core : feat/summary-check  (ahead 24, behind 170, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `4316068` 2024-11-25 feat: update check_repository and check_cache_files to return Summary and improve concurrency handling
  - `2f5c7bf` 2024-11-25 feat: enhance error handling in check_cache_files to log errors in Summary with IssueScope
  - `fe64fdd` 2024-11-25 feat: enhance summary logging in check_repository and check_hot_files for better error reporting
  - `525e382` 2024-11-25 feat: refactor summary handling in merge and archiver
  - `36b2e9a` 2024-11-25 feat: add clippy lint allowance for check_repository and update test to capture summary
  - `ce08470` 2024-11-25 feat: simplify summary initialization by removing Mutex and using into_arc_mutex
  - `a2aee81` 2024-11-25 feat: streamline summary retrieval by replacing Mutex unwrapping with retrieve_from_arc_mutex

## magrathean-uk/rustic_core : feat/tracing-logging  (ahead 6, behind 200, stars 0)

  - `236ea85` 2024-10-05 feat: replace log with tracing
  - `c9e8292` 2024-10-05 style: cargo fmt
  - `ca56f2d` 2024-10-28 Merge branch 'main' into feat/tracing-logging
  - `62aa898` 2024-10-28 add log feature as default so log and tracing can be used
  - `e95b61b` 2024-10-29 Instrument on:
  - `350eed0` 2024-10-29 add tracing and log feature without feature in core and backend

## magrathean-uk/rustic_core : feature/async_incompatible  (ahead 4, behind 194, stars 0)

  - `d10914b` 2024-11-17 fix: typo
  - `51aed6e` 2024-11-17 feat(backend)!: add is_async_compatible method to ReadBackend and Repository
  - `1554c67` 2024-11-17 feat: impl is_async_incompatible for all backends
  - `b6a3851` 2024-11-17 fix: apply clippy lint

## magrathean-uk/rustic_core : feature/outsource_config  (ahead 1, behind 379, stars 0)

  - `4396390` 2024-02-04 outsource config I

## magrathean-uk/rustic_core : fix/command_input  (ahead 4, behind 223, stars 0)

  - `15e47aa` 2024-10-03 fix(commands): make CommandInput work with file redirects
  - `adcb1ee` 2024-10-04 join on iter, not with shell-split
  - `8e3b412` 2024-10-04 use winsplit, more cases on win, failing
  - `cff8aa7` 2024-10-04 more test cases

## magrathean-uk/rustic_core : fix/564-1914-restore-errors  (ahead 1, behind 23, stars 0)

  - `17a8004` 2026-09-27 Propagate restore I/O failures without panicking

## magrathean-uk/rustic_core : fix/1157-empty-source-dir  (ahead 1, behind 23, stars 0)

  - `84b0cc9` 2026-09-27 Preserve empty source directories in backups

## magrathean-uk/rustic_core : fix/1905-multi-source-as-path  (ahead 1, behind 23, stars 0)

  - `3134d7b` 2026-09-27 Reject as-path with multiple backup sources

## magrathean-uk/rustic_core : fusefs  (ahead 1, behind 306, stars 0)

  - `ad7b125` 2024-02-07 feat: add FuseFs

## magrathean-uk/rustic_core : http-transport  (ahead 1, behind 27, stars 0)

  - `ad256a2` 2026-08-31 chore!: Prefix all http transport options with http-

## magrathean-uk/rustic_core : index-search  (ahead 2, behind 142, stars 0)

  - `51ff8e4` 2025-04-20 add benchmark
  - `cc615b5` 2025-04-24 use interpolation_search for index

## magrathean-uk/rustic_core : lock  (ahead 2, behind 139, stars 0)

  - `1a526bd` 2024-10-05 feat: Add lock_repo command
  - `5c229c5` 2024-10-06 Proposed changes from review

## magrathean-uk/rustic_core : lock-more  (ahead 2, behind 223, stars 0)

  - `14488d4` 2024-10-05 feat: Add lock_repo command
  - `96b8476` 2024-10-05 feat: Add more locking commands

## magrathean-uk/rustic_core : main  (ahead 1, behind 23, stars 0)

  - `fb36670` 2026-10-23 Update compatible dependencies and retire Dependabot

## magrathean-uk/rustic_core : opendal  (ahead 1, behind 122, stars 0)

  - `b757175` 2025-09-12 update opendal

## magrathean-uk/rustic_core : pack-padding  (ahead 29, behind 132, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `839a49c` 2025-06-12 WIP: Use padding for packfiles
  - `8f6ae7e` 2025-06-30 pad by filling up to next 64kiB; correct statistics
  - `b76b12f` 2025-07-02 correct test
  - `d2bdcd4` 2025-07-02 only check for padding blobs in prune if padding option is selected
  - `6a0736a` 2025-07-02 add test without padding
  - `ec01585` 2025-07-02 use padding only for 1 test
  - `e08c823` 2025-07-02 prevent 0-size padding; update comments
  - `7a63042` 2025-07-02 adapt windows tests
  - `7738b70` 2025-07-02 correct padding size computation

## magrathean-uk/rustic_core : release-plz-2024-09-10T13-13-47Z  (ahead 1, behind 263, stars 0)

  - `6e7b150` 2024-09-23 chore: release

## magrathean-uk/rustic_core : release-plz-2024-10-02T18-41-54Z  (ahead 1, behind 225, stars 0)

  - `4369057` 2024-10-03 chore: release

## magrathean-uk/rustic_core : release-plz-2024-11-27T10-30-54Z  (ahead 1, behind 165, stars 0)

  - `61f4d8e` 2024-11-27 chore(rustic_backend): release v0.5.2

## magrathean-uk/rustic_core : release-plz-2024-12-11T00-11-58Z  (ahead 1, behind 133, stars 0)

  - `f45b347` 2025-06-29 chore: release

## magrathean-uk/rustic_core : release-plz-2026-08-21T19-55-16Z  (ahead 1, behind 23, stars 0)

  - `5e28688` 2026-09-06 chore: release

## magrathean-uk/rustic_core : renovate/all-actions  (ahead 2, behind 143, stars 0)

  - `18480c9` 2024-12-30 chore(deps): update actions
  - `1b29692` 2025-04-19 Merge branch 'main' into renovate/all-actions

## magrathean-uk/rustic_core : separate-be  (ahead 21, behind 131, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `9555d5b` 2025-08-02 Merge branch 'main' into separate-be

## magrathean-uk/rustic_core : typed_path  (ahead 23, behind 121, stars 0)

  - `3706a32` 2024-12-29 use typed_path
  - `af7037f` 2025-01-11 fix windows build
  - `aff6924` 2025-01-11 more windows fixes
  - `a1f2a33` 2025-01-11 more windows fixes
  - `b8516d2` 2025-01-11 more windows fixes
  - `c71e783` 2025-01-11 more windows fixes
  - `377d52f` 2025-01-12 add util::GlobMatcherExt
  - `d3bb945` 2025-01-12 handle as_path correctly
  - `06b086a` 2025-01-13 fix unix tests
  - `d614f11` 2025-01-13 correctly convert windows into unix path
  - `0803495` 2025-01-13 update windwos snapshots
  - `d127fce` 2025-01-13 update snapshots
  - `04f2e0b` 2025-01-13 remove platform dependency in find snapshots
  - `f4e27f2` 2025-01-13 add util description
  - `3e421ae` 2025-01-13 docu for mod util
  - `219f56c` 2025-01-14 add tests
  - `9401a4e` 2025-01-14 more tests
  - `4655275` 2025-01-19 more util funcs
  - `b6abc4e` 2025-05-23 adaptions to use with rustic
  - `0982644` 2025-05-23 fix windows build
  - `f7bc8a5` 2025-07-07 apply review hints
  - `4a34307` 2025-07-09 make helper funcs public
  - `5db575d` 2025-10-23 adapt check errors

## magrathean-uk/rustic_core : update-cache  (ahead 1, behind 144, stars 0)

  - `0950ed6` 2025-03-05 update Swatinem/rust-cache

## golemcloud/rustic_core : backend-features  (ahead 10, behind 131, stars 0)

  - `23ee8bd` 2025-07-18 backend: Use features for opendal services
  - `e1c592a` 2025-07-20 update deps
  - `bec33e4` 2025-07-20 remove ftp feature
  - `9681088` 2025-07-20 fix url dep
  - `57d07b9` 2025-07-22 use feature "ci" in pipelines
  - `851993d` 2025-07-22 fix workflows
  - `930aa54` 2025-07-22 add missing licence
  - `40196f4` 2025-07-22 fix deny.toml
  - `6dfcad6` 2025-07-26 use ci features in ci-heavy.yml
  - `f7f48ec` 2025-07-26 Merge branch 'main' into backend-features

## golemcloud/rustic_core : cache-warnings  (ahead 1, behind 319, stars 0)

  - `773edad` 2024-04-27 fix: Improve warnings in case of cache errors

## golemcloud/rustic_core : examples-no-crate  (ahead 4, behind 132, stars 0)

  - `68af55e` 2025-07-22 move examples in rustic_core crate
  - `0648ab3` 2025-07-22 fmt and clippy for examples
  - `5cd6ffd` 2025-07-22 clippy for examples
  - `85e78e2` 2025-07-22 clippy for examples

## golemcloud/rustic_core : feat/error_handling  (ahead 6, behind 222, stars 0)

  - `8e227da` 2024-10-06 feat(errors): add a RusticIssueCollector
  - `0b74f3c` 2024-10-06 add new issue types
  - `ff5ba3c` 2024-10-06 add RusticIssueResult
  - `8d610bd` 2024-10-06 replace RusticIssueResult struct with type alias
  - `d2dfd46` 2024-10-06 reduce visibility to crate public
  - `b74d2bf` 2024-10-06 reduce visibility of methods to crate public

## golemcloud/rustic_core : feat/remove-unwrap-expect  (ahead 58, behind 326, stars 0)

  - `31b1b9f` 2024-03-17 test: implement more tests and rename tests for consistency
  - `0ef7c22` 2024-03-17 rename trait for checking errors in rest backend
  - `76f2bed` 2024-03-17 implement transpose on ParentResult and some error handling fixes
  - `39089b1` 2024-03-17 fix doc test and export for overwrite zero duration
  - `5ba3c02` 2024-03-17 rework Id/HexId
  - `ad9203b` 2024-03-17 use parking lot
  - `bce58de` 2024-03-17 more errors for error handling
  - `ccca56d` 2024-03-17 rename filename to file_name (and dir_name) to make it consistent over the code base, also handle cli changes with alias
  - `f24105e` 2024-03-17 rename new_cache to from_backend to make source/intent clearer
  - `0a62645` 2024-03-17 handle fallible location() method
  - `c205d45` 2024-03-17 fix non-self-describing variable names that make it hard to read the code
  - `1ae7a82` 2024-03-17 add more documentation about errors etc
  - `7e0f0ca` 2024-03-17 rename new_node to from_type_and_metadata to make the intent more clear and keep good style
  - `0128764` 2024-03-17 impl Display for Cache
  - `896a14a` 2024-03-17 remove default impl from nodetype as it can be derived
  - `5910c3b` 2024-03-17 impl Debug for Packer
  - `3add91c` 2024-03-17 factor out calculate_pack_size to make it easier testable
  - `2f5d6ea` 2024-03-17 handle TreeArchiver::apply errors and refactor to make it safe against overflows
  - `bf1419f` 2024-03-17 make link_target more consistent over the code base as well
  - `8d2f432` 2024-03-17 use expect to unwrap runtime
  - `1713a01` 2024-03-17 store joinhandle in rclone backend struct and join in Drop impl
  - `a75b4ae` 2024-03-17 warn the user if we shadow their already said rclone user and pass
  - `27a708a` 2024-03-17 cleanup panic docs
  - `35c8fef` 2024-03-17 allow expect for trait method impl
  - `3d9ebb9` 2024-03-17 we allow expect here, because it should always give some and otherwise we would need to create a backoff::Error<reqwest::Error> which is super annoying
  - `d0b0255` 2024-03-17 handle errors in Cache::list_with_size
  - `0439d61` 2024-03-17 bubble up options in TreeIterator
  - `034634b` 2024-03-17 add/remove docs, imports, and derives. derives e.g. serialize for insta test impl
  - `b70e8c0` 2024-03-17 handle option in iter
  - `63a6744` 2024-03-17 Don't panic on file not being able to be deleted.
  - ... 28 more

## golemcloud/rustic_core : feat/summary  (ahead 20, behind 145, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `08a66fb` 2024-11-25 feat: update retrieve_from_arc_mutex method to use Self type
  - `f30bb6e` 2024-11-25 feat: add assertions to tests for contains_error method in Summary
  - `68b40c9` 2025-01-12 Merge branch 'main' into feat/summary

## golemcloud/rustic_core : feat/summary-check  (ahead 24, behind 170, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `4316068` 2024-11-25 feat: update check_repository and check_cache_files to return Summary and improve concurrency handling
  - `2f5c7bf` 2024-11-25 feat: enhance error handling in check_cache_files to log errors in Summary with IssueScope
  - `fe64fdd` 2024-11-25 feat: enhance summary logging in check_repository and check_hot_files for better error reporting
  - `525e382` 2024-11-25 feat: refactor summary handling in merge and archiver
  - `36b2e9a` 2024-11-25 feat: add clippy lint allowance for check_repository and update test to capture summary
  - `ce08470` 2024-11-25 feat: simplify summary initialization by removing Mutex and using into_arc_mutex
  - `a2aee81` 2024-11-25 feat: streamline summary retrieval by replacing Mutex unwrapping with retrieve_from_arc_mutex

## golemcloud/rustic_core : feat/tracing-logging  (ahead 6, behind 200, stars 0)

  - `236ea85` 2024-10-05 feat: replace log with tracing
  - `c9e8292` 2024-10-05 style: cargo fmt
  - `ca56f2d` 2024-10-28 Merge branch 'main' into feat/tracing-logging
  - `62aa898` 2024-10-28 add log feature as default so log and tracing can be used
  - `e95b61b` 2024-10-29 Instrument on:
  - `350eed0` 2024-10-29 add tracing and log feature without feature in core and backend

## golemcloud/rustic_core : feature/async_incompatible  (ahead 4, behind 194, stars 0)

  - `d10914b` 2024-11-17 fix: typo
  - `51aed6e` 2024-11-17 feat(backend)!: add is_async_compatible method to ReadBackend and Repository
  - `1554c67` 2024-11-17 feat: impl is_async_incompatible for all backends
  - `b6a3851` 2024-11-17 fix: apply clippy lint

## golemcloud/rustic_core : feature/outsource_config  (ahead 1, behind 379, stars 0)

  - `4396390` 2024-02-04 outsource config I

## golemcloud/rustic_core : fix/command_input  (ahead 4, behind 223, stars 0)

  - `15e47aa` 2024-10-03 fix(commands): make CommandInput work with file redirects
  - `adcb1ee` 2024-10-04 join on iter, not with shell-split
  - `8e3b412` 2024-10-04 use winsplit, more cases on win, failing
  - `cff8aa7` 2024-10-04 more test cases

## golemcloud/rustic_core : fusefs  (ahead 1, behind 306, stars 0)

  - `ad7b125` 2024-02-07 feat: add FuseFs

## golemcloud/rustic_core : gol-599-restore-prune-errors  (ahead 22, behind 35, stars 0)

  - `1578f52` 2026-09-15 test: add fault injection backend and panic=abort test crate
  - `c5cf478` 2026-09-15 fix: return the first error of the restore content phase
  - `ba2313e` 2026-09-15 test: check that restore returns content phase errors
  - `13019de` 2026-09-15 fix: stop tree workers after receiver closes (#546)
  - `037b5ae` 2026-09-15 test: check that prune returns tree read errors without a panic
  - `5623d8e` 2026-09-15 test: check a sparse restore of a file that ends in zeros
  - `f2c4763` 2026-09-15 docs: simplify the FirstError and restore_contents doc comments
  - `e6ee7e5` 2026-09-15 test: use boxed forms and plain doc comments in fault test support
  - `d667a29` 2026-09-15 docs: describe how restore_contents stops after the first error
  - `24317dc` 2026-09-15 test: clarify the fault test docs and the set_length check
  - `20c0ad5` 2026-09-15 docs: name the thread pool error in the restore_contents docs
  - `1a0525e` 2026-09-15 test: say backend calls in the fault injection docs
  - `f3bd989` 2026-09-18 test: add a truncating fault and a cache-enabled fixture
  - `e840fa3` 2026-09-18 fix: return an error when a backend read is short
  - `610c5d4` 2026-09-18 fix: check the blob range before slicing pack data
  - `29dd047` 2026-09-18 fix: return an error for a directory node without a subtree
  - `eb2d73f` 2026-09-18 fix: guard the unused limit against a full percentage
  - `093f4d3` 2026-09-18 fix: return an error when the index is still in use
  - `ae7b16c` 2026-09-18 fix: validate the key lengths before building a key
  - `7eb1bea` 2026-09-18 fix: do not panic in the rclone drop and reader thread
  - `24e5cf9` 2026-09-18 test: check the new error paths
  - `c2a1ec0` 2026-09-18 test: pin the cache range check and the repack decision

## golemcloud/rustic_core : gol-601-strict-backup-metadata-threads  (ahead 29, behind 35, stars 0)

  - `1578f52` 2026-09-15 test: add fault injection backend and panic=abort test crate
  - `c5cf478` 2026-09-15 fix: return the first error of the restore content phase
  - `ba2313e` 2026-09-15 test: check that restore returns content phase errors
  - `13019de` 2026-09-15 fix: stop tree workers after receiver closes (#546)
  - `037b5ae` 2026-09-15 test: check that prune returns tree read errors without a panic
  - `5623d8e` 2026-09-15 test: check a sparse restore of a file that ends in zeros
  - `f2c4763` 2026-09-15 docs: simplify the FirstError and restore_contents doc comments
  - `e6ee7e5` 2026-09-15 test: use boxed forms and plain doc comments in fault test support
  - `d667a29` 2026-09-15 docs: describe how restore_contents stops after the first error
  - `24317dc` 2026-09-15 test: clarify the fault test docs and the set_length check
  - `20c0ad5` 2026-09-15 docs: name the thread pool error in the restore_contents docs
  - `1a0525e` 2026-09-15 test: say backend calls in the fault injection docs
  - `f3bd989` 2026-09-18 test: add a truncating fault and a cache-enabled fixture
  - `e840fa3` 2026-09-18 fix: return an error when a backend read is short
  - `610c5d4` 2026-09-18 fix: check the blob range before slicing pack data
  - `29dd047` 2026-09-18 fix: return an error for a directory node without a subtree
  - `eb2d73f` 2026-09-18 fix: guard the unused limit against a full percentage
  - `093f4d3` 2026-09-18 fix: return an error when the index is still in use
  - `ae7b16c` 2026-09-18 fix: validate the key lengths before building a key
  - `7eb1bea` 2026-09-18 fix: do not panic in the rclone drop and reader thread
  - `24e5cf9` 2026-09-18 test: check the new error paths
  - `c2a1ec0` 2026-09-18 test: pin the cache range check and the repack decision
  - `d1c9d77` 2026-09-21 feat: add an option to fail a backup on an unreadable entry
  - `12e960b` 2026-09-21 feat: add an option to return restore metadata errors
  - `0b36fe5` 2026-09-21 feat: add an option for the number of restore threads
  - `e9d37e2` 2026-09-21 test: return errors from the in-memory backend for missing files and ranges
  - `f4e6eaf` 2026-09-21 test: check the strict backup, metadata errors and restore threads
  - `612a7bc` 2026-09-21 test: add a property test with random faults
  - `b4ee922` 2026-09-21 test: check that a restore sets directory metadata after the entries

## golemcloud/rustic_core : gol-650-xattr-security-namespace  (ahead 31, behind 35, stars 0)

  - `1578f52` 2026-09-15 test: add fault injection backend and panic=abort test crate
  - `c5cf478` 2026-09-15 fix: return the first error of the restore content phase
  - `ba2313e` 2026-09-15 test: check that restore returns content phase errors
  - `13019de` 2026-09-15 fix: stop tree workers after receiver closes (#546)
  - `037b5ae` 2026-09-15 test: check that prune returns tree read errors without a panic
  - `5623d8e` 2026-09-15 test: check a sparse restore of a file that ends in zeros
  - `f2c4763` 2026-09-15 docs: simplify the FirstError and restore_contents doc comments
  - `e6ee7e5` 2026-09-15 test: use boxed forms and plain doc comments in fault test support
  - `d667a29` 2026-09-15 docs: describe how restore_contents stops after the first error
  - `24317dc` 2026-09-15 test: clarify the fault test docs and the set_length check
  - `20c0ad5` 2026-09-15 docs: name the thread pool error in the restore_contents docs
  - `1a0525e` 2026-09-15 test: say backend calls in the fault injection docs
  - `f3bd989` 2026-09-18 test: add a truncating fault and a cache-enabled fixture
  - `e840fa3` 2026-09-18 fix: return an error when a backend read is short
  - `610c5d4` 2026-09-18 fix: check the blob range before slicing pack data
  - `29dd047` 2026-09-18 fix: return an error for a directory node without a subtree
  - `eb2d73f` 2026-09-18 fix: guard the unused limit against a full percentage
  - `093f4d3` 2026-09-18 fix: return an error when the index is still in use
  - `ae7b16c` 2026-09-18 fix: validate the key lengths before building a key
  - `7eb1bea` 2026-09-18 fix: do not panic in the rclone drop and reader thread
  - `24e5cf9` 2026-09-18 test: check the new error paths
  - `c2a1ec0` 2026-09-18 test: pin the cache range check and the repack decision
  - `d1c9d77` 2026-09-21 feat: add an option to fail a backup on an unreadable entry
  - `12e960b` 2026-09-21 feat: add an option to return restore metadata errors
  - `0b36fe5` 2026-09-21 feat: add an option for the number of restore threads
  - `e9d37e2` 2026-09-21 test: return errors from the in-memory backend for missing files and ranges
  - `f4e6eaf` 2026-09-21 test: check the strict backup, metadata errors and restore threads
  - `612a7bc` 2026-09-21 test: add a property test with random faults
  - `b4ee922` 2026-09-21 test: check that a restore sets directory metadata after the entries
  - `415ade2` 2026-09-22 feat: keep a kernel-owned extended attribute from failing a restore
  - ... 1 more

## golemcloud/rustic_core : gol-651-save-thread-count  (ahead 33, behind 35, stars 0)

  - `1578f52` 2026-09-15 test: add fault injection backend and panic=abort test crate
  - `c5cf478` 2026-09-15 fix: return the first error of the restore content phase
  - `ba2313e` 2026-09-15 test: check that restore returns content phase errors
  - `13019de` 2026-09-15 fix: stop tree workers after receiver closes (#546)
  - `037b5ae` 2026-09-15 test: check that prune returns tree read errors without a panic
  - `5623d8e` 2026-09-15 test: check a sparse restore of a file that ends in zeros
  - `f2c4763` 2026-09-15 docs: simplify the FirstError and restore_contents doc comments
  - `e6ee7e5` 2026-09-15 test: use boxed forms and plain doc comments in fault test support
  - `d667a29` 2026-09-15 docs: describe how restore_contents stops after the first error
  - `24317dc` 2026-09-15 test: clarify the fault test docs and the set_length check
  - `20c0ad5` 2026-09-15 docs: name the thread pool error in the restore_contents docs
  - `1a0525e` 2026-09-15 test: say backend calls in the fault injection docs
  - `f3bd989` 2026-09-18 test: add a truncating fault and a cache-enabled fixture
  - `e840fa3` 2026-09-18 fix: return an error when a backend read is short
  - `610c5d4` 2026-09-18 fix: check the blob range before slicing pack data
  - `29dd047` 2026-09-18 fix: return an error for a directory node without a subtree
  - `eb2d73f` 2026-09-18 fix: guard the unused limit against a full percentage
  - `093f4d3` 2026-09-18 fix: return an error when the index is still in use
  - `ae7b16c` 2026-09-18 fix: validate the key lengths before building a key
  - `7eb1bea` 2026-09-18 fix: do not panic in the rclone drop and reader thread
  - `24e5cf9` 2026-09-18 test: check the new error paths
  - `c2a1ec0` 2026-09-18 test: pin the cache range check and the repack decision
  - `d1c9d77` 2026-09-21 feat: add an option to fail a backup on an unreadable entry
  - `12e960b` 2026-09-21 feat: add an option to return restore metadata errors
  - `0b36fe5` 2026-09-21 feat: add an option for the number of restore threads
  - `e9d37e2` 2026-09-21 test: return errors from the in-memory backend for missing files and ranges
  - `f4e6eaf` 2026-09-21 test: check the strict backup, metadata errors and restore threads
  - `612a7bc` 2026-09-21 test: add a property test with random faults
  - `b4ee922` 2026-09-21 test: check that a restore sets directory metadata after the entries
  - `415ade2` 2026-09-22 feat: keep a kernel-owned extended attribute from failing a restore
  - ... 3 more

## golemcloud/rustic_core : golem-rustic_core-v0.13.0  (ahead 42, behind 35, stars 0)

  - `1578f52` 2026-09-15 test: add fault injection backend and panic=abort test crate
  - `c5cf478` 2026-09-15 fix: return the first error of the restore content phase
  - `ba2313e` 2026-09-15 test: check that restore returns content phase errors
  - `13019de` 2026-09-15 fix: stop tree workers after receiver closes (#546)
  - `037b5ae` 2026-09-15 test: check that prune returns tree read errors without a panic
  - `5623d8e` 2026-09-15 test: check a sparse restore of a file that ends in zeros
  - `f2c4763` 2026-09-15 docs: simplify the FirstError and restore_contents doc comments
  - `e6ee7e5` 2026-09-15 test: use boxed forms and plain doc comments in fault test support
  - `d667a29` 2026-09-15 docs: describe how restore_contents stops after the first error
  - `24317dc` 2026-09-15 test: clarify the fault test docs and the set_length check
  - `20c0ad5` 2026-09-15 docs: name the thread pool error in the restore_contents docs
  - `1a0525e` 2026-09-15 test: say backend calls in the fault injection docs
  - `f3bd989` 2026-09-18 test: add a truncating fault and a cache-enabled fixture
  - `e840fa3` 2026-09-18 fix: return an error when a backend read is short
  - `610c5d4` 2026-09-18 fix: check the blob range before slicing pack data
  - `29dd047` 2026-09-18 fix: return an error for a directory node without a subtree
  - `eb2d73f` 2026-09-18 fix: guard the unused limit against a full percentage
  - `093f4d3` 2026-09-18 fix: return an error when the index is still in use
  - `ae7b16c` 2026-09-18 fix: validate the key lengths before building a key
  - `7eb1bea` 2026-09-18 fix: do not panic in the rclone drop and reader thread
  - `24e5cf9` 2026-09-18 test: check the new error paths
  - `c2a1ec0` 2026-09-18 test: pin the cache range check and the repack decision
  - `d1c9d77` 2026-09-21 feat: add an option to fail a backup on an unreadable entry
  - `12e960b` 2026-09-21 feat: add an option to return restore metadata errors
  - `0b36fe5` 2026-09-21 feat: add an option for the number of restore threads
  - `e9d37e2` 2026-09-21 test: return errors from the in-memory backend for missing files and ranges
  - `f4e6eaf` 2026-09-21 test: check the strict backup, metadata errors and restore threads
  - `612a7bc` 2026-09-21 test: add a property test with random faults
  - `b4ee922` 2026-09-21 test: check that a restore sets directory metadata after the entries
  - `415ade2` 2026-09-22 feat: keep a kernel-owned extended attribute from failing a restore
  - ... 12 more

## golemcloud/rustic_core : http-transport  (ahead 1, behind 27, stars 0)

  - `ad256a2` 2026-08-31 chore!: Prefix all http transport options with http-

## golemcloud/rustic_core : index-search  (ahead 2, behind 142, stars 0)

  - `51ff8e4` 2025-04-20 add benchmark
  - `cc615b5` 2025-04-24 use interpolation_search for index

## golemcloud/rustic_core : lock  (ahead 2, behind 139, stars 0)

  - `1a526bd` 2024-10-05 feat: Add lock_repo command
  - `5c229c5` 2024-10-06 Proposed changes from review

## golemcloud/rustic_core : lock-more  (ahead 2, behind 223, stars 0)

  - `14488d4` 2024-10-05 feat: Add lock_repo command
  - `96b8476` 2024-10-05 feat: Add more locking commands

## golemcloud/rustic_core : opendal  (ahead 1, behind 122, stars 0)

  - `b757175` 2025-09-12 update opendal

## golemcloud/rustic_core : pack-padding  (ahead 29, behind 132, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `839a49c` 2025-06-12 WIP: Use padding for packfiles
  - `8f6ae7e` 2025-06-30 pad by filling up to next 64kiB; correct statistics
  - `b76b12f` 2025-07-02 correct test
  - `d2bdcd4` 2025-07-02 only check for padding blobs in prune if padding option is selected
  - `6a0736a` 2025-07-02 add test without padding
  - `ec01585` 2025-07-02 use padding only for 1 test
  - `e08c823` 2025-07-02 prevent 0-size padding; update comments
  - `7a63042` 2025-07-02 adapt windows tests
  - `7738b70` 2025-07-02 correct padding size computation

## golemcloud/rustic_core : release-plz-2024-09-10T13-13-47Z  (ahead 1, behind 263, stars 0)

  - `6e7b150` 2024-09-23 chore: release

## golemcloud/rustic_core : release-plz-2024-10-02T18-41-54Z  (ahead 1, behind 225, stars 0)

  - `4369057` 2024-10-03 chore: release

## golemcloud/rustic_core : release-plz-2024-11-27T10-30-54Z  (ahead 1, behind 165, stars 0)

  - `61f4d8e` 2024-11-27 chore(rustic_backend): release v0.5.2

## golemcloud/rustic_core : release-plz-2024-12-11T00-11-58Z  (ahead 1, behind 133, stars 0)

  - `f45b347` 2025-06-29 chore: release

## golemcloud/rustic_core : release-plz-2026-08-21T19-55-16Z  (ahead 1, behind 23, stars 0)

  - `5e28688` 2026-09-06 chore: release

## golemcloud/rustic_core : renovate/all-actions  (ahead 2, behind 143, stars 0)

  - `18480c9` 2024-12-30 chore(deps): update actions
  - `1b29692` 2025-04-19 Merge branch 'main' into renovate/all-actions

## golemcloud/rustic_core : separate-be  (ahead 21, behind 131, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `9555d5b` 2025-08-02 Merge branch 'main' into separate-be

## golemcloud/rustic_core : typed_path  (ahead 23, behind 121, stars 0)

  - `3706a32` 2024-12-29 use typed_path
  - `af7037f` 2025-01-11 fix windows build
  - `aff6924` 2025-01-11 more windows fixes
  - `a1f2a33` 2025-01-11 more windows fixes
  - `b8516d2` 2025-01-11 more windows fixes
  - `c71e783` 2025-01-11 more windows fixes
  - `377d52f` 2025-01-12 add util::GlobMatcherExt
  - `d3bb945` 2025-01-12 handle as_path correctly
  - `06b086a` 2025-01-13 fix unix tests
  - `d614f11` 2025-01-13 correctly convert windows into unix path
  - `0803495` 2025-01-13 update windwos snapshots
  - `d127fce` 2025-01-13 update snapshots
  - `04f2e0b` 2025-01-13 remove platform dependency in find snapshots
  - `f4e27f2` 2025-01-13 add util description
  - `3e421ae` 2025-01-13 docu for mod util
  - `219f56c` 2025-01-14 add tests
  - `9401a4e` 2025-01-14 more tests
  - `4655275` 2025-01-19 more util funcs
  - `b6abc4e` 2025-05-23 adaptions to use with rustic
  - `0982644` 2025-05-23 fix windows build
  - `f7bc8a5` 2025-07-07 apply review hints
  - `4a34307` 2025-07-09 make helper funcs public
  - `5db575d` 2025-10-23 adapt check errors

## golemcloud/rustic_core : update-cache  (ahead 1, behind 144, stars 0)

  - `0950ed6` 2025-03-05 update Swatinem/rust-cache

## BradKollmyer/rustic_core : dev  (ahead 95, behind 23, stars 0)

  - `9210d41` 2026-09-04 fix: request B2's maximum list page size
  - `d468d44` 2026-09-04 fix: fetch 4 MiB unused pack gaps in one read
  - `a75f3c8` 2026-09-04 fix: range-GET prune repack chunks in parallel
  - `b99e719` 2026-09-04 fix: prefetch index files with extra IO workers
  - `ec07d6a` 2026-09-04 fix: scale tree loaders during prune used-blob walk
  - `43365be` 2026-09-04 fix: store prune used blob ids in a HashMap
  - `7a1b0ca` 2026-09-04 fix: keep cached pack files open for tree blob reads
  - `f8c6813` 2026-09-04 fix: stream-decode trees during prune used-blob walk
  - `4957e7f` 2026-09-04 fix: walk unique trees depth-first
  - `0b8adc9` 2026-09-04 fix: list pack files during prune index and tree walk
  - `221a5f8` 2026-09-04 fix: start prune pack listing after the index is loaded
  - `25645f0` 2026-09-04 fix: use fewer stream_list workers on a warm cache
  - `d7db873` 2026-09-04 fix: use fewer tree loaders when pack files are cached
  - `26abe9b` 2026-09-06 fix: build cache test payloads without lossy int casts
  - `29a9434` 2026-09-06 fix: bound cached handles and synchronize portable range reads
  - `d79ad4d` 2026-09-06 fix: size cached pack handles from rlimit minus a reserve
  - `09702c7` 2026-09-04 fix: reuse a zstd decompressor per thread for blob reads
  - `2dde092` 2026-09-04 fix: decode prune tree blob ids with a hex nibble table
  - `0921434` 2026-09-04 fix: record prune used blob ids from loader threads
  - `a7db9bc` 2026-09-04 fix: stream-decode prune tree nodes without full node structs
  - `f5706d8` 2026-09-04 fix: fill prune used blob ids in per-loader maps
  - `26db7ce` 2026-09-05 fix: use FxHash for prune used-blob maps and tree visited set
  - `a01be78` 2026-09-05 fix: scan prune tree JSON without serde node field parse
  - `6583760` 2026-09-06 fix: preserve escaped JSON references during prune
  - `617ea00` 2026-09-05 fix: hash prune used-blob ids from the first 8 SHA-256 bytes
  - `e530031` 2026-09-05 fix: skip unused prune tree JSON strings with a word-wise scan
  - `4102652` 2026-09-05 fix: collect prune used blob ids in per-loader vecs
  - `1b508f8` 2026-09-05 fix: fill prune used-id map in parallel shards after the walk
  - `43ba4b5` 2026-09-05 fix: skip unused prune tree JSON strings with memchr
  - `30aca4f` 2026-09-05 fix: parse short prune tree JSON keys without memchr
  - ... 65 more

## BradKollmyer/rustic_core : feat/aws-glacier  (ahead 4, behind 26, stars 0)

  - `b91fd28` 2026-09-01 feat: warm data packs before dump, cat data-blob, and copy
  - `83fb9a7` 2026-09-01 feat: add warmup_status, poll wait, and require_warm
  - `e77aaf9` 2026-09-01 feat: native S3 Glacier class split and RestoreObject sidecar
  - `bf93d97` 2026-09-01 test: cover Glacier RestoreObject, poll wait, dump/copy, and prune

## BradKollmyer/rustic_core : fix/backup-emfile-source-scan  (ahead 1, behind 23, stars 0)

  - `fe1da29` 2026-09-20 fix(backup): retry EMFILE on source scan instead of skipping directories

## BradKollmyer/rustic_core : fix/backup-unreadable-source-errors  (ahead 4, behind 25, stars 0)

  - `04046a2` 2026-09-02 fix: count unreadable source files during backup
  - `8d14214` 2026-09-04 fix: address review of unreadable source error counting
  - `eeec3fc` 2026-09-05 cosmetic change
  - `0a29c10` 2026-09-05 Merge branch 'main' into fix/backup-unreadable-source-errors

## BradKollmyer/rustic_core : fix/cache-drop-absent-packs  (ahead 1, behind 23, stars 0)

  - `d9f27c2` 2026-09-28 fix(cache): drop cached packs that are no longer in the index

## BradKollmyer/rustic_core : fix/opendal-retry-log-noise  (ahead 2, behind 26, stars 0)

  - `eeb3193` 2026-09-04 fix: log OpenDAL retries as a single line
  - `b49d4aa` 2026-09-04 chore: drop CHANGELOG edit; release-plz generates it

## BradKollmyer/rustic_core : fix/storj-restore-stall  (ahead 94, behind 23, stars 0)

  - `9210d41` 2026-09-04 fix: request B2's maximum list page size
  - `d468d44` 2026-09-04 fix: fetch 4 MiB unused pack gaps in one read
  - `a75f3c8` 2026-09-04 fix: range-GET prune repack chunks in parallel
  - `b99e719` 2026-09-04 fix: prefetch index files with extra IO workers
  - `ec07d6a` 2026-09-04 fix: scale tree loaders during prune used-blob walk
  - `43365be` 2026-09-04 fix: store prune used blob ids in a HashMap
  - `7a1b0ca` 2026-09-04 fix: keep cached pack files open for tree blob reads
  - `f8c6813` 2026-09-04 fix: stream-decode trees during prune used-blob walk
  - `4957e7f` 2026-09-04 fix: walk unique trees depth-first
  - `0b8adc9` 2026-09-04 fix: list pack files during prune index and tree walk
  - `221a5f8` 2026-09-04 fix: start prune pack listing after the index is loaded
  - `25645f0` 2026-09-04 fix: use fewer stream_list workers on a warm cache
  - `d7db873` 2026-09-04 fix: use fewer tree loaders when pack files are cached
  - `26abe9b` 2026-09-06 fix: build cache test payloads without lossy int casts
  - `29a9434` 2026-09-06 fix: bound cached handles and synchronize portable range reads
  - `d79ad4d` 2026-09-06 fix: size cached pack handles from rlimit minus a reserve
  - `09702c7` 2026-09-04 fix: reuse a zstd decompressor per thread for blob reads
  - `2dde092` 2026-09-04 fix: decode prune tree blob ids with a hex nibble table
  - `0921434` 2026-09-04 fix: record prune used blob ids from loader threads
  - `a7db9bc` 2026-09-04 fix: stream-decode prune tree nodes without full node structs
  - `f5706d8` 2026-09-04 fix: fill prune used blob ids in per-loader maps
  - `26db7ce` 2026-09-05 fix: use FxHash for prune used-blob maps and tree visited set
  - `a01be78` 2026-09-05 fix: scan prune tree JSON without serde node field parse
  - `6583760` 2026-09-06 fix: preserve escaped JSON references during prune
  - `617ea00` 2026-09-05 fix: hash prune used-blob ids from the first 8 SHA-256 bytes
  - `e530031` 2026-09-05 fix: skip unused prune tree JSON strings with a word-wise scan
  - `4102652` 2026-09-05 fix: collect prune used blob ids in per-loader vecs
  - `1b508f8` 2026-09-05 fix: fill prune used-id map in parallel shards after the walk
  - `43ba4b5` 2026-09-05 fix: skip unused prune tree JSON strings with memchr
  - `30aca4f` 2026-09-05 fix: parse short prune tree JSON keys without memchr
  - ... 64 more

## BradKollmyer/rustic_core : perf/index-chunks  (ahead 38, behind 23, stars 0)

  - `9210d41` 2026-09-04 fix: request B2's maximum list page size
  - `d468d44` 2026-09-04 fix: fetch 4 MiB unused pack gaps in one read
  - `a75f3c8` 2026-09-04 fix: range-GET prune repack chunks in parallel
  - `b99e719` 2026-09-04 fix: prefetch index files with extra IO workers
  - `ec07d6a` 2026-09-04 fix: scale tree loaders during prune used-blob walk
  - `43365be` 2026-09-04 fix: store prune used blob ids in a HashMap
  - `7a1b0ca` 2026-09-04 fix: keep cached pack files open for tree blob reads
  - `f8c6813` 2026-09-04 fix: stream-decode trees during prune used-blob walk
  - `4957e7f` 2026-09-04 fix: walk unique trees depth-first
  - `0b8adc9` 2026-09-04 fix: list pack files during prune index and tree walk
  - `221a5f8` 2026-09-04 fix: start prune pack listing after the index is loaded
  - `25645f0` 2026-09-04 fix: use fewer stream_list workers on a warm cache
  - `d7db873` 2026-09-04 fix: use fewer tree loaders when pack files are cached
  - `26abe9b` 2026-09-06 fix: build cache test payloads without lossy int casts
  - `29a9434` 2026-09-06 fix: bound cached handles and synchronize portable range reads
  - `d79ad4d` 2026-09-06 fix: size cached pack handles from rlimit minus a reserve
  - `09702c7` 2026-09-04 fix: reuse a zstd decompressor per thread for blob reads
  - `2dde092` 2026-09-04 fix: decode prune tree blob ids with a hex nibble table
  - `0921434` 2026-09-04 fix: record prune used blob ids from loader threads
  - `a7db9bc` 2026-09-04 fix: stream-decode prune tree nodes without full node structs
  - `f5706d8` 2026-09-04 fix: fill prune used blob ids in per-loader maps
  - `26db7ce` 2026-09-05 fix: use FxHash for prune used-blob maps and tree visited set
  - `a01be78` 2026-09-05 fix: scan prune tree JSON without serde node field parse
  - `6583760` 2026-09-06 fix: preserve escaped JSON references during prune
  - `617ea00` 2026-09-05 fix: hash prune used-blob ids from the first 8 SHA-256 bytes
  - `e530031` 2026-09-05 fix: skip unused prune tree JSON strings with a word-wise scan
  - `4102652` 2026-09-05 fix: collect prune used blob ids in per-loader vecs
  - `1b508f8` 2026-09-05 fix: fill prune used-id map in parallel shards after the walk
  - `43ba4b5` 2026-09-05 fix: skip unused prune tree JSON strings with memchr
  - `30aca4f` 2026-09-05 fix: parse short prune tree JSON keys without memchr
  - ... 8 more

## BradKollmyer/rustic_core : perf/prune-io  (ahead 7, behind 23, stars 0)

  - `9210d41` 2026-09-04 fix: request B2's maximum list page size
  - `d468d44` 2026-09-04 fix: fetch 4 MiB unused pack gaps in one read
  - `a75f3c8` 2026-09-04 fix: range-GET prune repack chunks in parallel
  - `b99e719` 2026-09-04 fix: prefetch index files with extra IO workers
  - `ec07d6a` 2026-09-04 fix: scale tree loaders during prune used-blob walk
  - `43365be` 2026-09-04 fix: store prune used blob ids in a HashMap
  - `edb089d` 2026-09-07 fix: collect index entries in bounded chunks

## BradKollmyer/rustic_core : perf/prune-json  (ahead 27, behind 23, stars 0)

  - `9210d41` 2026-09-04 fix: request B2's maximum list page size
  - `d468d44` 2026-09-04 fix: fetch 4 MiB unused pack gaps in one read
  - `a75f3c8` 2026-09-04 fix: range-GET prune repack chunks in parallel
  - `b99e719` 2026-09-04 fix: prefetch index files with extra IO workers
  - `ec07d6a` 2026-09-04 fix: scale tree loaders during prune used-blob walk
  - `43365be` 2026-09-04 fix: store prune used blob ids in a HashMap
  - `edb089d` 2026-09-07 fix: collect index entries in bounded chunks
  - `0464477` 2026-09-04 fix: keep cached pack files open for tree blob reads
  - `4674695` 2026-09-04 fix: stream-decode trees during prune used-blob walk
  - `721dc03` 2026-09-04 fix: walk unique trees depth-first
  - `c65570c` 2026-09-04 fix: list pack files during prune index and tree walk
  - `5e7996f` 2026-09-04 fix: start prune pack listing after the index is loaded
  - `b664070` 2026-09-04 fix: use fewer stream_list workers on a warm cache
  - `188e5bc` 2026-09-04 fix: use fewer tree loaders when pack files are cached
  - `4ef023f` 2026-09-06 fix: build cache test payloads without lossy int casts
  - `34d586c` 2026-09-06 fix: bound cached handles and synchronize portable range reads
  - `3631eab` 2026-09-06 fix: size cached pack handles from rlimit minus a reserve
  - `a9716cd` 2026-09-07 fix: convert rlimit to u64 for 32-bit prune cache cap
  - `be68643` 2026-09-04 fix: reuse a zstd decompressor per thread for blob reads
  - `7961821` 2026-09-04 fix: decode prune tree blob ids with a hex nibble table
  - `186a925` 2026-09-04 fix: record prune used blob ids from loader threads
  - `19c41bd` 2026-09-04 fix: stream-decode prune tree nodes without full node structs
  - `9aa8740` 2026-09-04 fix: fill prune used blob ids in per-loader maps
  - `461977d` 2026-09-05 fix: use FxHash for prune used-blob maps and tree visited set
  - `8d37cf5` 2026-09-05 fix: scan prune tree JSON without serde node field parse
  - `b29a5cd` 2026-09-06 fix: preserve escaped JSON references during prune
  - `0d55a57` 2026-09-19 fix: parse prune trees with a serde struct of type/content/subtree

## BradKollmyer/rustic_core : perf/prune-used-ids  (ahead 27, behind 23, stars 0)

  - `9210d41` 2026-09-04 fix: request B2's maximum list page size
  - `d468d44` 2026-09-04 fix: fetch 4 MiB unused pack gaps in one read
  - `a75f3c8` 2026-09-04 fix: range-GET prune repack chunks in parallel
  - `b99e719` 2026-09-04 fix: prefetch index files with extra IO workers
  - `ec07d6a` 2026-09-04 fix: scale tree loaders during prune used-blob walk
  - `43365be` 2026-09-04 fix: store prune used blob ids in a HashMap
  - `edb089d` 2026-09-07 fix: collect index entries in bounded chunks
  - `0464477` 2026-09-04 fix: keep cached pack files open for tree blob reads
  - `4674695` 2026-09-04 fix: stream-decode trees during prune used-blob walk
  - `721dc03` 2026-09-04 fix: walk unique trees depth-first
  - `c65570c` 2026-09-04 fix: list pack files during prune index and tree walk
  - `5e7996f` 2026-09-04 fix: start prune pack listing after the index is loaded
  - `b664070` 2026-09-04 fix: use fewer stream_list workers on a warm cache
  - `188e5bc` 2026-09-04 fix: use fewer tree loaders when pack files are cached
  - `4ef023f` 2026-09-06 fix: build cache test payloads without lossy int casts
  - `34d586c` 2026-09-06 fix: bound cached handles and synchronize portable range reads
  - `3631eab` 2026-09-06 fix: size cached pack handles from rlimit minus a reserve
  - `a9716cd` 2026-09-07 fix: convert rlimit to u64 for 32-bit prune cache cap
  - `be68643` 2026-09-04 fix: reuse a zstd decompressor per thread for blob reads
  - `7961821` 2026-09-04 fix: decode prune tree blob ids with a hex nibble table
  - `186a925` 2026-09-04 fix: record prune used blob ids from loader threads
  - `19c41bd` 2026-09-04 fix: stream-decode prune tree nodes without full node structs
  - `9aa8740` 2026-09-04 fix: fill prune used blob ids in per-loader maps
  - `461977d` 2026-09-05 fix: use FxHash for prune used-blob maps and tree visited set
  - `8d37cf5` 2026-09-05 fix: scan prune tree JSON without serde node field parse
  - `b29a5cd` 2026-09-06 fix: preserve escaped JSON references during prune
  - `0d55a57` 2026-09-19 fix: parse prune trees with a serde struct of type/content/subtree

## BradKollmyer/rustic_core : perf/prune-walk  (ahead 18, behind 23, stars 0)

  - `9210d41` 2026-09-04 fix: request B2's maximum list page size
  - `d468d44` 2026-09-04 fix: fetch 4 MiB unused pack gaps in one read
  - `a75f3c8` 2026-09-04 fix: range-GET prune repack chunks in parallel
  - `b99e719` 2026-09-04 fix: prefetch index files with extra IO workers
  - `ec07d6a` 2026-09-04 fix: scale tree loaders during prune used-blob walk
  - `43365be` 2026-09-04 fix: store prune used blob ids in a HashMap
  - `edb089d` 2026-09-07 fix: collect index entries in bounded chunks
  - `0464477` 2026-09-04 fix: keep cached pack files open for tree blob reads
  - `4674695` 2026-09-04 fix: stream-decode trees during prune used-blob walk
  - `721dc03` 2026-09-04 fix: walk unique trees depth-first
  - `c65570c` 2026-09-04 fix: list pack files during prune index and tree walk
  - `5e7996f` 2026-09-04 fix: start prune pack listing after the index is loaded
  - `b664070` 2026-09-04 fix: use fewer stream_list workers on a warm cache
  - `188e5bc` 2026-09-04 fix: use fewer tree loaders when pack files are cached
  - `4ef023f` 2026-09-06 fix: build cache test payloads without lossy int casts
  - `34d586c` 2026-09-06 fix: bound cached handles and synchronize portable range reads
  - `3631eab` 2026-09-06 fix: size cached pack handles from rlimit minus a reserve
  - `a9716cd` 2026-09-07 fix: convert rlimit to u64 for 32-bit prune cache cap

## BradKollmyer/rustic_core : perf/prune-zstd-buffer  (ahead 28, behind 23, stars 0)

  - `9210d41` 2026-09-04 fix: request B2's maximum list page size
  - `d468d44` 2026-09-04 fix: fetch 4 MiB unused pack gaps in one read
  - `a75f3c8` 2026-09-04 fix: range-GET prune repack chunks in parallel
  - `b99e719` 2026-09-04 fix: prefetch index files with extra IO workers
  - `ec07d6a` 2026-09-04 fix: scale tree loaders during prune used-blob walk
  - `43365be` 2026-09-04 fix: store prune used blob ids in a HashMap
  - `edb089d` 2026-09-07 fix: collect index entries in bounded chunks
  - `0464477` 2026-09-04 fix: keep cached pack files open for tree blob reads
  - `4674695` 2026-09-04 fix: stream-decode trees during prune used-blob walk
  - `721dc03` 2026-09-04 fix: walk unique trees depth-first
  - `c65570c` 2026-09-04 fix: list pack files during prune index and tree walk
  - `5e7996f` 2026-09-04 fix: start prune pack listing after the index is loaded
  - `b664070` 2026-09-04 fix: use fewer stream_list workers on a warm cache
  - `188e5bc` 2026-09-04 fix: use fewer tree loaders when pack files are cached
  - `4ef023f` 2026-09-06 fix: build cache test payloads without lossy int casts
  - `34d586c` 2026-09-06 fix: bound cached handles and synchronize portable range reads
  - `3631eab` 2026-09-06 fix: size cached pack handles from rlimit minus a reserve
  - `a9716cd` 2026-09-07 fix: convert rlimit to u64 for 32-bit prune cache cap
  - `be68643` 2026-09-04 fix: reuse a zstd decompressor per thread for blob reads
  - `7961821` 2026-09-04 fix: decode prune tree blob ids with a hex nibble table
  - `186a925` 2026-09-04 fix: record prune used blob ids from loader threads
  - `19c41bd` 2026-09-04 fix: stream-decode prune tree nodes without full node structs
  - `9aa8740` 2026-09-04 fix: fill prune used blob ids in per-loader maps
  - `461977d` 2026-09-05 fix: use FxHash for prune used-blob maps and tree visited set
  - `8d37cf5` 2026-09-05 fix: scan prune tree JSON without serde node field parse
  - `b29a5cd` 2026-09-06 fix: preserve escaped JSON references during prune
  - `0d55a57` 2026-09-19 fix: parse prune trees with a serde struct of type/content/subtree
  - `383772a` 2026-09-05 fix: reuse per-thread zstd output buffer for prune trees

## Lauri-Nomme/rustic_core : backend-features  (ahead 10, behind 131, stars 0)

  - `23ee8bd` 2025-07-18 backend: Use features for opendal services
  - `e1c592a` 2025-07-20 update deps
  - `bec33e4` 2025-07-20 remove ftp feature
  - `9681088` 2025-07-20 fix url dep
  - `57d07b9` 2025-07-22 use feature "ci" in pipelines
  - `851993d` 2025-07-22 fix workflows
  - `930aa54` 2025-07-22 add missing licence
  - `40196f4` 2025-07-22 fix deny.toml
  - `6dfcad6` 2025-07-26 use ci features in ci-heavy.yml
  - `f7f48ec` 2025-07-26 Merge branch 'main' into backend-features

## Lauri-Nomme/rustic_core : cache-warnings  (ahead 1, behind 319, stars 0)

  - `773edad` 2024-04-27 fix: Improve warnings in case of cache errors

## Lauri-Nomme/rustic_core : examples-no-crate  (ahead 4, behind 132, stars 0)

  - `68af55e` 2025-07-22 move examples in rustic_core crate
  - `0648ab3` 2025-07-22 fmt and clippy for examples
  - `5cd6ffd` 2025-07-22 clippy for examples
  - `85e78e2` 2025-07-22 clippy for examples

## Lauri-Nomme/rustic_core : feat/error_handling  (ahead 6, behind 222, stars 0)

  - `8e227da` 2024-10-06 feat(errors): add a RusticIssueCollector
  - `0b74f3c` 2024-10-06 add new issue types
  - `ff5ba3c` 2024-10-06 add RusticIssueResult
  - `8d610bd` 2024-10-06 replace RusticIssueResult struct with type alias
  - `d2dfd46` 2024-10-06 reduce visibility to crate public
  - `b74d2bf` 2024-10-06 reduce visibility of methods to crate public

## Lauri-Nomme/rustic_core : feat/remove-unwrap-expect  (ahead 58, behind 326, stars 0)

  - `31b1b9f` 2024-03-17 test: implement more tests and rename tests for consistency
  - `0ef7c22` 2024-03-17 rename trait for checking errors in rest backend
  - `76f2bed` 2024-03-17 implement transpose on ParentResult and some error handling fixes
  - `39089b1` 2024-03-17 fix doc test and export for overwrite zero duration
  - `5ba3c02` 2024-03-17 rework Id/HexId
  - `ad9203b` 2024-03-17 use parking lot
  - `bce58de` 2024-03-17 more errors for error handling
  - `ccca56d` 2024-03-17 rename filename to file_name (and dir_name) to make it consistent over the code base, also handle cli changes with alias
  - `f24105e` 2024-03-17 rename new_cache to from_backend to make source/intent clearer
  - `0a62645` 2024-03-17 handle fallible location() method
  - `c205d45` 2024-03-17 fix non-self-describing variable names that make it hard to read the code
  - `1ae7a82` 2024-03-17 add more documentation about errors etc
  - `7e0f0ca` 2024-03-17 rename new_node to from_type_and_metadata to make the intent more clear and keep good style
  - `0128764` 2024-03-17 impl Display for Cache
  - `896a14a` 2024-03-17 remove default impl from nodetype as it can be derived
  - `5910c3b` 2024-03-17 impl Debug for Packer
  - `3add91c` 2024-03-17 factor out calculate_pack_size to make it easier testable
  - `2f5d6ea` 2024-03-17 handle TreeArchiver::apply errors and refactor to make it safe against overflows
  - `bf1419f` 2024-03-17 make link_target more consistent over the code base as well
  - `8d2f432` 2024-03-17 use expect to unwrap runtime
  - `1713a01` 2024-03-17 store joinhandle in rclone backend struct and join in Drop impl
  - `a75b4ae` 2024-03-17 warn the user if we shadow their already said rclone user and pass
  - `27a708a` 2024-03-17 cleanup panic docs
  - `35c8fef` 2024-03-17 allow expect for trait method impl
  - `3d9ebb9` 2024-03-17 we allow expect here, because it should always give some and otherwise we would need to create a backoff::Error<reqwest::Error> which is super annoying
  - `d0b0255` 2024-03-17 handle errors in Cache::list_with_size
  - `0439d61` 2024-03-17 bubble up options in TreeIterator
  - `034634b` 2024-03-17 add/remove docs, imports, and derives. derives e.g. serialize for insta test impl
  - `b70e8c0` 2024-03-17 handle option in iter
  - `63a6744` 2024-03-17 Don't panic on file not being able to be deleted.
  - ... 28 more

## Lauri-Nomme/rustic_core : feat/summary  (ahead 20, behind 145, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `08a66fb` 2024-11-25 feat: update retrieve_from_arc_mutex method to use Self type
  - `f30bb6e` 2024-11-25 feat: add assertions to tests for contains_error method in Summary
  - `68b40c9` 2025-01-12 Merge branch 'main' into feat/summary

## Lauri-Nomme/rustic_core : feat/summary-check  (ahead 24, behind 170, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `4316068` 2024-11-25 feat: update check_repository and check_cache_files to return Summary and improve concurrency handling
  - `2f5c7bf` 2024-11-25 feat: enhance error handling in check_cache_files to log errors in Summary with IssueScope
  - `fe64fdd` 2024-11-25 feat: enhance summary logging in check_repository and check_hot_files for better error reporting
  - `525e382` 2024-11-25 feat: refactor summary handling in merge and archiver
  - `36b2e9a` 2024-11-25 feat: add clippy lint allowance for check_repository and update test to capture summary
  - `ce08470` 2024-11-25 feat: simplify summary initialization by removing Mutex and using into_arc_mutex
  - `a2aee81` 2024-11-25 feat: streamline summary retrieval by replacing Mutex unwrapping with retrieve_from_arc_mutex

## Lauri-Nomme/rustic_core : feat/tracing-logging  (ahead 6, behind 200, stars 0)

  - `236ea85` 2024-10-05 feat: replace log with tracing
  - `c9e8292` 2024-10-05 style: cargo fmt
  - `ca56f2d` 2024-10-28 Merge branch 'main' into feat/tracing-logging
  - `62aa898` 2024-10-28 add log feature as default so log and tracing can be used
  - `e95b61b` 2024-10-29 Instrument on:
  - `350eed0` 2024-10-29 add tracing and log feature without feature in core and backend

## Lauri-Nomme/rustic_core : feature/async_incompatible  (ahead 4, behind 194, stars 0)

  - `d10914b` 2024-11-17 fix: typo
  - `51aed6e` 2024-11-17 feat(backend)!: add is_async_compatible method to ReadBackend and Repository
  - `1554c67` 2024-11-17 feat: impl is_async_incompatible for all backends
  - `b6a3851` 2024-11-17 fix: apply clippy lint

## Lauri-Nomme/rustic_core : feature/outsource_config  (ahead 1, behind 379, stars 0)

  - `4396390` 2024-02-04 outsource config I

## Lauri-Nomme/rustic_core : fix/command_input  (ahead 4, behind 223, stars 0)

  - `15e47aa` 2024-10-03 fix(commands): make CommandInput work with file redirects
  - `adcb1ee` 2024-10-04 join on iter, not with shell-split
  - `8e3b412` 2024-10-04 use winsplit, more cases on win, failing
  - `cff8aa7` 2024-10-04 more test cases

## Lauri-Nomme/rustic_core : fix/multi-source-backup  (ahead 1, behind 35, stars 0)

  - `31c46c4` 2026-08-30 fix: preserve files of all sources in multi-source backup

## Lauri-Nomme/rustic_core : fusefs  (ahead 1, behind 306, stars 0)

  - `ad7b125` 2024-02-07 feat: add FuseFs

## Lauri-Nomme/rustic_core : index-search  (ahead 2, behind 142, stars 0)

  - `51ff8e4` 2025-04-20 add benchmark
  - `cc615b5` 2025-04-24 use interpolation_search for index

## Lauri-Nomme/rustic_core : lock  (ahead 2, behind 139, stars 0)

  - `1a526bd` 2024-10-05 feat: Add lock_repo command
  - `5c229c5` 2024-10-06 Proposed changes from review

## Lauri-Nomme/rustic_core : lock-more  (ahead 2, behind 223, stars 0)

  - `14488d4` 2024-10-05 feat: Add lock_repo command
  - `96b8476` 2024-10-05 feat: Add more locking commands

## Lauri-Nomme/rustic_core : opendal  (ahead 1, behind 122, stars 0)

  - `b757175` 2025-09-12 update opendal

## Lauri-Nomme/rustic_core : pack-padding  (ahead 29, behind 132, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `839a49c` 2025-06-12 WIP: Use padding for packfiles
  - `8f6ae7e` 2025-06-30 pad by filling up to next 64kiB; correct statistics
  - `b76b12f` 2025-07-02 correct test
  - `d2bdcd4` 2025-07-02 only check for padding blobs in prune if padding option is selected
  - `6a0736a` 2025-07-02 add test without padding
  - `ec01585` 2025-07-02 use padding only for 1 test
  - `e08c823` 2025-07-02 prevent 0-size padding; update comments
  - `7a63042` 2025-07-02 adapt windows tests
  - `7738b70` 2025-07-02 correct padding size computation

## Lauri-Nomme/rustic_core : release-plz-2024-09-10T13-13-47Z  (ahead 1, behind 263, stars 0)

  - `6e7b150` 2024-09-23 chore: release

## Lauri-Nomme/rustic_core : release-plz-2024-10-02T18-41-54Z  (ahead 1, behind 225, stars 0)

  - `4369057` 2024-10-03 chore: release

## Lauri-Nomme/rustic_core : release-plz-2024-11-27T10-30-54Z  (ahead 1, behind 165, stars 0)

  - `61f4d8e` 2024-11-27 chore(rustic_backend): release v0.5.2

## Lauri-Nomme/rustic_core : release-plz-2024-12-11T00-11-58Z  (ahead 1, behind 133, stars 0)

  - `f45b347` 2025-06-29 chore: release

## Lauri-Nomme/rustic_core : release-plz-2026-08-21T19-55-16Z  (ahead 1, behind 27, stars 0)

  - `73fe4a7` 2026-08-30 chore: release

## Lauri-Nomme/rustic_core : renovate/all-actions  (ahead 2, behind 143, stars 0)

  - `18480c9` 2024-12-30 chore(deps): update actions
  - `1b29692` 2025-04-19 Merge branch 'main' into renovate/all-actions

## Lauri-Nomme/rustic_core : separate-be  (ahead 21, behind 131, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `9555d5b` 2025-08-02 Merge branch 'main' into separate-be

## Lauri-Nomme/rustic_core : typed_path  (ahead 23, behind 121, stars 0)

  - `3706a32` 2024-12-29 use typed_path
  - `af7037f` 2025-01-11 fix windows build
  - `aff6924` 2025-01-11 more windows fixes
  - `a1f2a33` 2025-01-11 more windows fixes
  - `b8516d2` 2025-01-11 more windows fixes
  - `c71e783` 2025-01-11 more windows fixes
  - `377d52f` 2025-01-12 add util::GlobMatcherExt
  - `d3bb945` 2025-01-12 handle as_path correctly
  - `06b086a` 2025-01-13 fix unix tests
  - `d614f11` 2025-01-13 correctly convert windows into unix path
  - `0803495` 2025-01-13 update windwos snapshots
  - `d127fce` 2025-01-13 update snapshots
  - `04f2e0b` 2025-01-13 remove platform dependency in find snapshots
  - `f4e27f2` 2025-01-13 add util description
  - `3e421ae` 2025-01-13 docu for mod util
  - `219f56c` 2025-01-14 add tests
  - `9401a4e` 2025-01-14 more tests
  - `4655275` 2025-01-19 more util funcs
  - `b6abc4e` 2025-05-23 adaptions to use with rustic
  - `0982644` 2025-05-23 fix windows build
  - `f7bc8a5` 2025-07-07 apply review hints
  - `4a34307` 2025-07-09 make helper funcs public
  - `5db575d` 2025-10-23 adapt check errors

## Lauri-Nomme/rustic_core : update-cache  (ahead 1, behind 144, stars 0)

  - `0950ed6` 2025-03-05 update Swatinem/rust-cache

## hintjen/rustic-fork : fix/ios-dev-t  (ahead 1, behind 34, stars 0)

  - `2c77cde` 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates

## hintjen/rustic-fork : fix/ios-dev-t-cfg  (ahead 1, behind 46, stars 0)

  - `6473fab` 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates

## hintjen/rustic-fork : main  (ahead 1, behind 34, stars 0)

  - `2c77cde` 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates

## hintjen/rustic-fork : sync/upstream-6fa7b56e  (ahead 2, behind 26, stars 0)

  - `2c77cde` 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates
  - `7dfe778` 2026-09-04 chore: merge upstream main (6fa7b56e)

## hintjen/rustic-fork : sync/upstream-9d9e4783  (ahead 2, behind 28, stars 0)

  - `2c77cde` 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates
  - `d03feab` 2026-08-30 chore: merge upstream main (9d9e4783)

## hintjen/rustic-fork : sync/upstream-647d00f6  (ahead 2, behind 23, stars 0)

  - `2c77cde` 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates
  - `63d49a9` 2026-10-10 chore: merge upstream main (647d00f6)

## hintjen/rustic-fork : sync/upstream-b7ab1ee0  (ahead 2, behind 27, stars 0)

  - `2c77cde` 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates
  - `52413c6` 2026-08-31 chore: merge upstream main (b7ab1ee0)

## hintjen/rustic-fork : sync/upstream-b78f6489  (ahead 2, behind 24, stars 0)

  - `2c77cde` 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates
  - `c7896a2` 2026-09-06 chore: merge upstream main (b78f6489)

## hintjen/rustic-fork : sync/upstream-e97a7dcd  (ahead 2, behind 25, stars 0)

  - `2c77cde` 2026-08-11 fix(core): include ios in the dev_t conversion cfg gates
  - `46c1abc` 2026-09-05 chore: merge upstream main (e97a7dcd)

## Xuanwo/rustic_core : xuanwo/bump-opendal-0.58.1  (ahead 2, behind 42, stars 0)

  - `17dd337` 2026-08-04 chore(deps): bump opendal to 0.58.1
  - `dc0a0a7` 2026-08-07 fix clippy lints

## 543069760/rustic_core : backend-features  (ahead 10, behind 131, stars 0)

  - `23ee8bd` 2025-07-18 backend: Use features for opendal services
  - `e1c592a` 2025-07-20 update deps
  - `bec33e4` 2025-07-20 remove ftp feature
  - `9681088` 2025-07-20 fix url dep
  - `57d07b9` 2025-07-22 use feature "ci" in pipelines
  - `851993d` 2025-07-22 fix workflows
  - `930aa54` 2025-07-22 add missing licence
  - `40196f4` 2025-07-22 fix deny.toml
  - `6dfcad6` 2025-07-26 use ci features in ci-heavy.yml
  - `f7f48ec` 2025-07-26 Merge branch 'main' into backend-features

## 543069760/rustic_core : cache-warnings  (ahead 1, behind 319, stars 0)

  - `773edad` 2024-04-27 fix: Improve warnings in case of cache errors

## 543069760/rustic_core : examples-no-crate  (ahead 4, behind 132, stars 0)

  - `68af55e` 2025-07-22 move examples in rustic_core crate
  - `0648ab3` 2025-07-22 fmt and clippy for examples
  - `5cd6ffd` 2025-07-22 clippy for examples
  - `85e78e2` 2025-07-22 clippy for examples

## 543069760/rustic_core : feat/error_handling  (ahead 6, behind 222, stars 0)

  - `8e227da` 2024-10-06 feat(errors): add a RusticIssueCollector
  - `0b74f3c` 2024-10-06 add new issue types
  - `ff5ba3c` 2024-10-06 add RusticIssueResult
  - `8d610bd` 2024-10-06 replace RusticIssueResult struct with type alias
  - `d2dfd46` 2024-10-06 reduce visibility to crate public
  - `b74d2bf` 2024-10-06 reduce visibility of methods to crate public

## 543069760/rustic_core : feat/fdsource-streaming  (ahead 5, behind 46, stars 0)

  - `490acaa` 2026-08-06 feat(backend): add opendal ProgressLayer with conditional chunked writer
  - `c81a9c1` 2026-08-10 feat(backup): add cooperative cancellation via Arc<AtomicBool>
  - `4533fd8` 2026-08-21 fix(opendal): fall back to one-shot write for backends without multi-write support
  - `ed70771` 2026-10-08 feat: add FdSource ReadSource for streaming backup from fd
  - `f26bca5` 2026-10-09 perf(fdsource): 内置 1MB BufReader 消除 fd 流式备份的 syscall 瓶颈

## 543069760/rustic_core : feat/opendal-progress-layer  (ahead 4, behind 46, stars 0)

  - `490acaa` 2026-08-06 feat(backend): add opendal ProgressLayer with conditional chunked writer
  - `c81a9c1` 2026-08-10 feat(backup): add cooperative cancellation via Arc<AtomicBool>
  - `4533fd8` 2026-08-21 fix(opendal): fall back to one-shot write for backends without multi-write support
  - `4565347` 2026-08-21 fix(example): pass cancel flag to repo.backup

## 543069760/rustic_core : feat/remove-unwrap-expect  (ahead 58, behind 326, stars 0)

  - `31b1b9f` 2024-03-17 test: implement more tests and rename tests for consistency
  - `0ef7c22` 2024-03-17 rename trait for checking errors in rest backend
  - `76f2bed` 2024-03-17 implement transpose on ParentResult and some error handling fixes
  - `39089b1` 2024-03-17 fix doc test and export for overwrite zero duration
  - `5ba3c02` 2024-03-17 rework Id/HexId
  - `ad9203b` 2024-03-17 use parking lot
  - `bce58de` 2024-03-17 more errors for error handling
  - `ccca56d` 2024-03-17 rename filename to file_name (and dir_name) to make it consistent over the code base, also handle cli changes with alias
  - `f24105e` 2024-03-17 rename new_cache to from_backend to make source/intent clearer
  - `0a62645` 2024-03-17 handle fallible location() method
  - `c205d45` 2024-03-17 fix non-self-describing variable names that make it hard to read the code
  - `1ae7a82` 2024-03-17 add more documentation about errors etc
  - `7e0f0ca` 2024-03-17 rename new_node to from_type_and_metadata to make the intent more clear and keep good style
  - `0128764` 2024-03-17 impl Display for Cache
  - `896a14a` 2024-03-17 remove default impl from nodetype as it can be derived
  - `5910c3b` 2024-03-17 impl Debug for Packer
  - `3add91c` 2024-03-17 factor out calculate_pack_size to make it easier testable
  - `2f5d6ea` 2024-03-17 handle TreeArchiver::apply errors and refactor to make it safe against overflows
  - `bf1419f` 2024-03-17 make link_target more consistent over the code base as well
  - `8d2f432` 2024-03-17 use expect to unwrap runtime
  - `1713a01` 2024-03-17 store joinhandle in rclone backend struct and join in Drop impl
  - `a75b4ae` 2024-03-17 warn the user if we shadow their already said rclone user and pass
  - `27a708a` 2024-03-17 cleanup panic docs
  - `35c8fef` 2024-03-17 allow expect for trait method impl
  - `3d9ebb9` 2024-03-17 we allow expect here, because it should always give some and otherwise we would need to create a backoff::Error<reqwest::Error> which is super annoying
  - `d0b0255` 2024-03-17 handle errors in Cache::list_with_size
  - `0439d61` 2024-03-17 bubble up options in TreeIterator
  - `034634b` 2024-03-17 add/remove docs, imports, and derives. derives e.g. serialize for insta test impl
  - `b70e8c0` 2024-03-17 handle option in iter
  - `63a6744` 2024-03-17 Don't panic on file not being able to be deleted.
  - ... 28 more

## 543069760/rustic_core : feat/summary  (ahead 20, behind 145, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `08a66fb` 2024-11-25 feat: update retrieve_from_arc_mutex method to use Self type
  - `f30bb6e` 2024-11-25 feat: add assertions to tests for contains_error method in Summary
  - `68b40c9` 2025-01-12 Merge branch 'main' into feat/summary

## 543069760/rustic_core : feat/summary-check  (ahead 24, behind 170, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `4316068` 2024-11-25 feat: update check_repository and check_cache_files to return Summary and improve concurrency handling
  - `2f5c7bf` 2024-11-25 feat: enhance error handling in check_cache_files to log errors in Summary with IssueScope
  - `fe64fdd` 2024-11-25 feat: enhance summary logging in check_repository and check_hot_files for better error reporting
  - `525e382` 2024-11-25 feat: refactor summary handling in merge and archiver
  - `36b2e9a` 2024-11-25 feat: add clippy lint allowance for check_repository and update test to capture summary
  - `ce08470` 2024-11-25 feat: simplify summary initialization by removing Mutex and using into_arc_mutex
  - `a2aee81` 2024-11-25 feat: streamline summary retrieval by replacing Mutex unwrapping with retrieve_from_arc_mutex

## 543069760/rustic_core : feat/tracing-logging  (ahead 6, behind 200, stars 0)

  - `236ea85` 2024-10-05 feat: replace log with tracing
  - `c9e8292` 2024-10-05 style: cargo fmt
  - `ca56f2d` 2024-10-28 Merge branch 'main' into feat/tracing-logging
  - `62aa898` 2024-10-28 add log feature as default so log and tracing can be used
  - `e95b61b` 2024-10-29 Instrument on:
  - `350eed0` 2024-10-29 add tracing and log feature without feature in core and backend

## 543069760/rustic_core : feature/async_incompatible  (ahead 4, behind 194, stars 0)

  - `d10914b` 2024-11-17 fix: typo
  - `51aed6e` 2024-11-17 feat(backend)!: add is_async_compatible method to ReadBackend and Repository
  - `1554c67` 2024-11-17 feat: impl is_async_incompatible for all backends
  - `b6a3851` 2024-11-17 fix: apply clippy lint

## 543069760/rustic_core : feature/outsource_config  (ahead 1, behind 379, stars 0)

  - `4396390` 2024-02-04 outsource config I

## 543069760/rustic_core : fix/command_input  (ahead 4, behind 223, stars 0)

  - `15e47aa` 2024-10-03 fix(commands): make CommandInput work with file redirects
  - `adcb1ee` 2024-10-04 join on iter, not with shell-split
  - `8e3b412` 2024-10-04 use winsplit, more cases on win, failing
  - `cff8aa7` 2024-10-04 more test cases

## 543069760/rustic_core : fusefs  (ahead 1, behind 306, stars 0)

  - `ad7b125` 2024-02-07 feat: add FuseFs

## 543069760/rustic_core : index-search  (ahead 2, behind 142, stars 0)

  - `51ff8e4` 2025-04-20 add benchmark
  - `cc615b5` 2025-04-24 use interpolation_search for index

## 543069760/rustic_core : lock  (ahead 2, behind 139, stars 0)

  - `1a526bd` 2024-10-05 feat: Add lock_repo command
  - `5c229c5` 2024-10-06 Proposed changes from review

## 543069760/rustic_core : lock-more  (ahead 2, behind 223, stars 0)

  - `14488d4` 2024-10-05 feat: Add lock_repo command
  - `96b8476` 2024-10-05 feat: Add more locking commands

## 543069760/rustic_core : opendal  (ahead 1, behind 122, stars 0)

  - `b757175` 2025-09-12 update opendal

## 543069760/rustic_core : pack-padding  (ahead 29, behind 132, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `839a49c` 2025-06-12 WIP: Use padding for packfiles
  - `8f6ae7e` 2025-06-30 pad by filling up to next 64kiB; correct statistics
  - `b76b12f` 2025-07-02 correct test
  - `d2bdcd4` 2025-07-02 only check for padding blobs in prune if padding option is selected
  - `6a0736a` 2025-07-02 add test without padding
  - `ec01585` 2025-07-02 use padding only for 1 test
  - `e08c823` 2025-07-02 prevent 0-size padding; update comments
  - `7a63042` 2025-07-02 adapt windows tests
  - `7738b70` 2025-07-02 correct padding size computation

## 543069760/rustic_core : release-plz-2024-09-10T13-13-47Z  (ahead 1, behind 263, stars 0)

  - `6e7b150` 2024-09-23 chore: release

## 543069760/rustic_core : release-plz-2024-10-02T18-41-54Z  (ahead 1, behind 225, stars 0)

  - `4369057` 2024-10-03 chore: release

## 543069760/rustic_core : release-plz-2024-11-27T10-30-54Z  (ahead 1, behind 165, stars 0)

  - `61f4d8e` 2024-11-27 chore(rustic_backend): release v0.5.2

## 543069760/rustic_core : release-plz-2024-12-11T00-11-58Z  (ahead 1, behind 133, stars 0)

  - `f45b347` 2025-06-29 chore: release

## 543069760/rustic_core : renovate/all-actions  (ahead 2, behind 143, stars 0)

  - `18480c9` 2024-12-30 chore(deps): update actions
  - `1b29692` 2025-04-19 Merge branch 'main' into renovate/all-actions

## 543069760/rustic_core : renovate/crate-serde_with-vulnerability  (ahead 1, behind 46, stars 0)

  - `6607a84` 2026-07-16 chore(deps): update rust crate serde_with to v3.21.0 [security]

## 543069760/rustic_core : restore-sparse  (ahead 1, behind 46, stars 0)

  - `ea68b34` 2026-06-17 feat: Add sparse file support for restore

## 543069760/rustic_core : separate-be  (ahead 21, behind 131, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `9555d5b` 2025-08-02 Merge branch 'main' into separate-be

## 543069760/rustic_core : typed_path  (ahead 23, behind 121, stars 0)

  - `3706a32` 2024-12-29 use typed_path
  - `af7037f` 2025-01-11 fix windows build
  - `aff6924` 2025-01-11 more windows fixes
  - `a1f2a33` 2025-01-11 more windows fixes
  - `b8516d2` 2025-01-11 more windows fixes
  - `c71e783` 2025-01-11 more windows fixes
  - `377d52f` 2025-01-12 add util::GlobMatcherExt
  - `d3bb945` 2025-01-12 handle as_path correctly
  - `06b086a` 2025-01-13 fix unix tests
  - `d614f11` 2025-01-13 correctly convert windows into unix path
  - `0803495` 2025-01-13 update windwos snapshots
  - `d127fce` 2025-01-13 update snapshots
  - `04f2e0b` 2025-01-13 remove platform dependency in find snapshots
  - `f4e27f2` 2025-01-13 add util description
  - `3e421ae` 2025-01-13 docu for mod util
  - `219f56c` 2025-01-14 add tests
  - `9401a4e` 2025-01-14 more tests
  - `4655275` 2025-01-19 more util funcs
  - `b6abc4e` 2025-05-23 adaptions to use with rustic
  - `0982644` 2025-05-23 fix windows build
  - `f7bc8a5` 2025-07-07 apply review hints
  - `4a34307` 2025-07-09 make helper funcs public
  - `5db575d` 2025-10-23 adapt check errors

## 543069760/rustic_core : update-cache  (ahead 1, behind 144, stars 0)

  - `0950ed6` 2025-03-05 update Swatinem/rust-cache

## ericg2/rustic_core : main  (ahead 108, behind 46, stars 0)

  - `81f29e3` 2026-06-09 changes
  - `90a83f8` 2026-06-15 stuff
  - `495f0c8` 2026-06-15 cleanup
  - `5dff0c0` 2026-06-16 changes
  - `123c08d` 2026-06-16 fixed stuff
  - `e33a025` 2026-06-17 fixed issues
  - `96cbdd5` 2026-06-17 added clap
  - `6988172` 2026-06-17 fixed issue
  - `3d093d9` 2026-06-17 fixes
  - `f34f9fa` 2026-06-17 fixed restore
  - `264b5c8` 2026-06-17 fixed issue
  - `e6a31a1` 2026-06-17 stuff
  - `815dc13` 2026-06-17 testing
  - `25cf492` 2026-06-18 stuff
  - `8a08e6f` 2026-06-19 maybe fixed restore
  - `283d477` 2026-06-19 stuff
  - `426fa9d` 2026-06-19 stuff
  - `9cd5745` 2026-06-19 final fix
  - `39a45b7` 2026-06-19 fixed bug
  - `868e946` 2026-06-19 new restore logic
  - `ab7193e` 2026-06-19 changed features
  - `8692545` 2026-06-20 added fixes
  - `fece1a4` 2026-06-20 docs
  - `9a2bbb6` 2026-06-20 fixed log
  - `789bdb2` 2026-06-20 bug fixes
  - `bac1f7c` 2026-06-20 stuff
  - `f49cf59` 2026-06-20 stuf
  - `903850f` 2026-06-20 fixes
  - `2c256e6` 2026-06-20 stuff
  - `3f3e637` 2026-06-20 cargo fmt
  - ... 78 more

## XayahSuSuSu/rustic_core : android-build  (ahead 1, behind 50, stars 0)

  - `dbb5c31` 2026-05-28 fix: Build for 32-bit Android

## davidcforbes/rustic_core : backend-features  (ahead 10, behind 131, stars 0)

  - `23ee8bd` 2025-07-18 backend: Use features for opendal services
  - `e1c592a` 2025-07-20 update deps
  - `bec33e4` 2025-07-20 remove ftp feature
  - `9681088` 2025-07-20 fix url dep
  - `57d07b9` 2025-07-22 use feature "ci" in pipelines
  - `851993d` 2025-07-22 fix workflows
  - `930aa54` 2025-07-22 add missing licence
  - `40196f4` 2025-07-22 fix deny.toml
  - `6dfcad6` 2025-07-26 use ci features in ci-heavy.yml
  - `f7f48ec` 2025-07-26 Merge branch 'main' into backend-features

## davidcforbes/rustic_core : cache-warnings  (ahead 1, behind 319, stars 0)

  - `773edad` 2024-04-27 fix: Improve warnings in case of cache errors

## davidcforbes/rustic_core : examples-no-crate  (ahead 4, behind 132, stars 0)

  - `68af55e` 2025-07-22 move examples in rustic_core crate
  - `0648ab3` 2025-07-22 fmt and clippy for examples
  - `5cd6ffd` 2025-07-22 clippy for examples
  - `85e78e2` 2025-07-22 clippy for examples

## davidcforbes/rustic_core : feat/error_handling  (ahead 6, behind 222, stars 0)

  - `8e227da` 2024-10-06 feat(errors): add a RusticIssueCollector
  - `0b74f3c` 2024-10-06 add new issue types
  - `ff5ba3c` 2024-10-06 add RusticIssueResult
  - `8d610bd` 2024-10-06 replace RusticIssueResult struct with type alias
  - `d2dfd46` 2024-10-06 reduce visibility to crate public
  - `b74d2bf` 2024-10-06 reduce visibility of methods to crate public

## davidcforbes/rustic_core : feat/remove-unwrap-expect  (ahead 58, behind 326, stars 0)

  - `31b1b9f` 2024-03-17 test: implement more tests and rename tests for consistency
  - `0ef7c22` 2024-03-17 rename trait for checking errors in rest backend
  - `76f2bed` 2024-03-17 implement transpose on ParentResult and some error handling fixes
  - `39089b1` 2024-03-17 fix doc test and export for overwrite zero duration
  - `5ba3c02` 2024-03-17 rework Id/HexId
  - `ad9203b` 2024-03-17 use parking lot
  - `bce58de` 2024-03-17 more errors for error handling
  - `ccca56d` 2024-03-17 rename filename to file_name (and dir_name) to make it consistent over the code base, also handle cli changes with alias
  - `f24105e` 2024-03-17 rename new_cache to from_backend to make source/intent clearer
  - `0a62645` 2024-03-17 handle fallible location() method
  - `c205d45` 2024-03-17 fix non-self-describing variable names that make it hard to read the code
  - `1ae7a82` 2024-03-17 add more documentation about errors etc
  - `7e0f0ca` 2024-03-17 rename new_node to from_type_and_metadata to make the intent more clear and keep good style
  - `0128764` 2024-03-17 impl Display for Cache
  - `896a14a` 2024-03-17 remove default impl from nodetype as it can be derived
  - `5910c3b` 2024-03-17 impl Debug for Packer
  - `3add91c` 2024-03-17 factor out calculate_pack_size to make it easier testable
  - `2f5d6ea` 2024-03-17 handle TreeArchiver::apply errors and refactor to make it safe against overflows
  - `bf1419f` 2024-03-17 make link_target more consistent over the code base as well
  - `8d2f432` 2024-03-17 use expect to unwrap runtime
  - `1713a01` 2024-03-17 store joinhandle in rclone backend struct and join in Drop impl
  - `a75b4ae` 2024-03-17 warn the user if we shadow their already said rclone user and pass
  - `27a708a` 2024-03-17 cleanup panic docs
  - `35c8fef` 2024-03-17 allow expect for trait method impl
  - `3d9ebb9` 2024-03-17 we allow expect here, because it should always give some and otherwise we would need to create a backoff::Error<reqwest::Error> which is super annoying
  - `d0b0255` 2024-03-17 handle errors in Cache::list_with_size
  - `0439d61` 2024-03-17 bubble up options in TreeIterator
  - `034634b` 2024-03-17 add/remove docs, imports, and derives. derives e.g. serialize for insta test impl
  - `b70e8c0` 2024-03-17 handle option in iter
  - `63a6744` 2024-03-17 Don't panic on file not being able to be deleted.
  - ... 28 more

## davidcforbes/rustic_core : feat/summary  (ahead 20, behind 145, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `08a66fb` 2024-11-25 feat: update retrieve_from_arc_mutex method to use Self type
  - `f30bb6e` 2024-11-25 feat: add assertions to tests for contains_error method in Summary
  - `68b40c9` 2025-01-12 Merge branch 'main' into feat/summary

## davidcforbes/rustic_core : feat/summary-check  (ahead 24, behind 170, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `4316068` 2024-11-25 feat: update check_repository and check_cache_files to return Summary and improve concurrency handling
  - `2f5c7bf` 2024-11-25 feat: enhance error handling in check_cache_files to log errors in Summary with IssueScope
  - `fe64fdd` 2024-11-25 feat: enhance summary logging in check_repository and check_hot_files for better error reporting
  - `525e382` 2024-11-25 feat: refactor summary handling in merge and archiver
  - `36b2e9a` 2024-11-25 feat: add clippy lint allowance for check_repository and update test to capture summary
  - `ce08470` 2024-11-25 feat: simplify summary initialization by removing Mutex and using into_arc_mutex
  - `a2aee81` 2024-11-25 feat: streamline summary retrieval by replacing Mutex unwrapping with retrieve_from_arc_mutex

## davidcforbes/rustic_core : feat/tracing-logging  (ahead 6, behind 200, stars 0)

  - `236ea85` 2024-10-05 feat: replace log with tracing
  - `c9e8292` 2024-10-05 style: cargo fmt
  - `ca56f2d` 2024-10-28 Merge branch 'main' into feat/tracing-logging
  - `62aa898` 2024-10-28 add log feature as default so log and tracing can be used
  - `e95b61b` 2024-10-29 Instrument on:
  - `350eed0` 2024-10-29 add tracing and log feature without feature in core and backend

## davidcforbes/rustic_core : feature/async_incompatible  (ahead 4, behind 194, stars 0)

  - `d10914b` 2024-11-17 fix: typo
  - `51aed6e` 2024-11-17 feat(backend)!: add is_async_compatible method to ReadBackend and Repository
  - `1554c67` 2024-11-17 feat: impl is_async_incompatible for all backends
  - `b6a3851` 2024-11-17 fix: apply clippy lint

## davidcforbes/rustic_core : feature/outsource_config  (ahead 1, behind 379, stars 0)

  - `4396390` 2024-02-04 outsource config I

## davidcforbes/rustic_core : fix/command_input  (ahead 4, behind 223, stars 0)

  - `15e47aa` 2024-10-03 fix(commands): make CommandInput work with file redirects
  - `adcb1ee` 2024-10-04 join on iter, not with shell-split
  - `8e3b412` 2024-10-04 use winsplit, more cases on win, failing
  - `cff8aa7` 2024-10-04 more test cases

## davidcforbes/rustic_core : fusefs  (ahead 1, behind 306, stars 0)

  - `ad7b125` 2024-02-07 feat: add FuseFs

## davidcforbes/rustic_core : index-search  (ahead 2, behind 142, stars 0)

  - `51ff8e4` 2025-04-20 add benchmark
  - `cc615b5` 2025-04-24 use interpolation_search for index

## davidcforbes/rustic_core : kopia-gw7a-sd-apply-fallback  (ahead 22, behind 61, stars 0)

  - `bfc942a` 2026-05-19 feat(windows): generic_attributes carrier on Metadata
  - `725bc9e` 2026-05-19 feat(windows): capture security descriptor into generic_attributes
  - `10f9ec6` 2026-05-19 feat(windows): apply security descriptor from generic_attributes on restore
  - `4dc8b67` 2026-05-20 feat(node): GenericAttributeValue enum for restic-compat wire shape (kopia-0dr.53)
  - `a202fb6` 2026-05-20 refactor(node): swap generic_attributes value type to GenericAttributeValue (kopia-0dr.53)
  - `b8e912e` 2026-05-20 feat(node): capture windows.file_attributes + windows.creation_time (kopia-0dr.53)
  - `46c4bc7` 2026-05-20 feat(local_destination): apply windows.file_attributes + creation_time (kopia-0dr.53)
  - `c86f967` 2026-05-20 feat(node): win_ads — FindFirstStreamW NTFS ADS enumeration (kopia-0dr.53)
  - `e95e936` 2026-05-20 feat(ignore): walker hook to yield NTFS ADS as sibling File entries (kopia-0dr.53)
  - `43c9b6b` 2026-05-20 feat(node): SparseExtents variant on GenericAttributeValue (kopia-0dr.54)
  - `4e9c156` 2026-05-20 feat(node): win_sparse — NTFS sparse-file capture + apply (kopia-0dr.54)
  - `d781920` 2026-05-20 feat(mapper): capture windows.sparse_extents on sparse source files (kopia-0dr.54)
  - `7b84c0f` 2026-05-20 feat(local_destination): apply windows.sparse_extents via FSCTL_SET_SPARSE + ZERO_DATA (kopia-0dr.54)
  - `c5b9110` 2026-05-20 feat(node): ReparsePoint variant + ReparseBlob struct in GenericAttributeValue (kopia-4rf)
  - `adf7038` 2026-05-20 feat(node): win_reparse — NTFS reparse-point capture + apply (kopia-4rf)
  - `58a1b0b` 2026-05-20 feat(mapper,ignore): capture windows.reparse_point + walker guard (kopia-4rf)
  - `ddb736a` 2026-05-20 feat(local_destination): apply windows.reparse_point via FSCTL_SET_REPARSE_POINT (kopia-4rf)
  - `d32c987` 2026-05-20 fix(local_destination): create scaffold host for reparse restore (kopia-4rf)
  - `4ca0f33` 2026-05-24 feat(repository): backup_with_source<R: ReadSource> generic entry
  - `0aa8aa6` 2026-05-24 feat(ignore): parallel walker via WalkParallel (Phase A, kopia-0dr.63.1)
  - `7a4cb9f` 2026-05-27 fix(win_sd): graceful privilege fallback in apply() (kopia-gw7a)
  - `328ed38` 2026-05-31 perf(walk): parallel chunked node-build + eliminate 3 redundant per-file syscalls (kopia-0dr.63.11)

## davidcforbes/rustic_core : lock  (ahead 2, behind 139, stars 0)

  - `1a526bd` 2024-10-05 feat: Add lock_repo command
  - `5c229c5` 2024-10-06 Proposed changes from review

## davidcforbes/rustic_core : lock-more  (ahead 2, behind 223, stars 0)

  - `14488d4` 2024-10-05 feat: Add lock_repo command
  - `96b8476` 2024-10-05 feat: Add more locking commands

## davidcforbes/rustic_core : opendal  (ahead 1, behind 122, stars 0)

  - `b757175` 2025-09-12 update opendal

## davidcforbes/rustic_core : pack-padding  (ahead 29, behind 132, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `839a49c` 2025-06-12 WIP: Use padding for packfiles
  - `8f6ae7e` 2025-06-30 pad by filling up to next 64kiB; correct statistics
  - `b76b12f` 2025-07-02 correct test
  - `d2bdcd4` 2025-07-02 only check for padding blobs in prune if padding option is selected
  - `6a0736a` 2025-07-02 add test without padding
  - `ec01585` 2025-07-02 use padding only for 1 test
  - `e08c823` 2025-07-02 prevent 0-size padding; update comments
  - `7a63042` 2025-07-02 adapt windows tests
  - `7738b70` 2025-07-02 correct padding size computation

## davidcforbes/rustic_core : phase-a-walk-parallel  (ahead 20, behind 61, stars 0)

  - `bfc942a` 2026-05-19 feat(windows): generic_attributes carrier on Metadata
  - `725bc9e` 2026-05-19 feat(windows): capture security descriptor into generic_attributes
  - `10f9ec6` 2026-05-19 feat(windows): apply security descriptor from generic_attributes on restore
  - `4dc8b67` 2026-05-20 feat(node): GenericAttributeValue enum for restic-compat wire shape (kopia-0dr.53)
  - `a202fb6` 2026-05-20 refactor(node): swap generic_attributes value type to GenericAttributeValue (kopia-0dr.53)
  - `b8e912e` 2026-05-20 feat(node): capture windows.file_attributes + windows.creation_time (kopia-0dr.53)
  - `46c4bc7` 2026-05-20 feat(local_destination): apply windows.file_attributes + creation_time (kopia-0dr.53)
  - `c86f967` 2026-05-20 feat(node): win_ads — FindFirstStreamW NTFS ADS enumeration (kopia-0dr.53)
  - `e95e936` 2026-05-20 feat(ignore): walker hook to yield NTFS ADS as sibling File entries (kopia-0dr.53)
  - `43c9b6b` 2026-05-20 feat(node): SparseExtents variant on GenericAttributeValue (kopia-0dr.54)
  - `4e9c156` 2026-05-20 feat(node): win_sparse — NTFS sparse-file capture + apply (kopia-0dr.54)
  - `d781920` 2026-05-20 feat(mapper): capture windows.sparse_extents on sparse source files (kopia-0dr.54)
  - `7b84c0f` 2026-05-20 feat(local_destination): apply windows.sparse_extents via FSCTL_SET_SPARSE + ZERO_DATA (kopia-0dr.54)
  - `c5b9110` 2026-05-20 feat(node): ReparsePoint variant + ReparseBlob struct in GenericAttributeValue (kopia-4rf)
  - `adf7038` 2026-05-20 feat(node): win_reparse — NTFS reparse-point capture + apply (kopia-4rf)
  - `58a1b0b` 2026-05-20 feat(mapper,ignore): capture windows.reparse_point + walker guard (kopia-4rf)
  - `ddb736a` 2026-05-20 feat(local_destination): apply windows.reparse_point via FSCTL_SET_REPARSE_POINT (kopia-4rf)
  - `d32c987` 2026-05-20 fix(local_destination): create scaffold host for reparse restore (kopia-4rf)
  - `4ca0f33` 2026-05-24 feat(repository): backup_with_source<R: ReadSource> generic entry
  - `0aa8aa6` 2026-05-24 feat(ignore): parallel walker via WalkParallel (Phase A, kopia-0dr.63.1)

## davidcforbes/rustic_core : phase-e-backup-with-source  (ahead 19, behind 61, stars 0)

  - `bfc942a` 2026-05-19 feat(windows): generic_attributes carrier on Metadata
  - `725bc9e` 2026-05-19 feat(windows): capture security descriptor into generic_attributes
  - `10f9ec6` 2026-05-19 feat(windows): apply security descriptor from generic_attributes on restore
  - `4dc8b67` 2026-05-20 feat(node): GenericAttributeValue enum for restic-compat wire shape (kopia-0dr.53)
  - `a202fb6` 2026-05-20 refactor(node): swap generic_attributes value type to GenericAttributeValue (kopia-0dr.53)
  - `b8e912e` 2026-05-20 feat(node): capture windows.file_attributes + windows.creation_time (kopia-0dr.53)
  - `46c4bc7` 2026-05-20 feat(local_destination): apply windows.file_attributes + creation_time (kopia-0dr.53)
  - `c86f967` 2026-05-20 feat(node): win_ads — FindFirstStreamW NTFS ADS enumeration (kopia-0dr.53)
  - `e95e936` 2026-05-20 feat(ignore): walker hook to yield NTFS ADS as sibling File entries (kopia-0dr.53)
  - `43c9b6b` 2026-05-20 feat(node): SparseExtents variant on GenericAttributeValue (kopia-0dr.54)
  - `4e9c156` 2026-05-20 feat(node): win_sparse — NTFS sparse-file capture + apply (kopia-0dr.54)
  - `d781920` 2026-05-20 feat(mapper): capture windows.sparse_extents on sparse source files (kopia-0dr.54)
  - `7b84c0f` 2026-05-20 feat(local_destination): apply windows.sparse_extents via FSCTL_SET_SPARSE + ZERO_DATA (kopia-0dr.54)
  - `c5b9110` 2026-05-20 feat(node): ReparsePoint variant + ReparseBlob struct in GenericAttributeValue (kopia-4rf)
  - `adf7038` 2026-05-20 feat(node): win_reparse — NTFS reparse-point capture + apply (kopia-4rf)
  - `58a1b0b` 2026-05-20 feat(mapper,ignore): capture windows.reparse_point + walker guard (kopia-4rf)
  - `ddb736a` 2026-05-20 feat(local_destination): apply windows.reparse_point via FSCTL_SET_REPARSE_POINT (kopia-4rf)
  - `d32c987` 2026-05-20 fix(local_destination): create scaffold host for reparse restore (kopia-4rf)
  - `4ca0f33` 2026-05-24 feat(repository): backup_with_source<R: ReadSource> generic entry

## davidcforbes/rustic_core : pl3-timestamp-round-trip  (ahead 21, behind 61, stars 0)

  - `bfc942a` 2026-05-19 feat(windows): generic_attributes carrier on Metadata
  - `725bc9e` 2026-05-19 feat(windows): capture security descriptor into generic_attributes
  - `10f9ec6` 2026-05-19 feat(windows): apply security descriptor from generic_attributes on restore
  - `4dc8b67` 2026-05-20 feat(node): GenericAttributeValue enum for restic-compat wire shape (kopia-0dr.53)
  - `a202fb6` 2026-05-20 refactor(node): swap generic_attributes value type to GenericAttributeValue (kopia-0dr.53)
  - `b8e912e` 2026-05-20 feat(node): capture windows.file_attributes + windows.creation_time (kopia-0dr.53)
  - `46c4bc7` 2026-05-20 feat(local_destination): apply windows.file_attributes + creation_time (kopia-0dr.53)
  - `c86f967` 2026-05-20 feat(node): win_ads — FindFirstStreamW NTFS ADS enumeration (kopia-0dr.53)
  - `e95e936` 2026-05-20 feat(ignore): walker hook to yield NTFS ADS as sibling File entries (kopia-0dr.53)
  - `43c9b6b` 2026-05-20 feat(node): SparseExtents variant on GenericAttributeValue (kopia-0dr.54)
  - `4e9c156` 2026-05-20 feat(node): win_sparse — NTFS sparse-file capture + apply (kopia-0dr.54)
  - `d781920` 2026-05-20 feat(mapper): capture windows.sparse_extents on sparse source files (kopia-0dr.54)
  - `7b84c0f` 2026-05-20 feat(local_destination): apply windows.sparse_extents via FSCTL_SET_SPARSE + ZERO_DATA (kopia-0dr.54)
  - `c5b9110` 2026-05-20 feat(node): ReparsePoint variant + ReparseBlob struct in GenericAttributeValue (kopia-4rf)
  - `adf7038` 2026-05-20 feat(node): win_reparse — NTFS reparse-point capture + apply (kopia-4rf)
  - `58a1b0b` 2026-05-20 feat(mapper,ignore): capture windows.reparse_point + walker guard (kopia-4rf)
  - `ddb736a` 2026-05-20 feat(local_destination): apply windows.reparse_point via FSCTL_SET_REPARSE_POINT (kopia-4rf)
  - `d32c987` 2026-05-20 fix(local_destination): create scaffold host for reparse restore (kopia-4rf)
  - `4ca0f33` 2026-05-24 feat(repository): backup_with_source<R: ReadSource> generic entry
  - `0aa8aa6` 2026-05-24 feat(ignore): parallel walker via WalkParallel (Phase A, kopia-0dr.63.1)
  - `989ac2e` 2026-05-24 test(repofile): falsify RusticTime serde round-trip asymmetry (kopia-pl3 Track 1)

## davidcforbes/rustic_core : release-plz-2024-09-10T13-13-47Z  (ahead 1, behind 263, stars 0)

  - `6e7b150` 2024-09-23 chore: release

## davidcforbes/rustic_core : release-plz-2024-10-02T18-41-54Z  (ahead 1, behind 225, stars 0)

  - `4369057` 2024-10-03 chore: release

## davidcforbes/rustic_core : release-plz-2024-11-27T10-30-54Z  (ahead 1, behind 165, stars 0)

  - `61f4d8e` 2024-11-27 chore(rustic_backend): release v0.5.2

## davidcforbes/rustic_core : release-plz-2024-12-11T00-11-58Z  (ahead 1, behind 133, stars 0)

  - `f45b347` 2025-06-29 chore: release

## davidcforbes/rustic_core : release-plz-2026-04-10T20-25-51Z  (ahead 1, behind 53, stars 0)

  - `0b2680d` 2026-05-14 chore: release

## davidcforbes/rustic_core : renovate/all-actions  (ahead 2, behind 143, stars 0)

  - `18480c9` 2024-12-30 chore(deps): update actions
  - `1b29692` 2025-04-19 Merge branch 'main' into renovate/all-actions

## davidcforbes/rustic_core : separate-be  (ahead 21, behind 131, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `9555d5b` 2025-08-02 Merge branch 'main' into separate-be

## davidcforbes/rustic_core : typed_path  (ahead 23, behind 121, stars 0)

  - `3706a32` 2024-12-29 use typed_path
  - `af7037f` 2025-01-11 fix windows build
  - `aff6924` 2025-01-11 more windows fixes
  - `a1f2a33` 2025-01-11 more windows fixes
  - `b8516d2` 2025-01-11 more windows fixes
  - `c71e783` 2025-01-11 more windows fixes
  - `377d52f` 2025-01-12 add util::GlobMatcherExt
  - `d3bb945` 2025-01-12 handle as_path correctly
  - `06b086a` 2025-01-13 fix unix tests
  - `d614f11` 2025-01-13 correctly convert windows into unix path
  - `0803495` 2025-01-13 update windwos snapshots
  - `d127fce` 2025-01-13 update snapshots
  - `04f2e0b` 2025-01-13 remove platform dependency in find snapshots
  - `f4e27f2` 2025-01-13 add util description
  - `3e421ae` 2025-01-13 docu for mod util
  - `219f56c` 2025-01-14 add tests
  - `9401a4e` 2025-01-14 more tests
  - `4655275` 2025-01-19 more util funcs
  - `b6abc4e` 2025-05-23 adaptions to use with rustic
  - `0982644` 2025-05-23 fix windows build
  - `f7bc8a5` 2025-07-07 apply review hints
  - `4a34307` 2025-07-09 make helper funcs public
  - `5db575d` 2025-10-23 adapt check errors

## davidcforbes/rustic_core : update-cache  (ahead 1, behind 144, stars 0)

  - `0950ed6` 2025-03-05 update Swatinem/rust-cache

## davidcforbes/rustic_core : windows-metadata  (ahead 3, behind 61, stars 0)

  - `bfc942a` 2026-05-19 feat(windows): generic_attributes carrier on Metadata
  - `725bc9e` 2026-05-19 feat(windows): capture security descriptor into generic_attributes
  - `10f9ec6` 2026-05-19 feat(windows): apply security descriptor from generic_attributes on restore

## davidcforbes/rustic_core : windows-metadata-2b  (ahead 9, behind 61, stars 0)

  - `bfc942a` 2026-05-19 feat(windows): generic_attributes carrier on Metadata
  - `725bc9e` 2026-05-19 feat(windows): capture security descriptor into generic_attributes
  - `10f9ec6` 2026-05-19 feat(windows): apply security descriptor from generic_attributes on restore
  - `4dc8b67` 2026-05-20 feat(node): GenericAttributeValue enum for restic-compat wire shape (kopia-0dr.53)
  - `a202fb6` 2026-05-20 refactor(node): swap generic_attributes value type to GenericAttributeValue (kopia-0dr.53)
  - `b8e912e` 2026-05-20 feat(node): capture windows.file_attributes + windows.creation_time (kopia-0dr.53)
  - `46c4bc7` 2026-05-20 feat(local_destination): apply windows.file_attributes + creation_time (kopia-0dr.53)
  - `c86f967` 2026-05-20 feat(node): win_ads — FindFirstStreamW NTFS ADS enumeration (kopia-0dr.53)
  - `e95e936` 2026-05-20 feat(ignore): walker hook to yield NTFS ADS as sibling File entries (kopia-0dr.53)

## davidcforbes/rustic_core : windows-metadata-2c  (ahead 18, behind 61, stars 0)

  - `bfc942a` 2026-05-19 feat(windows): generic_attributes carrier on Metadata
  - `725bc9e` 2026-05-19 feat(windows): capture security descriptor into generic_attributes
  - `10f9ec6` 2026-05-19 feat(windows): apply security descriptor from generic_attributes on restore
  - `4dc8b67` 2026-05-20 feat(node): GenericAttributeValue enum for restic-compat wire shape (kopia-0dr.53)
  - `a202fb6` 2026-05-20 refactor(node): swap generic_attributes value type to GenericAttributeValue (kopia-0dr.53)
  - `b8e912e` 2026-05-20 feat(node): capture windows.file_attributes + windows.creation_time (kopia-0dr.53)
  - `46c4bc7` 2026-05-20 feat(local_destination): apply windows.file_attributes + creation_time (kopia-0dr.53)
  - `c86f967` 2026-05-20 feat(node): win_ads — FindFirstStreamW NTFS ADS enumeration (kopia-0dr.53)
  - `e95e936` 2026-05-20 feat(ignore): walker hook to yield NTFS ADS as sibling File entries (kopia-0dr.53)
  - `43c9b6b` 2026-05-20 feat(node): SparseExtents variant on GenericAttributeValue (kopia-0dr.54)
  - `4e9c156` 2026-05-20 feat(node): win_sparse — NTFS sparse-file capture + apply (kopia-0dr.54)
  - `d781920` 2026-05-20 feat(mapper): capture windows.sparse_extents on sparse source files (kopia-0dr.54)
  - `7b84c0f` 2026-05-20 feat(local_destination): apply windows.sparse_extents via FSCTL_SET_SPARSE + ZERO_DATA (kopia-0dr.54)
  - `c5b9110` 2026-05-20 feat(node): ReparsePoint variant + ReparseBlob struct in GenericAttributeValue (kopia-4rf)
  - `adf7038` 2026-05-20 feat(node): win_reparse — NTFS reparse-point capture + apply (kopia-4rf)
  - `58a1b0b` 2026-05-20 feat(mapper,ignore): capture windows.reparse_point + walker guard (kopia-4rf)
  - `ddb736a` 2026-05-20 feat(local_destination): apply windows.reparse_point via FSCTL_SET_REPARSE_POINT (kopia-4rf)
  - `d32c987` 2026-05-20 fix(local_destination): create scaffold host for reparse restore (kopia-4rf)

## davidcforbes/rustic_core : windows-metadata-2d  (ahead 13, behind 61, stars 0)

  - `bfc942a` 2026-05-19 feat(windows): generic_attributes carrier on Metadata
  - `725bc9e` 2026-05-19 feat(windows): capture security descriptor into generic_attributes
  - `10f9ec6` 2026-05-19 feat(windows): apply security descriptor from generic_attributes on restore
  - `4dc8b67` 2026-05-20 feat(node): GenericAttributeValue enum for restic-compat wire shape (kopia-0dr.53)
  - `a202fb6` 2026-05-20 refactor(node): swap generic_attributes value type to GenericAttributeValue (kopia-0dr.53)
  - `b8e912e` 2026-05-20 feat(node): capture windows.file_attributes + windows.creation_time (kopia-0dr.53)
  - `46c4bc7` 2026-05-20 feat(local_destination): apply windows.file_attributes + creation_time (kopia-0dr.53)
  - `c86f967` 2026-05-20 feat(node): win_ads — FindFirstStreamW NTFS ADS enumeration (kopia-0dr.53)
  - `e95e936` 2026-05-20 feat(ignore): walker hook to yield NTFS ADS as sibling File entries (kopia-0dr.53)
  - `43c9b6b` 2026-05-20 feat(node): SparseExtents variant on GenericAttributeValue (kopia-0dr.54)
  - `4e9c156` 2026-05-20 feat(node): win_sparse — NTFS sparse-file capture + apply (kopia-0dr.54)
  - `d781920` 2026-05-20 feat(mapper): capture windows.sparse_extents on sparse source files (kopia-0dr.54)
  - `7b84c0f` 2026-05-20 feat(local_destination): apply windows.sparse_extents via FSCTL_SET_SPARSE + ZERO_DATA (kopia-0dr.54)

## ChecksumDev/rustic_core : backend-features  (ahead 10, behind 131, stars 0)

  - `23ee8bd` 2025-07-18 backend: Use features for opendal services
  - `e1c592a` 2025-07-20 update deps
  - `bec33e4` 2025-07-20 remove ftp feature
  - `9681088` 2025-07-20 fix url dep
  - `57d07b9` 2025-07-22 use feature "ci" in pipelines
  - `851993d` 2025-07-22 fix workflows
  - `930aa54` 2025-07-22 add missing licence
  - `40196f4` 2025-07-22 fix deny.toml
  - `6dfcad6` 2025-07-26 use ci features in ci-heavy.yml
  - `f7f48ec` 2025-07-26 Merge branch 'main' into backend-features

## ChecksumDev/rustic_core : cache-warnings  (ahead 1, behind 319, stars 0)

  - `773edad` 2024-04-27 fix: Improve warnings in case of cache errors

## ChecksumDev/rustic_core : examples-no-crate  (ahead 4, behind 132, stars 0)

  - `68af55e` 2025-07-22 move examples in rustic_core crate
  - `0648ab3` 2025-07-22 fmt and clippy for examples
  - `5cd6ffd` 2025-07-22 clippy for examples
  - `85e78e2` 2025-07-22 clippy for examples

## ChecksumDev/rustic_core : feat/error_handling  (ahead 6, behind 222, stars 0)

  - `8e227da` 2024-10-06 feat(errors): add a RusticIssueCollector
  - `0b74f3c` 2024-10-06 add new issue types
  - `ff5ba3c` 2024-10-06 add RusticIssueResult
  - `8d610bd` 2024-10-06 replace RusticIssueResult struct with type alias
  - `d2dfd46` 2024-10-06 reduce visibility to crate public
  - `b74d2bf` 2024-10-06 reduce visibility of methods to crate public

## ChecksumDev/rustic_core : feat/parallel-dump  (ahead 2, behind 58, stars 0)

  - `7ff0b5c` 2026-05-03 perf: parallelize blob fetch in dump command
  - `4409311` 2026-05-06 perf: hard-code parallelism for dump blob fetch

## ChecksumDev/rustic_core : feat/remove-unwrap-expect  (ahead 58, behind 326, stars 0)

  - `31b1b9f` 2024-03-17 test: implement more tests and rename tests for consistency
  - `0ef7c22` 2024-03-17 rename trait for checking errors in rest backend
  - `76f2bed` 2024-03-17 implement transpose on ParentResult and some error handling fixes
  - `39089b1` 2024-03-17 fix doc test and export for overwrite zero duration
  - `5ba3c02` 2024-03-17 rework Id/HexId
  - `ad9203b` 2024-03-17 use parking lot
  - `bce58de` 2024-03-17 more errors for error handling
  - `ccca56d` 2024-03-17 rename filename to file_name (and dir_name) to make it consistent over the code base, also handle cli changes with alias
  - `f24105e` 2024-03-17 rename new_cache to from_backend to make source/intent clearer
  - `0a62645` 2024-03-17 handle fallible location() method
  - `c205d45` 2024-03-17 fix non-self-describing variable names that make it hard to read the code
  - `1ae7a82` 2024-03-17 add more documentation about errors etc
  - `7e0f0ca` 2024-03-17 rename new_node to from_type_and_metadata to make the intent more clear and keep good style
  - `0128764` 2024-03-17 impl Display for Cache
  - `896a14a` 2024-03-17 remove default impl from nodetype as it can be derived
  - `5910c3b` 2024-03-17 impl Debug for Packer
  - `3add91c` 2024-03-17 factor out calculate_pack_size to make it easier testable
  - `2f5d6ea` 2024-03-17 handle TreeArchiver::apply errors and refactor to make it safe against overflows
  - `bf1419f` 2024-03-17 make link_target more consistent over the code base as well
  - `8d2f432` 2024-03-17 use expect to unwrap runtime
  - `1713a01` 2024-03-17 store joinhandle in rclone backend struct and join in Drop impl
  - `a75b4ae` 2024-03-17 warn the user if we shadow their already said rclone user and pass
  - `27a708a` 2024-03-17 cleanup panic docs
  - `35c8fef` 2024-03-17 allow expect for trait method impl
  - `3d9ebb9` 2024-03-17 we allow expect here, because it should always give some and otherwise we would need to create a backoff::Error<reqwest::Error> which is super annoying
  - `d0b0255` 2024-03-17 handle errors in Cache::list_with_size
  - `0439d61` 2024-03-17 bubble up options in TreeIterator
  - `034634b` 2024-03-17 add/remove docs, imports, and derives. derives e.g. serialize for insta test impl
  - `b70e8c0` 2024-03-17 handle option in iter
  - `63a6744` 2024-03-17 Don't panic on file not being able to be deleted.
  - ... 28 more

## ChecksumDev/rustic_core : feat/summary  (ahead 20, behind 145, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `08a66fb` 2024-11-25 feat: update retrieve_from_arc_mutex method to use Self type
  - `f30bb6e` 2024-11-25 feat: add assertions to tests for contains_error method in Summary
  - `68b40c9` 2025-01-12 Merge branch 'main' into feat/summary

## ChecksumDev/rustic_core : feat/summary-check  (ahead 24, behind 170, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `4316068` 2024-11-25 feat: update check_repository and check_cache_files to return Summary and improve concurrency handling
  - `2f5c7bf` 2024-11-25 feat: enhance error handling in check_cache_files to log errors in Summary with IssueScope
  - `fe64fdd` 2024-11-25 feat: enhance summary logging in check_repository and check_hot_files for better error reporting
  - `525e382` 2024-11-25 feat: refactor summary handling in merge and archiver
  - `36b2e9a` 2024-11-25 feat: add clippy lint allowance for check_repository and update test to capture summary
  - `ce08470` 2024-11-25 feat: simplify summary initialization by removing Mutex and using into_arc_mutex
  - `a2aee81` 2024-11-25 feat: streamline summary retrieval by replacing Mutex unwrapping with retrieve_from_arc_mutex

## ChecksumDev/rustic_core : feat/tracing-logging  (ahead 6, behind 200, stars 0)

  - `236ea85` 2024-10-05 feat: replace log with tracing
  - `c9e8292` 2024-10-05 style: cargo fmt
  - `ca56f2d` 2024-10-28 Merge branch 'main' into feat/tracing-logging
  - `62aa898` 2024-10-28 add log feature as default so log and tracing can be used
  - `e95b61b` 2024-10-29 Instrument on:
  - `350eed0` 2024-10-29 add tracing and log feature without feature in core and backend

## ChecksumDev/rustic_core : feature/async_incompatible  (ahead 4, behind 194, stars 0)

  - `d10914b` 2024-11-17 fix: typo
  - `51aed6e` 2024-11-17 feat(backend)!: add is_async_compatible method to ReadBackend and Repository
  - `1554c67` 2024-11-17 feat: impl is_async_incompatible for all backends
  - `b6a3851` 2024-11-17 fix: apply clippy lint

## ChecksumDev/rustic_core : feature/outsource_config  (ahead 1, behind 379, stars 0)

  - `4396390` 2024-02-04 outsource config I

## ChecksumDev/rustic_core : fix/command_input  (ahead 4, behind 223, stars 0)

  - `15e47aa` 2024-10-03 fix(commands): make CommandInput work with file redirects
  - `adcb1ee` 2024-10-04 join on iter, not with shell-split
  - `8e3b412` 2024-10-04 use winsplit, more cases on win, failing
  - `cff8aa7` 2024-10-04 more test cases

## ChecksumDev/rustic_core : fusefs  (ahead 1, behind 306, stars 0)

  - `ad7b125` 2024-02-07 feat: add FuseFs

## ChecksumDev/rustic_core : index-search  (ahead 2, behind 142, stars 0)

  - `51ff8e4` 2025-04-20 add benchmark
  - `cc615b5` 2025-04-24 use interpolation_search for index

## ChecksumDev/rustic_core : lock  (ahead 2, behind 139, stars 0)

  - `1a526bd` 2024-10-05 feat: Add lock_repo command
  - `5c229c5` 2024-10-06 Proposed changes from review

## ChecksumDev/rustic_core : lock-more  (ahead 2, behind 223, stars 0)

  - `14488d4` 2024-10-05 feat: Add lock_repo command
  - `96b8476` 2024-10-05 feat: Add more locking commands

## ChecksumDev/rustic_core : opendal  (ahead 1, behind 122, stars 0)

  - `b757175` 2025-09-12 update opendal

## ChecksumDev/rustic_core : pack-padding  (ahead 29, behind 132, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `839a49c` 2025-06-12 WIP: Use padding for packfiles
  - `8f6ae7e` 2025-06-30 pad by filling up to next 64kiB; correct statistics
  - `b76b12f` 2025-07-02 correct test
  - `d2bdcd4` 2025-07-02 only check for padding blobs in prune if padding option is selected
  - `6a0736a` 2025-07-02 add test without padding
  - `ec01585` 2025-07-02 use padding only for 1 test
  - `e08c823` 2025-07-02 prevent 0-size padding; update comments
  - `7a63042` 2025-07-02 adapt windows tests
  - `7738b70` 2025-07-02 correct padding size computation

## ChecksumDev/rustic_core : release-plz-2024-09-10T13-13-47Z  (ahead 1, behind 263, stars 0)

  - `6e7b150` 2024-09-23 chore: release

## ChecksumDev/rustic_core : release-plz-2024-10-02T18-41-54Z  (ahead 1, behind 225, stars 0)

  - `4369057` 2024-10-03 chore: release

## ChecksumDev/rustic_core : release-plz-2024-11-27T10-30-54Z  (ahead 1, behind 165, stars 0)

  - `61f4d8e` 2024-11-27 chore(rustic_backend): release v0.5.2

## ChecksumDev/rustic_core : release-plz-2024-12-11T00-11-58Z  (ahead 1, behind 133, stars 0)

  - `f45b347` 2025-06-29 chore: release

## ChecksumDev/rustic_core : release-plz-2026-04-10T20-25-51Z  (ahead 1, behind 58, stars 0)

  - `466ec8c` 2026-04-27 chore(rustic_core): release v0.12.0

## ChecksumDev/rustic_core : renovate/all-actions  (ahead 2, behind 143, stars 0)

  - `18480c9` 2024-12-30 chore(deps): update actions
  - `1b29692` 2025-04-19 Merge branch 'main' into renovate/all-actions

## ChecksumDev/rustic_core : separate-be  (ahead 21, behind 131, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `9555d5b` 2025-08-02 Merge branch 'main' into separate-be

## ChecksumDev/rustic_core : typed_path  (ahead 23, behind 121, stars 0)

  - `3706a32` 2024-12-29 use typed_path
  - `af7037f` 2025-01-11 fix windows build
  - `aff6924` 2025-01-11 more windows fixes
  - `a1f2a33` 2025-01-11 more windows fixes
  - `b8516d2` 2025-01-11 more windows fixes
  - `c71e783` 2025-01-11 more windows fixes
  - `377d52f` 2025-01-12 add util::GlobMatcherExt
  - `d3bb945` 2025-01-12 handle as_path correctly
  - `06b086a` 2025-01-13 fix unix tests
  - `d614f11` 2025-01-13 correctly convert windows into unix path
  - `0803495` 2025-01-13 update windwos snapshots
  - `d127fce` 2025-01-13 update snapshots
  - `04f2e0b` 2025-01-13 remove platform dependency in find snapshots
  - `f4e27f2` 2025-01-13 add util description
  - `3e421ae` 2025-01-13 docu for mod util
  - `219f56c` 2025-01-14 add tests
  - `9401a4e` 2025-01-14 more tests
  - `4655275` 2025-01-19 more util funcs
  - `b6abc4e` 2025-05-23 adaptions to use with rustic
  - `0982644` 2025-05-23 fix windows build
  - `f7bc8a5` 2025-07-07 apply review hints
  - `4a34307` 2025-07-09 make helper funcs public
  - `5db575d` 2025-10-23 adapt check errors

## ChecksumDev/rustic_core : update-cache  (ahead 1, behind 144, stars 0)

  - `0950ed6` 2025-03-05 update Swatinem/rust-cache

## decaychain/rustic_core : backend-features  (ahead 10, behind 131, stars 0)

  - `23ee8bd` 2025-07-18 backend: Use features for opendal services
  - `e1c592a` 2025-07-20 update deps
  - `bec33e4` 2025-07-20 remove ftp feature
  - `9681088` 2025-07-20 fix url dep
  - `57d07b9` 2025-07-22 use feature "ci" in pipelines
  - `851993d` 2025-07-22 fix workflows
  - `930aa54` 2025-07-22 add missing licence
  - `40196f4` 2025-07-22 fix deny.toml
  - `6dfcad6` 2025-07-26 use ci features in ci-heavy.yml
  - `f7f48ec` 2025-07-26 Merge branch 'main' into backend-features

## decaychain/rustic_core : cache-warnings  (ahead 1, behind 319, stars 0)

  - `773edad` 2024-04-27 fix: Improve warnings in case of cache errors

## decaychain/rustic_core : examples-no-crate  (ahead 4, behind 132, stars 0)

  - `68af55e` 2025-07-22 move examples in rustic_core crate
  - `0648ab3` 2025-07-22 fmt and clippy for examples
  - `5cd6ffd` 2025-07-22 clippy for examples
  - `85e78e2` 2025-07-22 clippy for examples

## decaychain/rustic_core : feat/error_handling  (ahead 6, behind 222, stars 0)

  - `8e227da` 2024-10-06 feat(errors): add a RusticIssueCollector
  - `0b74f3c` 2024-10-06 add new issue types
  - `ff5ba3c` 2024-10-06 add RusticIssueResult
  - `8d610bd` 2024-10-06 replace RusticIssueResult struct with type alias
  - `d2dfd46` 2024-10-06 reduce visibility to crate public
  - `b74d2bf` 2024-10-06 reduce visibility of methods to crate public

## decaychain/rustic_core : feat/remove-unwrap-expect  (ahead 58, behind 326, stars 0)

  - `31b1b9f` 2024-03-17 test: implement more tests and rename tests for consistency
  - `0ef7c22` 2024-03-17 rename trait for checking errors in rest backend
  - `76f2bed` 2024-03-17 implement transpose on ParentResult and some error handling fixes
  - `39089b1` 2024-03-17 fix doc test and export for overwrite zero duration
  - `5ba3c02` 2024-03-17 rework Id/HexId
  - `ad9203b` 2024-03-17 use parking lot
  - `bce58de` 2024-03-17 more errors for error handling
  - `ccca56d` 2024-03-17 rename filename to file_name (and dir_name) to make it consistent over the code base, also handle cli changes with alias
  - `f24105e` 2024-03-17 rename new_cache to from_backend to make source/intent clearer
  - `0a62645` 2024-03-17 handle fallible location() method
  - `c205d45` 2024-03-17 fix non-self-describing variable names that make it hard to read the code
  - `1ae7a82` 2024-03-17 add more documentation about errors etc
  - `7e0f0ca` 2024-03-17 rename new_node to from_type_and_metadata to make the intent more clear and keep good style
  - `0128764` 2024-03-17 impl Display for Cache
  - `896a14a` 2024-03-17 remove default impl from nodetype as it can be derived
  - `5910c3b` 2024-03-17 impl Debug for Packer
  - `3add91c` 2024-03-17 factor out calculate_pack_size to make it easier testable
  - `2f5d6ea` 2024-03-17 handle TreeArchiver::apply errors and refactor to make it safe against overflows
  - `bf1419f` 2024-03-17 make link_target more consistent over the code base as well
  - `8d2f432` 2024-03-17 use expect to unwrap runtime
  - `1713a01` 2024-03-17 store joinhandle in rclone backend struct and join in Drop impl
  - `a75b4ae` 2024-03-17 warn the user if we shadow their already said rclone user and pass
  - `27a708a` 2024-03-17 cleanup panic docs
  - `35c8fef` 2024-03-17 allow expect for trait method impl
  - `3d9ebb9` 2024-03-17 we allow expect here, because it should always give some and otherwise we would need to create a backoff::Error<reqwest::Error> which is super annoying
  - `d0b0255` 2024-03-17 handle errors in Cache::list_with_size
  - `0439d61` 2024-03-17 bubble up options in TreeIterator
  - `034634b` 2024-03-17 add/remove docs, imports, and derives. derives e.g. serialize for insta test impl
  - `b70e8c0` 2024-03-17 handle option in iter
  - `63a6744` 2024-03-17 Don't panic on file not being able to be deleted.
  - ... 28 more

## decaychain/rustic_core : feat/summary  (ahead 20, behind 145, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `08a66fb` 2024-11-25 feat: update retrieve_from_arc_mutex method to use Self type
  - `f30bb6e` 2024-11-25 feat: add assertions to tests for contains_error method in Summary
  - `68b40c9` 2025-01-12 Merge branch 'main' into feat/summary

## decaychain/rustic_core : feat/summary-check  (ahead 24, behind 170, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `4316068` 2024-11-25 feat: update check_repository and check_cache_files to return Summary and improve concurrency handling
  - `2f5c7bf` 2024-11-25 feat: enhance error handling in check_cache_files to log errors in Summary with IssueScope
  - `fe64fdd` 2024-11-25 feat: enhance summary logging in check_repository and check_hot_files for better error reporting
  - `525e382` 2024-11-25 feat: refactor summary handling in merge and archiver
  - `36b2e9a` 2024-11-25 feat: add clippy lint allowance for check_repository and update test to capture summary
  - `ce08470` 2024-11-25 feat: simplify summary initialization by removing Mutex and using into_arc_mutex
  - `a2aee81` 2024-11-25 feat: streamline summary retrieval by replacing Mutex unwrapping with retrieve_from_arc_mutex

## decaychain/rustic_core : feat/tracing-logging  (ahead 6, behind 200, stars 0)

  - `236ea85` 2024-10-05 feat: replace log with tracing
  - `c9e8292` 2024-10-05 style: cargo fmt
  - `ca56f2d` 2024-10-28 Merge branch 'main' into feat/tracing-logging
  - `62aa898` 2024-10-28 add log feature as default so log and tracing can be used
  - `e95b61b` 2024-10-29 Instrument on:
  - `350eed0` 2024-10-29 add tracing and log feature without feature in core and backend

## decaychain/rustic_core : feature/async_incompatible  (ahead 4, behind 194, stars 0)

  - `d10914b` 2024-11-17 fix: typo
  - `51aed6e` 2024-11-17 feat(backend)!: add is_async_compatible method to ReadBackend and Repository
  - `1554c67` 2024-11-17 feat: impl is_async_incompatible for all backends
  - `b6a3851` 2024-11-17 fix: apply clippy lint

## decaychain/rustic_core : feature/outsource_config  (ahead 1, behind 379, stars 0)

  - `4396390` 2024-02-04 outsource config I

## decaychain/rustic_core : fix/command_input  (ahead 4, behind 223, stars 0)

  - `15e47aa` 2024-10-03 fix(commands): make CommandInput work with file redirects
  - `adcb1ee` 2024-10-04 join on iter, not with shell-split
  - `8e3b412` 2024-10-04 use winsplit, more cases on win, failing
  - `cff8aa7` 2024-10-04 more test cases

## decaychain/rustic_core : fusefs  (ahead 1, behind 306, stars 0)

  - `ad7b125` 2024-02-07 feat: add FuseFs

## decaychain/rustic_core : index-search  (ahead 2, behind 142, stars 0)

  - `51ff8e4` 2025-04-20 add benchmark
  - `cc615b5` 2025-04-24 use interpolation_search for index

## decaychain/rustic_core : lock  (ahead 2, behind 139, stars 0)

  - `1a526bd` 2024-10-05 feat: Add lock_repo command
  - `5c229c5` 2024-10-06 Proposed changes from review

## decaychain/rustic_core : lock-more  (ahead 2, behind 223, stars 0)

  - `14488d4` 2024-10-05 feat: Add lock_repo command
  - `96b8476` 2024-10-05 feat: Add more locking commands

## decaychain/rustic_core : opendal  (ahead 1, behind 122, stars 0)

  - `b757175` 2025-09-12 update opendal

## decaychain/rustic_core : pack-padding  (ahead 29, behind 132, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `839a49c` 2025-06-12 WIP: Use padding for packfiles
  - `8f6ae7e` 2025-06-30 pad by filling up to next 64kiB; correct statistics
  - `b76b12f` 2025-07-02 correct test
  - `d2bdcd4` 2025-07-02 only check for padding blobs in prune if padding option is selected
  - `6a0736a` 2025-07-02 add test without padding
  - `ec01585` 2025-07-02 use padding only for 1 test
  - `e08c823` 2025-07-02 prevent 0-size padding; update comments
  - `7a63042` 2025-07-02 adapt windows tests
  - `7738b70` 2025-07-02 correct padding size computation

## decaychain/rustic_core : release-plz-2024-09-10T13-13-47Z  (ahead 1, behind 263, stars 0)

  - `6e7b150` 2024-09-23 chore: release

## decaychain/rustic_core : release-plz-2024-10-02T18-41-54Z  (ahead 1, behind 225, stars 0)

  - `4369057` 2024-10-03 chore: release

## decaychain/rustic_core : release-plz-2024-11-27T10-30-54Z  (ahead 1, behind 165, stars 0)

  - `61f4d8e` 2024-11-27 chore(rustic_backend): release v0.5.2

## decaychain/rustic_core : release-plz-2024-12-11T00-11-58Z  (ahead 1, behind 133, stars 0)

  - `f45b347` 2025-06-29 chore: release

## decaychain/rustic_core : release-plz-2026-04-10T20-25-51Z  (ahead 1, behind 58, stars 0)

  - `466ec8c` 2026-04-27 chore(rustic_core): release v0.12.0

## decaychain/rustic_core : renovate/all-actions  (ahead 2, behind 143, stars 0)

  - `18480c9` 2024-12-30 chore(deps): update actions
  - `1b29692` 2025-04-19 Merge branch 'main' into renovate/all-actions

## decaychain/rustic_core : separate-be  (ahead 21, behind 131, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `9555d5b` 2025-08-02 Merge branch 'main' into separate-be

## decaychain/rustic_core : typed_path  (ahead 23, behind 121, stars 0)

  - `3706a32` 2024-12-29 use typed_path
  - `af7037f` 2025-01-11 fix windows build
  - `aff6924` 2025-01-11 more windows fixes
  - `a1f2a33` 2025-01-11 more windows fixes
  - `b8516d2` 2025-01-11 more windows fixes
  - `c71e783` 2025-01-11 more windows fixes
  - `377d52f` 2025-01-12 add util::GlobMatcherExt
  - `d3bb945` 2025-01-12 handle as_path correctly
  - `06b086a` 2025-01-13 fix unix tests
  - `d614f11` 2025-01-13 correctly convert windows into unix path
  - `0803495` 2025-01-13 update windwos snapshots
  - `d127fce` 2025-01-13 update snapshots
  - `04f2e0b` 2025-01-13 remove platform dependency in find snapshots
  - `f4e27f2` 2025-01-13 add util description
  - `3e421ae` 2025-01-13 docu for mod util
  - `219f56c` 2025-01-14 add tests
  - `9401a4e` 2025-01-14 more tests
  - `4655275` 2025-01-19 more util funcs
  - `b6abc4e` 2025-05-23 adaptions to use with rustic
  - `0982644` 2025-05-23 fix windows build
  - `f7bc8a5` 2025-07-07 apply review hints
  - `4a34307` 2025-07-09 make helper funcs public
  - `5db575d` 2025-10-23 adapt check errors

## decaychain/rustic_core : uncloud/backup-with-source  (ahead 2, behind 61, stars 0)

  - `ec3a389` 2026-05-01 Add Repository::backup_with_source
  - `a52ac51` 2026-05-01 Re-export Node, NodeType, Metadata, ExtendedAttribute

## decaychain/rustic_core : update-cache  (ahead 1, behind 144, stars 0)

  - `0950ed6` 2025-03-05 update Swatinem/rust-cache

## sagemathinc/rustic_core : cocalc/b1-reuse-hardlinks  (ahead 14, behind 5, stars 0)

  - `33fdd63` 2026-09-06 core: preserve sparse restores and skip proven backup holes
  - `5b6146b` 2026-09-06 core: add strict backup and restore completeness modes
  - `f45990d` 2026-09-06 core/backup: bound metadata admission before content processing
  - `8d0a0b1` 2026-09-06 core: stream size exclusions through bounded metadata inventory
  - `916dcb3` 2026-09-06 core: propagate local metadata failures during strict backups
  - `e5e4a16` 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
  - `05a9e14` 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
  - `f715add` 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
  - `9da81a3` 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
  - `d3c4e06` 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
  - `9241091` 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
  - `0d924ef` 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache
  - `862c791` 2026-10-31 fix(backup): seed the hard-link cache only from matches that vouch for the inode
  - `47cbe4b` 2026-10-31 test(backup): table test for vouches_for_inode; fix the Parent literal in tests

## sagemathinc/rustic_core : cocalc/b2-detect-moves  (ahead 44, behind 5, stars 0)

  - `33fdd63` 2026-09-06 core: preserve sparse restores and skip proven backup holes
  - `5b6146b` 2026-09-06 core: add strict backup and restore completeness modes
  - `f45990d` 2026-09-06 core/backup: bound metadata admission before content processing
  - `8d0a0b1` 2026-09-06 core: stream size exclusions through bounded metadata inventory
  - `916dcb3` 2026-09-06 core: propagate local metadata failures during strict backups
  - `e5e4a16` 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
  - `05a9e14` 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
  - `f715add` 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
  - `9da81a3` 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
  - `d3c4e06` 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
  - `9241091` 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
  - `0d924ef` 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache
  - `1b7157a` 2026-10-31 fix(restore): recreate a directory whose path holds another type with --delete
  - `9fd2472` 2026-10-31 fix(restore): fail when a snapshot directory can't be created without --delete
  - `862c791` 2026-10-31 fix(backup): seed the hard-link cache only from matches that vouch for the inode
  - `47cbe4b` 2026-10-31 test(backup): table test for vouches_for_inode; fix the Parent literal in tests
  - `cd4935b` 2026-10-31 test(backup): differential adversaries for --reuse-hardlinks
  - `875dfef` 2026-10-31 style: rustfmt the hard-link adversaries
  - `63437b9` 2026-10-31 test(backup): every kind of weak parent match, not only the ignore options
  - `ad4ad29` 2026-10-31 test(backup): the cache's own admission and state guards, case by case
  - `48b0c2d` 2026-10-31 test(backup): an owner failing mid-read, and exact read counts
  - `546b3e7` 2026-10-31 Merge pull request #1 from sagemathinc/cocalc/m1-upstream-sync
  - `a4c3f77` 2026-10-31 Merge pull request #2 from sagemathinc/cocalc/b1-reuse-hardlinks
  - `a63e8f3` 2026-10-31 Merge pull request #3 from sagemathinc/cocalc/fix-restore-type-mismatch-dir
  - `9818f0d` 2026-10-31 Merge pull request #4 from sagemathinc/cocalc/restore-error-uncreatable-dir
  - `b8fe43d` 2026-10-31 test(backup): size the mid-read failure by the largest chunk, not by luck
  - `7340f1d` 2026-10-31 Merge pull request #5 from sagemathinc/cocalc/tests-b1-adversaries
  - `09fbb41` 2026-10-31 test(backup): give mid_read a small-chunk repository
  - `fd08d54` 2026-10-31 Merge pull request #6 from sagemathinc/cocalc/tests-b1-followups
  - `ca49619` 2026-11-01 feat(extents): btrfs extent signatures for --reuse-extents
  - ... 14 more

## sagemathinc/rustic_core : cocalc/b3-reuse-extents  (ahead 34, behind 5, stars 0)

  - `33fdd63` 2026-09-06 core: preserve sparse restores and skip proven backup holes
  - `5b6146b` 2026-09-06 core: add strict backup and restore completeness modes
  - `f45990d` 2026-09-06 core/backup: bound metadata admission before content processing
  - `8d0a0b1` 2026-09-06 core: stream size exclusions through bounded metadata inventory
  - `916dcb3` 2026-09-06 core: propagate local metadata failures during strict backups
  - `e5e4a16` 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
  - `05a9e14` 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
  - `f715add` 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
  - `9da81a3` 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
  - `d3c4e06` 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
  - `9241091` 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
  - `0d924ef` 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache
  - `1b7157a` 2026-10-31 fix(restore): recreate a directory whose path holds another type with --delete
  - `9fd2472` 2026-10-31 fix(restore): fail when a snapshot directory can't be created without --delete
  - `862c791` 2026-10-31 fix(backup): seed the hard-link cache only from matches that vouch for the inode
  - `47cbe4b` 2026-10-31 test(backup): table test for vouches_for_inode; fix the Parent literal in tests
  - `cd4935b` 2026-10-31 test(backup): differential adversaries for --reuse-hardlinks
  - `875dfef` 2026-10-31 style: rustfmt the hard-link adversaries
  - `63437b9` 2026-10-31 test(backup): every kind of weak parent match, not only the ignore options
  - `ad4ad29` 2026-10-31 test(backup): the cache's own admission and state guards, case by case
  - `48b0c2d` 2026-10-31 test(backup): an owner failing mid-read, and exact read counts
  - `546b3e7` 2026-10-31 Merge pull request #1 from sagemathinc/cocalc/m1-upstream-sync
  - `a4c3f77` 2026-10-31 Merge pull request #2 from sagemathinc/cocalc/b1-reuse-hardlinks
  - `a63e8f3` 2026-10-31 Merge pull request #3 from sagemathinc/cocalc/fix-restore-type-mismatch-dir
  - `9818f0d` 2026-10-31 Merge pull request #4 from sagemathinc/cocalc/restore-error-uncreatable-dir
  - `b8fe43d` 2026-10-31 test(backup): size the mid-read failure by the largest chunk, not by luck
  - `7340f1d` 2026-10-31 Merge pull request #5 from sagemathinc/cocalc/tests-b1-adversaries
  - `09fbb41` 2026-10-31 test(backup): give mid_read a small-chunk repository
  - `fd08d54` 2026-10-31 Merge pull request #6 from sagemathinc/cocalc/tests-b1-followups
  - `ca49619` 2026-11-01 feat(extents): btrfs extent signatures for --reuse-extents
  - ... 4 more

## sagemathinc/rustic_core : cocalc/b6-restored-before  (ahead 41, behind 5, stars 0)

  - `33fdd63` 2026-09-06 core: preserve sparse restores and skip proven backup holes
  - `5b6146b` 2026-09-06 core: add strict backup and restore completeness modes
  - `f45990d` 2026-09-06 core/backup: bound metadata admission before content processing
  - `8d0a0b1` 2026-09-06 core: stream size exclusions through bounded metadata inventory
  - `916dcb3` 2026-09-06 core: propagate local metadata failures during strict backups
  - `e5e4a16` 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
  - `05a9e14` 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
  - `f715add` 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
  - `9da81a3` 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
  - `d3c4e06` 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
  - `9241091` 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
  - `0d924ef` 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache
  - `1b7157a` 2026-10-31 fix(restore): recreate a directory whose path holds another type with --delete
  - `9fd2472` 2026-10-31 fix(restore): fail when a snapshot directory can't be created without --delete
  - `862c791` 2026-10-31 fix(backup): seed the hard-link cache only from matches that vouch for the inode
  - `47cbe4b` 2026-10-31 test(backup): table test for vouches_for_inode; fix the Parent literal in tests
  - `cd4935b` 2026-10-31 test(backup): differential adversaries for --reuse-hardlinks
  - `875dfef` 2026-10-31 style: rustfmt the hard-link adversaries
  - `63437b9` 2026-10-31 test(backup): every kind of weak parent match, not only the ignore options
  - `ad4ad29` 2026-10-31 test(backup): the cache's own admission and state guards, case by case
  - `48b0c2d` 2026-10-31 test(backup): an owner failing mid-read, and exact read counts
  - `546b3e7` 2026-10-31 Merge pull request #1 from sagemathinc/cocalc/m1-upstream-sync
  - `a4c3f77` 2026-10-31 Merge pull request #2 from sagemathinc/cocalc/b1-reuse-hardlinks
  - `a63e8f3` 2026-10-31 Merge pull request #3 from sagemathinc/cocalc/fix-restore-type-mismatch-dir
  - `9818f0d` 2026-10-31 Merge pull request #4 from sagemathinc/cocalc/restore-error-uncreatable-dir
  - `b8fe43d` 2026-10-31 test(backup): size the mid-read failure by the largest chunk, not by luck
  - `7340f1d` 2026-10-31 Merge pull request #5 from sagemathinc/cocalc/tests-b1-adversaries
  - `09fbb41` 2026-10-31 test(backup): give mid_read a small-chunk repository
  - `fd08d54` 2026-10-31 Merge pull request #6 from sagemathinc/cocalc/tests-b1-followups
  - `ca49619` 2026-11-01 feat(extents): btrfs extent signatures for --reuse-extents
  - ... 11 more

## sagemathinc/rustic_core : cocalc/check-uncached-be  (ahead 38, behind 5, stars 0)

  - `33fdd63` 2026-09-06 core: preserve sparse restores and skip proven backup holes
  - `5b6146b` 2026-09-06 core: add strict backup and restore completeness modes
  - `f45990d` 2026-09-06 core/backup: bound metadata admission before content processing
  - `8d0a0b1` 2026-09-06 core: stream size exclusions through bounded metadata inventory
  - `916dcb3` 2026-09-06 core: propagate local metadata failures during strict backups
  - `e5e4a16` 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
  - `05a9e14` 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
  - `f715add` 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
  - `9da81a3` 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
  - `d3c4e06` 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
  - `9241091` 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
  - `0d924ef` 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache
  - `1b7157a` 2026-10-31 fix(restore): recreate a directory whose path holds another type with --delete
  - `9fd2472` 2026-10-31 fix(restore): fail when a snapshot directory can't be created without --delete
  - `862c791` 2026-10-31 fix(backup): seed the hard-link cache only from matches that vouch for the inode
  - `47cbe4b` 2026-10-31 test(backup): table test for vouches_for_inode; fix the Parent literal in tests
  - `cd4935b` 2026-10-31 test(backup): differential adversaries for --reuse-hardlinks
  - `875dfef` 2026-10-31 style: rustfmt the hard-link adversaries
  - `63437b9` 2026-10-31 test(backup): every kind of weak parent match, not only the ignore options
  - `ad4ad29` 2026-10-31 test(backup): the cache's own admission and state guards, case by case
  - `48b0c2d` 2026-10-31 test(backup): an owner failing mid-read, and exact read counts
  - `546b3e7` 2026-10-31 Merge pull request #1 from sagemathinc/cocalc/m1-upstream-sync
  - `a4c3f77` 2026-10-31 Merge pull request #2 from sagemathinc/cocalc/b1-reuse-hardlinks
  - `a63e8f3` 2026-10-31 Merge pull request #3 from sagemathinc/cocalc/fix-restore-type-mismatch-dir
  - `9818f0d` 2026-10-31 Merge pull request #4 from sagemathinc/cocalc/restore-error-uncreatable-dir
  - `b8fe43d` 2026-10-31 test(backup): size the mid-read failure by the largest chunk, not by luck
  - `7340f1d` 2026-10-31 Merge pull request #5 from sagemathinc/cocalc/tests-b1-adversaries
  - `09fbb41` 2026-10-31 test(backup): give mid_read a small-chunk repository
  - `fd08d54` 2026-10-31 Merge pull request #6 from sagemathinc/cocalc/tests-b1-followups
  - `ca49619` 2026-11-01 feat(extents): btrfs extent signatures for --reuse-extents
  - ... 8 more

## sagemathinc/rustic_core : cocalc/fix-restore-type-mismatch-dir  (ahead 13, behind 5, stars 0)

  - `33fdd63` 2026-09-06 core: preserve sparse restores and skip proven backup holes
  - `5b6146b` 2026-09-06 core: add strict backup and restore completeness modes
  - `f45990d` 2026-09-06 core/backup: bound metadata admission before content processing
  - `8d0a0b1` 2026-09-06 core: stream size exclusions through bounded metadata inventory
  - `916dcb3` 2026-09-06 core: propagate local metadata failures during strict backups
  - `e5e4a16` 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
  - `05a9e14` 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
  - `f715add` 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
  - `9da81a3` 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
  - `d3c4e06` 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
  - `9241091` 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
  - `0d924ef` 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache
  - `1b7157a` 2026-10-31 fix(restore): recreate a directory whose path holds another type with --delete

## sagemathinc/rustic_core : cocalc/fs-boundary  (ahead 48, behind 5, stars 0)

  - `33fdd63` 2026-09-06 core: preserve sparse restores and skip proven backup holes
  - `5b6146b` 2026-09-06 core: add strict backup and restore completeness modes
  - `f45990d` 2026-09-06 core/backup: bound metadata admission before content processing
  - `8d0a0b1` 2026-09-06 core: stream size exclusions through bounded metadata inventory
  - `916dcb3` 2026-09-06 core: propagate local metadata failures during strict backups
  - `e5e4a16` 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
  - `05a9e14` 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
  - `f715add` 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
  - `9da81a3` 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
  - `d3c4e06` 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
  - `9241091` 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
  - `0d924ef` 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache
  - `1b7157a` 2026-10-31 fix(restore): recreate a directory whose path holds another type with --delete
  - `9fd2472` 2026-10-31 fix(restore): fail when a snapshot directory can't be created without --delete
  - `862c791` 2026-10-31 fix(backup): seed the hard-link cache only from matches that vouch for the inode
  - `47cbe4b` 2026-10-31 test(backup): table test for vouches_for_inode; fix the Parent literal in tests
  - `cd4935b` 2026-10-31 test(backup): differential adversaries for --reuse-hardlinks
  - `875dfef` 2026-10-31 style: rustfmt the hard-link adversaries
  - `63437b9` 2026-10-31 test(backup): every kind of weak parent match, not only the ignore options
  - `ad4ad29` 2026-10-31 test(backup): the cache's own admission and state guards, case by case
  - `48b0c2d` 2026-10-31 test(backup): an owner failing mid-read, and exact read counts
  - `546b3e7` 2026-10-31 Merge pull request #1 from sagemathinc/cocalc/m1-upstream-sync
  - `a4c3f77` 2026-10-31 Merge pull request #2 from sagemathinc/cocalc/b1-reuse-hardlinks
  - `a63e8f3` 2026-10-31 Merge pull request #3 from sagemathinc/cocalc/fix-restore-type-mismatch-dir
  - `9818f0d` 2026-10-31 Merge pull request #4 from sagemathinc/cocalc/restore-error-uncreatable-dir
  - `b8fe43d` 2026-10-31 test(backup): size the mid-read failure by the largest chunk, not by luck
  - `7340f1d` 2026-10-31 Merge pull request #5 from sagemathinc/cocalc/tests-b1-adversaries
  - `09fbb41` 2026-10-31 test(backup): give mid_read a small-chunk repository
  - `fd08d54` 2026-10-31 Merge pull request #6 from sagemathinc/cocalc/tests-b1-followups
  - `ca49619` 2026-11-01 feat(extents): btrfs extent signatures for --reuse-extents
  - ... 18 more

## sagemathinc/rustic_core : cocalc/m1-upstream-sync  (ahead 9, behind 5, stars 0)

  - `33fdd63` 2026-09-06 core: preserve sparse restores and skip proven backup holes
  - `5b6146b` 2026-09-06 core: add strict backup and restore completeness modes
  - `f45990d` 2026-09-06 core/backup: bound metadata admission before content processing
  - `8d0a0b1` 2026-09-06 core: stream size exclusions through bounded metadata inventory
  - `916dcb3` 2026-09-06 core: propagate local metadata failures during strict backups
  - `e5e4a16` 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
  - `05a9e14` 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
  - `f715add` 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
  - `9da81a3` 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners

## sagemathinc/rustic_core : cocalc/main  (ahead 49, behind 5, stars 0)

  - `33fdd63` 2026-09-06 core: preserve sparse restores and skip proven backup holes
  - `5b6146b` 2026-09-06 core: add strict backup and restore completeness modes
  - `f45990d` 2026-09-06 core/backup: bound metadata admission before content processing
  - `8d0a0b1` 2026-09-06 core: stream size exclusions through bounded metadata inventory
  - `916dcb3` 2026-09-06 core: propagate local metadata failures during strict backups
  - `e5e4a16` 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
  - `05a9e14` 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
  - `f715add` 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
  - `9da81a3` 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
  - `d3c4e06` 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
  - `9241091` 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
  - `0d924ef` 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache
  - `1b7157a` 2026-10-31 fix(restore): recreate a directory whose path holds another type with --delete
  - `9fd2472` 2026-10-31 fix(restore): fail when a snapshot directory can't be created without --delete
  - `862c791` 2026-10-31 fix(backup): seed the hard-link cache only from matches that vouch for the inode
  - `47cbe4b` 2026-10-31 test(backup): table test for vouches_for_inode; fix the Parent literal in tests
  - `cd4935b` 2026-10-31 test(backup): differential adversaries for --reuse-hardlinks
  - `875dfef` 2026-10-31 style: rustfmt the hard-link adversaries
  - `63437b9` 2026-10-31 test(backup): every kind of weak parent match, not only the ignore options
  - `ad4ad29` 2026-10-31 test(backup): the cache's own admission and state guards, case by case
  - `48b0c2d` 2026-10-31 test(backup): an owner failing mid-read, and exact read counts
  - `546b3e7` 2026-10-31 Merge pull request #1 from sagemathinc/cocalc/m1-upstream-sync
  - `a4c3f77` 2026-10-31 Merge pull request #2 from sagemathinc/cocalc/b1-reuse-hardlinks
  - `a63e8f3` 2026-10-31 Merge pull request #3 from sagemathinc/cocalc/fix-restore-type-mismatch-dir
  - `9818f0d` 2026-10-31 Merge pull request #4 from sagemathinc/cocalc/restore-error-uncreatable-dir
  - `b8fe43d` 2026-10-31 test(backup): size the mid-read failure by the largest chunk, not by luck
  - `7340f1d` 2026-10-31 Merge pull request #5 from sagemathinc/cocalc/tests-b1-adversaries
  - `09fbb41` 2026-10-31 test(backup): give mid_read a small-chunk repository
  - `fd08d54` 2026-10-31 Merge pull request #6 from sagemathinc/cocalc/tests-b1-followups
  - `ca49619` 2026-11-01 feat(extents): btrfs extent signatures for --reuse-extents
  - ... 19 more

## sagemathinc/rustic_core : cocalc/prune-keep-marked-size  (ahead 36, behind 5, stars 0)

  - `33fdd63` 2026-09-06 core: preserve sparse restores and skip proven backup holes
  - `5b6146b` 2026-09-06 core: add strict backup and restore completeness modes
  - `f45990d` 2026-09-06 core/backup: bound metadata admission before content processing
  - `8d0a0b1` 2026-09-06 core: stream size exclusions through bounded metadata inventory
  - `916dcb3` 2026-09-06 core: propagate local metadata failures during strict backups
  - `e5e4a16` 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
  - `05a9e14` 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
  - `f715add` 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
  - `9da81a3` 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
  - `d3c4e06` 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
  - `9241091` 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
  - `0d924ef` 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache
  - `1b7157a` 2026-10-31 fix(restore): recreate a directory whose path holds another type with --delete
  - `9fd2472` 2026-10-31 fix(restore): fail when a snapshot directory can't be created without --delete
  - `862c791` 2026-10-31 fix(backup): seed the hard-link cache only from matches that vouch for the inode
  - `47cbe4b` 2026-10-31 test(backup): table test for vouches_for_inode; fix the Parent literal in tests
  - `cd4935b` 2026-10-31 test(backup): differential adversaries for --reuse-hardlinks
  - `875dfef` 2026-10-31 style: rustfmt the hard-link adversaries
  - `63437b9` 2026-10-31 test(backup): every kind of weak parent match, not only the ignore options
  - `ad4ad29` 2026-10-31 test(backup): the cache's own admission and state guards, case by case
  - `48b0c2d` 2026-10-31 test(backup): an owner failing mid-read, and exact read counts
  - `546b3e7` 2026-10-31 Merge pull request #1 from sagemathinc/cocalc/m1-upstream-sync
  - `a4c3f77` 2026-10-31 Merge pull request #2 from sagemathinc/cocalc/b1-reuse-hardlinks
  - `a63e8f3` 2026-10-31 Merge pull request #3 from sagemathinc/cocalc/fix-restore-type-mismatch-dir
  - `9818f0d` 2026-10-31 Merge pull request #4 from sagemathinc/cocalc/restore-error-uncreatable-dir
  - `b8fe43d` 2026-10-31 test(backup): size the mid-read failure by the largest chunk, not by luck
  - `7340f1d` 2026-10-31 Merge pull request #5 from sagemathinc/cocalc/tests-b1-adversaries
  - `09fbb41` 2026-10-31 test(backup): give mid_read a small-chunk repository
  - `fd08d54` 2026-10-31 Merge pull request #6 from sagemathinc/cocalc/tests-b1-followups
  - `ca49619` 2026-11-01 feat(extents): btrfs extent signatures for --reuse-extents
  - ... 6 more

## sagemathinc/rustic_core : cocalc/restore-error-uncreatable-dir  (ahead 14, behind 5, stars 0)

  - `33fdd63` 2026-09-06 core: preserve sparse restores and skip proven backup holes
  - `5b6146b` 2026-09-06 core: add strict backup and restore completeness modes
  - `f45990d` 2026-09-06 core/backup: bound metadata admission before content processing
  - `8d0a0b1` 2026-09-06 core: stream size exclusions through bounded metadata inventory
  - `916dcb3` 2026-09-06 core: propagate local metadata failures during strict backups
  - `e5e4a16` 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
  - `05a9e14` 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
  - `f715add` 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
  - `9da81a3` 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
  - `d3c4e06` 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
  - `9241091` 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
  - `0d924ef` 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache
  - `1b7157a` 2026-10-31 fix(restore): recreate a directory whose path holds another type with --delete
  - `9fd2472` 2026-10-31 fix(restore): fail when a snapshot directory can't be created without --delete

## sagemathinc/rustic_core : cocalc/sparse-backups  (ahead 5, behind 25, stars 0)

  - `33fdd63` 2026-09-06 core: preserve sparse restores and skip proven backup holes
  - `5b6146b` 2026-09-06 core: add strict backup and restore completeness modes
  - `f45990d` 2026-09-06 core/backup: bound metadata admission before content processing
  - `8d0a0b1` 2026-09-06 core: stream size exclusions through bounded metadata inventory
  - `916dcb3` 2026-09-06 core: propagate local metadata failures during strict backups

## sagemathinc/rustic_core : cocalc/tests-b1-adversaries  (ahead 18, behind 5, stars 0)

  - `33fdd63` 2026-09-06 core: preserve sparse restores and skip proven backup holes
  - `5b6146b` 2026-09-06 core: add strict backup and restore completeness modes
  - `f45990d` 2026-09-06 core/backup: bound metadata admission before content processing
  - `8d0a0b1` 2026-09-06 core: stream size exclusions through bounded metadata inventory
  - `916dcb3` 2026-09-06 core: propagate local metadata failures during strict backups
  - `e5e4a16` 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
  - `05a9e14` 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
  - `f715add` 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
  - `9da81a3` 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
  - `d3c4e06` 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
  - `9241091` 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
  - `0d924ef` 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache
  - `862c791` 2026-10-31 fix(backup): seed the hard-link cache only from matches that vouch for the inode
  - `47cbe4b` 2026-10-31 test(backup): table test for vouches_for_inode; fix the Parent literal in tests
  - `cd4935b` 2026-10-31 test(backup): differential adversaries for --reuse-hardlinks
  - `875dfef` 2026-10-31 style: rustfmt the hard-link adversaries
  - `63437b9` 2026-10-31 test(backup): every kind of weak parent match, not only the ignore options
  - `ad4ad29` 2026-10-31 test(backup): the cache's own admission and state guards, case by case

## sagemathinc/rustic_core : cocalc/tests-b1-followups  (ahead 21, behind 5, stars 0)

  - `33fdd63` 2026-09-06 core: preserve sparse restores and skip proven backup holes
  - `5b6146b` 2026-09-06 core: add strict backup and restore completeness modes
  - `f45990d` 2026-09-06 core/backup: bound metadata admission before content processing
  - `8d0a0b1` 2026-09-06 core: stream size exclusions through bounded metadata inventory
  - `916dcb3` 2026-09-06 core: propagate local metadata failures during strict backups
  - `e5e4a16` 2026-10-31 Merge remote-tracking branch 'upstream/main' into cocalc/m1-upstream-sync
  - `05a9e14` 2026-10-31 sparse: convert file offsets through off_t with checks, so 32-bit targets build
  - `f715add` 2026-10-31 style: rustfmt (stable 1.10) for hotcold.rs and source_reader.rs
  - `9da81a3` 2026-10-31 test: pass clippy 1.99 and run on ext4 and Windows runners
  - `d3c4e06` 2026-10-31 feat(backup): --reuse-hardlinks reads a multiply hard-linked file once per run
  - `9241091` 2026-10-31 feat(backup): one read per hard-linked inode, also while it is being read
  - `0d924ef` 2026-10-31 style(backup): pass clippy 1.99 in the hard-link cache
  - `862c791` 2026-10-31 fix(backup): seed the hard-link cache only from matches that vouch for the inode
  - `47cbe4b` 2026-10-31 test(backup): table test for vouches_for_inode; fix the Parent literal in tests
  - `cd4935b` 2026-10-31 test(backup): differential adversaries for --reuse-hardlinks
  - `875dfef` 2026-10-31 style: rustfmt the hard-link adversaries
  - `63437b9` 2026-10-31 test(backup): every kind of weak parent match, not only the ignore options
  - `ad4ad29` 2026-10-31 test(backup): the cache's own admission and state guards, case by case
  - `48b0c2d` 2026-10-31 test(backup): an owner failing mid-read, and exact read counts
  - `b8fe43d` 2026-10-31 test(backup): size the mid-read failure by the largest chunk, not by luck
  - `09fbb41` 2026-10-31 test(backup): give mid_read a small-chunk repository

## sagemathinc/rustic_core : main  (ahead 1, behind 67, stars 0)

  - `b217f6c` 2026-03-26 restore: preserve hardlinks on restore

## hacker/x-rustic_core : feat/exclude-if-xattr  (ahead 1, behind 67, stars 0)

  - `8b71df0` 2026-03-21 feat: add exclude-if-xattr option

## hacker/x-rustic_core : fix/git-exclude-ignore  (ahead 2, behind 66, stars 0)

  - `547e249` 2026-03-28 fix: make `ignore`'s `.git_exclude()` mirror `.git_ignore()`
  - `933d52c` 2026-03-28 Merge branch 'main' into fix/git-exclude-ignore

## hacker/x-rustic_core : fix/opendal-source-glob-exclusion  (ahead 4, behind 41, stars 0)

  - `f164f7f` 2026-07-26 fix(ish): implement excludes for opendal source to some extent
  - `f08dfa8` 2026-08-07 fix: improve glob exclusion by appending `/` to opendal's paths
  - `5caef36` 2026-08-08 Merge branch 'main' into fix/opendal-source-glob-exclusion
  - `60f90af` 2026-08-08 fix format & clippy lints

## brege/rustic_core : main  (ahead 3, behind 5, stars 0)

  - `4bae111` 2026-03-29 fix: rebase-based sync workflow
  - `39b9e27` 2026-03-29 fix: resolve workflow rebase conflict in sync job
  - `db39a02` 2026-07-18 fix: retire obsolete read source feature branch

## tilpner/rustic_core : node-name-cow  (ahead 2, behind 70, stars 0)

  - `07d0099` 2026-03-05 perf!: use Cow Node names
  - `3dc1724` 2026-03-05 perf: use borrowed path components when possible

## mro68/rustic_core_fork : feat/opendal-pcloud-20260518  (ahead 1, behind 51, stars 0)

  - `4835ee7` 2026-05-18 feat(backend): enable pcloud for OpenDAL

## philipmw/rustic_core : catch-b2-error  (ahead 1, behind 5, stars 0)

  - `5e6f135` 2026-11-01 fix(backend): propagate opendal errors when checking for config

## M1cha/rustic_core : rest-tls  (ahead 3, behind 119, stars 0)

  - `1b389e1` 2025-10-31 backend: rest: build client only once
  - `5df927f` 2025-10-31 backend: rest: add support for cacert and tls-client-cert
  - `dabe132` 2025-10-31 Merge branch 'main' into rest-tls

## kapitainsky/rustic_core : backend-features  (ahead 10, behind 131, stars 0)

  - `23ee8bd` 2025-07-18 backend: Use features for opendal services
  - `e1c592a` 2025-07-20 update deps
  - `bec33e4` 2025-07-20 remove ftp feature
  - `9681088` 2025-07-20 fix url dep
  - `57d07b9` 2025-07-22 use feature "ci" in pipelines
  - `851993d` 2025-07-22 fix workflows
  - `930aa54` 2025-07-22 add missing licence
  - `40196f4` 2025-07-22 fix deny.toml
  - `6dfcad6` 2025-07-26 use ci features in ci-heavy.yml
  - `f7f48ec` 2025-07-26 Merge branch 'main' into backend-features

## kapitainsky/rustic_core : cache-warnings  (ahead 1, behind 319, stars 0)

  - `773edad` 2024-04-27 fix: Improve warnings in case of cache errors

## kapitainsky/rustic_core : check-error  (ahead 7, behind 305, stars 0)

  - `3baf513` 2024-05-06 check: return error if check fails
  - `2336888` 2024-05-07 don't use glob imports
  - `8563305` 2024-05-14 use Box
  - `7a28eeb` 2024-05-28 use own enum for error severity
  - `524642a` 2024-05-28 fix clippy lint
  - `5c0ceae` 2024-05-28 Merge branch 'main' into check-error
  - `5b98b3b` 2024-06-17 Merge branch 'main' into check-error

## kapitainsky/rustic_core : chunker-fixed-size  (ahead 5, behind 128, stars 0)

  - `d5c1d19` 2025-08-11 prepare for more chunking methods
  - `ba6d044` 2025-08-11 add chunker options to config
  - `509663c` 2025-08-11 use chunker config for Rabin chunker
  - `3895464` 2025-08-11 implement FixedSize chunking
  - `b5c483c` 2025-08-11 add has_same_chunker()

## kapitainsky/rustic_core : examples-no-crate  (ahead 4, behind 132, stars 0)

  - `68af55e` 2025-07-22 move examples in rustic_core crate
  - `0648ab3` 2025-07-22 fmt and clippy for examples
  - `5cd6ffd` 2025-07-22 clippy for examples
  - `85e78e2` 2025-07-22 clippy for examples

## kapitainsky/rustic_core : feat/error_handling  (ahead 6, behind 222, stars 0)

  - `8e227da` 2024-10-06 feat(errors): add a RusticIssueCollector
  - `0b74f3c` 2024-10-06 add new issue types
  - `ff5ba3c` 2024-10-06 add RusticIssueResult
  - `8d610bd` 2024-10-06 replace RusticIssueResult struct with type alias
  - `d2dfd46` 2024-10-06 reduce visibility to crate public
  - `b74d2bf` 2024-10-06 reduce visibility of methods to crate public

## kapitainsky/rustic_core : feat/remove-unwrap-expect  (ahead 58, behind 326, stars 0)

  - `31b1b9f` 2024-03-17 test: implement more tests and rename tests for consistency
  - `0ef7c22` 2024-03-17 rename trait for checking errors in rest backend
  - `76f2bed` 2024-03-17 implement transpose on ParentResult and some error handling fixes
  - `39089b1` 2024-03-17 fix doc test and export for overwrite zero duration
  - `5ba3c02` 2024-03-17 rework Id/HexId
  - `ad9203b` 2024-03-17 use parking lot
  - `bce58de` 2024-03-17 more errors for error handling
  - `ccca56d` 2024-03-17 rename filename to file_name (and dir_name) to make it consistent over the code base, also handle cli changes with alias
  - `f24105e` 2024-03-17 rename new_cache to from_backend to make source/intent clearer
  - `0a62645` 2024-03-17 handle fallible location() method
  - `c205d45` 2024-03-17 fix non-self-describing variable names that make it hard to read the code
  - `1ae7a82` 2024-03-17 add more documentation about errors etc
  - `7e0f0ca` 2024-03-17 rename new_node to from_type_and_metadata to make the intent more clear and keep good style
  - `0128764` 2024-03-17 impl Display for Cache
  - `896a14a` 2024-03-17 remove default impl from nodetype as it can be derived
  - `5910c3b` 2024-03-17 impl Debug for Packer
  - `3add91c` 2024-03-17 factor out calculate_pack_size to make it easier testable
  - `2f5d6ea` 2024-03-17 handle TreeArchiver::apply errors and refactor to make it safe against overflows
  - `bf1419f` 2024-03-17 make link_target more consistent over the code base as well
  - `8d2f432` 2024-03-17 use expect to unwrap runtime
  - `1713a01` 2024-03-17 store joinhandle in rclone backend struct and join in Drop impl
  - `a75b4ae` 2024-03-17 warn the user if we shadow their already said rclone user and pass
  - `27a708a` 2024-03-17 cleanup panic docs
  - `35c8fef` 2024-03-17 allow expect for trait method impl
  - `3d9ebb9` 2024-03-17 we allow expect here, because it should always give some and otherwise we would need to create a backoff::Error<reqwest::Error> which is super annoying
  - `d0b0255` 2024-03-17 handle errors in Cache::list_with_size
  - `0439d61` 2024-03-17 bubble up options in TreeIterator
  - `034634b` 2024-03-17 add/remove docs, imports, and derives. derives e.g. serialize for insta test impl
  - `b70e8c0` 2024-03-17 handle option in iter
  - `63a6744` 2024-03-17 Don't panic on file not being able to be deleted.
  - ... 28 more

## kapitainsky/rustic_core : feat/summary  (ahead 20, behind 145, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `08a66fb` 2024-11-25 feat: update retrieve_from_arc_mutex method to use Self type
  - `f30bb6e` 2024-11-25 feat: add assertions to tests for contains_error method in Summary
  - `68b40c9` 2025-01-12 Merge branch 'main' into feat/summary

## kapitainsky/rustic_core : feat/summary-check  (ahead 24, behind 170, stars 0)

  - `3be2def` 2024-11-21 feat: add summary module for aggregating runtime information and internal metrics
  - `5908230` 2024-11-21 feat: enhance Summary struct to use EcoString
  - `9b6dcb7` 2024-11-21 refactor: remove unnecessary Deserialize derive from CondensedIssue and update export logic
  - `9611df5` 2024-11-21 feat: update Metrics type to use MetricValue enum and modify add_metric method
  - `2265256` 2024-11-21 refactor: simplify Metrics type and update add_issue and add_metric methods to use EcoString
  - `a9e89dc` 2024-11-24 Merge branch 'main' into feat/summary
  - `8bbace6` 2024-11-24 feat: add IssueCategory enum and logging for issues in Summary
  - `1f40182` 2024-11-25 feat: refactor issue handling to categorize by IssueCategory and improve logging
  - `efb345e` 2024-11-25 feat: add merge method to Summary and corresponding unit test
  - `bbafe09` 2024-11-25 feat: add TODO comments for refactoring merge method in Summary
  - `a437de4` 2024-11-25 feat: add methods to log errors, warnings, and info in Summary
  - `8e13aa9` 2024-11-25 feat: add method to enable logging in Summary
  - `f169967` 2024-11-25 feat: enhance logging functionality and update root cause handling in Summary
  - `6d61317` 2024-11-25 feat: update merge method to use Self type and improve handling of optional fields in Summary
  - `a27dc6e` 2024-11-25 feat: add methods to convert Summary into boxed and arc mutex types
  - `ddf7828` 2024-11-25 feat: rename is_error method to contains_error and improve error checking logic
  - `4b3d073` 2024-11-25 feat: add method to retrieve Summary from Arc<Mutex> with error handling
  - `4316068` 2024-11-25 feat: update check_repository and check_cache_files to return Summary and improve concurrency handling
  - `2f5c7bf` 2024-11-25 feat: enhance error handling in check_cache_files to log errors in Summary with IssueScope
  - `fe64fdd` 2024-11-25 feat: enhance summary logging in check_repository and check_hot_files for better error reporting
  - `525e382` 2024-11-25 feat: refactor summary handling in merge and archiver
  - `36b2e9a` 2024-11-25 feat: add clippy lint allowance for check_repository and update test to capture summary
  - `ce08470` 2024-11-25 feat: simplify summary initialization by removing Mutex and using into_arc_mutex
  - `a2aee81` 2024-11-25 feat: streamline summary retrieval by replacing Mutex unwrapping with retrieve_from_arc_mutex

## kapitainsky/rustic_core : feat/tracing-logging  (ahead 6, behind 200, stars 0)

  - `236ea85` 2024-10-05 feat: replace log with tracing
  - `c9e8292` 2024-10-05 style: cargo fmt
  - `ca56f2d` 2024-10-28 Merge branch 'main' into feat/tracing-logging
  - `62aa898` 2024-10-28 add log feature as default so log and tracing can be used
  - `e95b61b` 2024-10-29 Instrument on:
  - `350eed0` 2024-10-29 add tracing and log feature without feature in core and backend

## kapitainsky/rustic_core : feature/async_incompatible  (ahead 4, behind 194, stars 0)

  - `d10914b` 2024-11-17 fix: typo
  - `51aed6e` 2024-11-17 feat(backend)!: add is_async_compatible method to ReadBackend and Repository
  - `1554c67` 2024-11-17 feat: impl is_async_incompatible for all backends
  - `b6a3851` 2024-11-17 fix: apply clippy lint

## kapitainsky/rustic_core : feature/outsource_config  (ahead 1, behind 379, stars 0)

  - `4396390` 2024-02-04 outsource config I

## kapitainsky/rustic_core : fix/command_input  (ahead 4, behind 223, stars 0)

  - `15e47aa` 2024-10-03 fix(commands): make CommandInput work with file redirects
  - `adcb1ee` 2024-10-04 join on iter, not with shell-split
  - `8e3b412` 2024-10-04 use winsplit, more cases on win, failing
  - `cff8aa7` 2024-10-04 more test cases

## kapitainsky/rustic_core : fusefs  (ahead 1, behind 306, stars 0)

  - `ad7b125` 2024-02-07 feat: add FuseFs

## kapitainsky/rustic_core : index-search  (ahead 2, behind 142, stars 0)

  - `51ff8e4` 2025-04-20 add benchmark
  - `cc615b5` 2025-04-24 use interpolation_search for index

## kapitainsky/rustic_core : lock  (ahead 2, behind 139, stars 0)

  - `1a526bd` 2024-10-05 feat: Add lock_repo command
  - `5c229c5` 2024-10-06 Proposed changes from review

## kapitainsky/rustic_core : lock-more  (ahead 2, behind 223, stars 0)

  - `14488d4` 2024-10-05 feat: Add lock_repo command
  - `96b8476` 2024-10-05 feat: Add more locking commands

## kapitainsky/rustic_core : pack-padding  (ahead 29, behind 132, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `839a49c` 2025-06-12 WIP: Use padding for packfiles
  - `8f6ae7e` 2025-06-30 pad by filling up to next 64kiB; correct statistics
  - `b76b12f` 2025-07-02 correct test
  - `d2bdcd4` 2025-07-02 only check for padding blobs in prune if padding option is selected
  - `6a0736a` 2025-07-02 add test without padding
  - `ec01585` 2025-07-02 use padding only for 1 test
  - `e08c823` 2025-07-02 prevent 0-size padding; update comments
  - `7a63042` 2025-07-02 adapt windows tests
  - `7738b70` 2025-07-02 correct padding size computation

## kapitainsky/rustic_core : patch-1  (ahead 1, behind 126, stars 0)

  - `c462cf4` 2025-08-21 fix: Make example for time format even more explicit

## kapitainsky/rustic_core : release-plz-2024-09-10T13-13-47Z  (ahead 1, behind 263, stars 0)

  - `6e7b150` 2024-09-23 chore: release

## kapitainsky/rustic_core : release-plz-2024-10-02T18-41-54Z  (ahead 1, behind 225, stars 0)

  - `4369057` 2024-10-03 chore: release

## kapitainsky/rustic_core : release-plz-2024-11-27T10-30-54Z  (ahead 1, behind 165, stars 0)

  - `61f4d8e` 2024-11-27 chore(rustic_backend): release v0.5.2

## kapitainsky/rustic_core : release-plz-2024-12-11T00-11-58Z  (ahead 1, behind 133, stars 0)

  - `f45b347` 2025-06-29 chore: release

## kapitainsky/rustic_core : release-plz-2025-06-29T12-29-10Z  (ahead 1, behind 127, stars 0)

  - `a57c63e` 2025-08-15 chore: release

## kapitainsky/rustic_core : renovate/all-actions  (ahead 2, behind 143, stars 0)

  - `18480c9` 2024-12-30 chore(deps): update actions
  - `1b29692` 2025-04-19 Merge branch 'main' into renovate/all-actions

## kapitainsky/rustic_core : repair-hotcold  (ahead 2, behind 142, stars 0)

  - `6878626` 2024-09-04 WIP: feat: Add methods for repairing hot/cold repositories
  - `1114e13` 2025-04-26 adapt init and docu

## kapitainsky/rustic_core : separate-be  (ahead 21, behind 131, stars 0)

  - `2e76e89` 2025-05-31 refactor: separate backend operations
  - `9461d15` 2025-06-03 fix deadlock & duplicate pack saving
  - `085e6bb` 2025-06-03 fix clippy
  - `2935fde` 2025-06-03 remove repoindexer
  - `4be2bf7` 2025-06-04 fix: wait for filewriter to finish
  - `e16be9d` 2025-06-04 fix: prune: set correct delete flag
  - `9c4a13e` 2025-06-04 remove unneccessary checks for duplicates
  - `ab2214a` 2025-06-04 clarify indexer methods
  - `080b4c7` 2025-06-04 refactor pack sizer
  - `d449b87` 2025-06-04 simplify SharedIndexer
  - `063017d` 2025-06-04 clean up Packer errors
  - `228defd` 2025-06-04 simplify RepositoryPacker
  - `c38d762` 2025-06-04 use self in finalize
  - `8dd914d` 2025-06-05 corrections
  - `0b11bde` 2025-06-05 adjust docu
  - `3abadd4` 2025-06-14 import from root
  - `618a1c8` 2025-06-14 Add more docu
  - `91e39b9` 2025-06-14 Merge branch 'main' into separate-be
  - `8adaea2` 2025-06-28 Merge branch 'main' into separate-be
  - `c1ebbd5` 2025-07-02 Merge branch 'main' into separate-be
  - `9555d5b` 2025-08-02 Merge branch 'main' into separate-be

## kapitainsky/rustic_core : time-hint  (ahead 2, behind 127, stars 0)

  - `ca8cf51` 2025-08-21 fix: Add example for time format
  - `9dbc521` 2025-08-21 Merge branch 'main' into time-hint

## kapitainsky/rustic_core : typed_path  (ahead 22, behind 132, stars 0)

  - `9d26ab2` 2024-12-29 use typed_path
  - `0ac8b2b` 2025-01-11 fix windows build
  - `9aac279` 2025-01-11 more windows fixes
  - `8203cce` 2025-01-11 more windows fixes
  - `c9b1c66` 2025-01-11 more windows fixes
  - `68705ff` 2025-01-11 more windows fixes
  - `e7225f8` 2025-01-12 add util::GlobMatcherExt
  - `eb14d64` 2025-01-12 handle as_path correctly
  - `bc1eb8b` 2025-01-13 fix unix tests
  - `51898b9` 2025-01-13 correctly convert windows into unix path
  - `a3d8e28` 2025-01-13 update windwos snapshots
  - `0f8deff` 2025-01-13 update snapshots
  - `43e4081` 2025-01-13 remove platform dependency in find snapshots
  - `45fdc8b` 2025-01-13 add util description
  - `18ee311` 2025-01-13 docu for mod util
  - `123ba2f` 2025-01-14 add tests
  - `bf428f0` 2025-01-14 more tests
  - `a8486dc` 2025-01-19 more util funcs
  - `60fc357` 2025-05-23 adaptions to use with rustic
  - `e424290` 2025-05-23 fix windows build
  - `6fc111d` 2025-07-07 Merge branch 'main'
  - `4fcd32f` 2025-07-07 apply review hints

## kapitainsky/rustic_core : update-cache  (ahead 1, behind 144, stars 0)

  - `0950ed6` 2025-03-05 update Swatinem/rust-cache

## rdelaage/rustic_core : feat/cmd_input_kv_env  (ahead 2, behind 130, stars 0)

  - `8d3b9e3` 2025-08-02 feat: Add env argument to the run function of command input
  - `b526c85` 2025-08-06 Merge branch 'main' into feat/cmd_input_kv_env

## tinou98/rustic_core : main  (ahead 3, behind 153, stars 0)

  - `8be7995` 2024-12-03 feat(warmup): Add warmup wait command
  - `e960f39` 2024-12-04 fix(warmup): Properly report progression while warming up files
  - `a041d34` 2024-12-10 feat(warmup): Make warm_up_wait crate local

## jullanggit/rustic_core : keep_minutely  (ahead 4, behind 159, stars 0)

  - `9551aae` 2024-11-28 added minutely timeline
  - `527de19` 2024-11-29 fix description for equal_minute()
  - `3135f82` 2024-11-29 Merge branch 'main' into keep_minutely
  - `62e415e` 2024-11-29 fix: allow clippy::too_many_lines for forget::matches()

## gilbsgilbs/rustic_core : fix-hot-repo-overwrite  (ahead 2, behind 194, stars 0)

  - `7be5fc8` 2024-11-14 fix: prevent overwriting hot repository on init
  - `4da2c4a` 2024-11-17 Merge branch 'main' into fix-hot-repo-overwrite

## fennel-ai/rustic_core : main  (ahead 1, behind 212, stars 0)

  - `5ed600c` 2024-10-11 core: export RusticErrorKind and RepositoryErrorKind enums

## yonasBSD/rustic_core : fix/panic-snapshots  (ahead 3, behind 100, stars 0)

  - `6363087` 2026-01-08 build(deps): Update deps.
  - `f0652f2` 2026-01-08 fix: Use u64 device parameter on FreeBSD. Fixes #439
  - `60f86b8` 2026-01-08 fix: errors

## yonasBSD/rustic_core : yonasBSD  (ahead 1, behind 100, stars 0)

  - `6363087` 2026-01-08 build(deps): Update deps.

## nardoor/rustic_core : commands  (ahead 2, behind 297, stars 0)

  - `508ba2a` 2024-08-11 parse commands given by arg or env using shell_words
  - `84f70d6` 2024-08-11 fix: clap type inference with whole type qualification

## nardoor/rustic_core : experiment/async_repositories  (ahead 1, behind 287, stars 0)

  - `46a8f9b` 2024-08-31 [EXPERIMENT] begin adding "async" versions of trait/impls

## nardoor/rustic_core : feature/async_incompatible  (ahead 4, behind 184, stars 0)

  - `eb2e1ed` 2024-11-17 feat(backend): add is_async_compatible method to ReadBackend and Repository
  - `76a1fc0` 2024-11-18 Merge branch 'main' into feature/async_incompatible
  - `c968a76` 2024-11-18 Update crates/core/src/backend.rs
  - `c5ecc23` 2024-11-18 Merge branch 'main' into feature/async_incompatible

## nardoor/rustic_core : feature/autocompletion_hints  (ahead 1, behind 283, stars 0)

  - `2b9409a` 2024-08-31 feat(autocompletion): use clap::ValueHint for better autocompl

## nardoor/rustic_core : fix/extended_atribute_light_failure  (ahead 3, behind 303, stars 0)

  - `b2e329b` 2024-07-28 fix: backup file even if failed listing extended attributes
  - `4fac21c` 2024-08-05 fix: cfg conditional compilation to fix windows compilation
  - `4df1ec4` 2024-08-05 log: warn when ignoring extended attributes error

## Firflei/rustic_core : public-repo-type  (ahead 2, behind 306, stars 0)

  - `a4a503d` 2024-06-08 fix: Export `FullIndex` and `IndexedStatus` so the Repository type can be fully specified
  - `fc987ca` 2024-06-14 test: Check ability to create wrapper types around repository

## jirutka/rustic_core : main  (ahead 2, behind 426, stars 0)

  - `d68dc80` 2023-12-30 feat: Add tls-native, tls-rustls features to allow building w/o Rustls
  - `4ce3364` 2023-12-30 TEMP

## jirutka/rustic_core : native-tls  (ahead 3, behind 413, stars 0)

  - `e64f1c4` 2023-12-30 feat: Add tls-native, tls-rustls features to allow building w/o Rustls
  - `0a3007b` 2023-12-30 ci: check powerset with tls-native too
  - `eabff55` 2024-01-05 feat: fail build if both tls-native and tls-rustls are enabled

## ProspectPyxis/rustic_core : ignore-file  (ahead 6, behind 442, stars 0)

  - `c7cf8d6` 2023-11-29 feat: add --ignore-file command line flag
  - `83f140f` 2023-11-29 Merge branch 'main' into ignore-file
  - `0249870` 2023-12-11 fix: rename command line flag as requested
  - `4a570d6` 2023-12-11 fix: messed up find and replace, oops
  - `8724850` 2023-12-11 Merge branch 'main' into ignore-file
  - `1b29be6` 2023-12-11 Merge branch 'main' into ignore-file

