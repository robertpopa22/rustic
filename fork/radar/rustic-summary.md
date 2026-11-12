# Fork radar summary: rustic.md

## Work found only in one fork (121 branches), freshest first

### Huge/rustic : fix/tui-ls-dir-subtree-unwrap (ahead 2, behind 2)
- dba7234 2026-10-05 [tui] fix panic when listing or entering directory without subtree
- d6e3853 2026-11-09 Merge branch 'main' into fix/tui-ls-dir-subtree-unwrap

### AlphaJack/rustic : feat/ls-json-long (ahead 2, behind 3)
- 5ba3b24 2026-10-15 feat(ls): list entries with type and metadata with
- 66fb970 2026-11-09 Merge branch 'main' into feat/ls-json-long

### magrathean-uk/rustic : feat/1912-find-json (ahead 1, behind 4)
- c542cf8 2026-09-27 Add JSON output to find

### BradKollmyer/rustic : dev (ahead 37, behind 4)
- 2a0c0c0 2026-09-03 feat: add Storj native backend config and docs
- 96bc05b 2026-09-02 fix: return exit code 3 when backup source files are unreadable
- 2a5eef9 2026-09-04 fix: do not write console logs over the interactive TUI
- b0634fb 2026-09-04 chore: point rustic_core at fork/dev for integration builds
- 509232b 2026-09-04 merge: feat/storj-backend into dev
- e60b464 2026-09-04 feat: enable mimalloc in the release feature
- d306794 2026-09-04 fix: match Progress::error Option path signature
- 1b8a401 2026-09-09 fix(backup): expose parallel upload options in CLI
- b75352d 2026-09-12 feat(backup): expose --backup-connections in the CLI
- 2cb0f27 2026-09-12 docs(config): document the Storj transport option
- 7c22d96 2026-09-12 chore: pin local rustic_core and storj for fleet builds
- e48b98d 2026-09-12 feat(backup): render the uploading status progress line

### BradKollmyer/rustic : perf/native-storj-iterations (ahead 25, behind 4)
- 2a0c0c0 2026-09-03 feat: add Storj native backend config and docs
- 96bc05b 2026-09-02 fix: return exit code 3 when backup source files are unreadable
- 2a5eef9 2026-09-04 fix: do not write console logs over the interactive TUI
- b0634fb 2026-09-04 chore: point rustic_core at fork/dev for integration builds
- 509232b 2026-09-04 merge: feat/storj-backend into dev
- e60b464 2026-09-04 feat: enable mimalloc in the release feature
- d306794 2026-09-04 fix: match Progress::error Option path signature
- 1b8a401 2026-09-09 fix(backup): expose parallel upload options in CLI
- b75352d 2026-09-12 feat(backup): expose --backup-connections in the CLI
- 2cb0f27 2026-09-12 docs(config): document the Storj transport option
- 7c22d96 2026-09-12 chore: pin local rustic_core and storj for fleet builds
- e48b98d 2026-09-12 feat(backup): render the uploading status progress line

### BradKollmyer/rustic : fix/backup-exit-code-3-unreadable-files (ahead 3, behind 4)
- 1f353fc 2026-09-02 fix: return exit code 3 when backup source files are unreadable
- 398ef1f 2026-09-02 merge: origin/main into backup exit-code 3 branch
- 8f604f2 2026-09-04 fix: match Progress::error Option path signature

### AlphaJack/rustic : fix/copy-exit-code (ahead 1, behind 4)
- cfed2e9 2026-10-15 fix(copy): exit with an error when copying to a target failed

### magrathean-uk/rustic : feat/1578-hook-command-env (ahead 1, behind 4)
- 213248a 2026-09-27 Expose command context to hooks

### ericbyz/rustic : fix/show-config-redact-secrets (ahead 1, behind 4)
- 21c39d8 2026-10-09 fix: redact secrets in show-config output

### BradKollmyer/rustic : fix/tui-console-log-overlap (ahead 2, behind 4)
- 25511c1 2026-09-04 fix: do not write console logs over the interactive TUI
- f7ebf82 2026-09-04 chore: drop CHANGELOG edit; release-plz generates it

### magrathean-uk/rustic : feat/859-config-paths (ahead 1, behind 4)
- 413d467 2026-09-27 Add RUSTIC_HOME and XDG profile search paths

### magrathean-uk/rustic : fix/1497-glob-file-errors (ahead 1, behind 4)
- f77c26f 2026-09-27 Report glob file errors without a panic

### magrathean-uk/rustic : feat/1892-no-color (ahead 1, behind 4)
- bd6adfa 2026-09-27 Add a no-color terminal override

### magrathean-uk/rustic : fix/1135-empty-as-path (ahead 2, behind 4)
- 559d179 2026-09-27 Accept an empty as-path value
- 9d29fb1 2026-09-29 test: cover backup with an empty --as-path

### magrathean-uk/rustic : feat/1818-rest-env-auth (ahead 1, behind 4)
- 5c5d41f 2026-09-27 Support REST backend credentials from environment

### Huge/rustic : fix/fuse-mount-panics (ahead 1, behind 4)
- 640d00c 2026-10-06 fix(mount): avoid panics on integer overflow and malformed xattr names

### magrathean-uk/rustic : fix/908-cat-config-defaults (ahead 1, behind 4)
- 6fbcabe 2026-09-27 Show effective defaults in cat config

### AlphaJack/rustic : feat/init-chunker-params (ahead 1, behind 4)
- 6ff60fa 2026-10-16 feat: chunker polynomial and copy-chunker-params-from for init

### magrathean-uk/rustic : docs/1647-glob-precedence (ahead 1, behind 4)
- 770017b 2026-09-27 Clarify snapshot glob precedence

### magrathean-uk/rustic : fix/1522-missing-source-exit (ahead 1, behind 4)
- b756c36 2026-09-27 Fail backup for missing sources and profiles

### magrathean-uk/rustic : fix/1915-broken-pipe (ahead 1, behind 4)
- 84da541 2026-09-27 Handle broken stdout pipes without panic

### magrathean-uk/rustic : docs/1540-launchd-example (ahead 1, behind 4)
- 9711635 2026-09-27 Add a launchd backup example

### BradKollmyer/rustic : perf/mimalloc-release (ahead 2, behind 4)
- 132c8ff 2026-09-04 feat: enable mimalloc in the release feature
- 87f9fcf 2026-09-06 fix: enable ARMv8 AES on aarch64 rustic builds

### magrathean-uk/rustic : fix/1572-json-lines (ahead 1, behind 4)
- d20ea67 2026-09-27 Emit JSON records as single lines

### magrathean-uk/rustic : docs/1320-onedrive-oauth (ahead 1, behind 4)
- 9ffbdcd 2026-09-27 Document OneDrive OAuth setup

### sagemathinc/rustic : cocalc/m1-core-pin (ahead 20, behind 4)
- 7e2c2ce 2026-03-26 release: wire rustic to sagemathinc fork and linux releases
- d58099c 2026-03-26 release: add manual dispatch for tagged linux builds
- 0ef705a 2026-09-06 cli: merge upstream 0.11.4 with pinned sparse-safe CoCalc core
- 737ba53 2026-09-06 cli/backup: expose bounded admission and machine-readable capabilities
- 89d907e 2026-09-06 sparse: bundle qualified binaries with recovery evidence and provenance
- 8e8e801 2026-09-06 ci: verify candidate provenance against the exact reviewed source
- b44b066 2026-09-06 cli: emit bounded lossless size-exclusion inventory reports
- 8e4623b 2026-09-06 cli: pin strict local metadata handling and require it in candidates
- d68c11b 2026-10-31 ci: CoCalc CI with loopback round trips; releases only from tested cocalc/main commits
- 03f24b6 2026-10-31 docs: format COCALC.md and tests/RECOVERY.md with dprint
- ed6ac14 2026-10-31 ci(release): build and publish only the verified commit
- b9a37e7 2026-10-31 test(cocalc): round-trip case library with sparse, xattr, ACL and restore-mode checks

### sagemathinc/rustic : cocalc/tests-roundtrip-cases (ahead 16, behind 4)
- 7e2c2ce 2026-03-26 release: wire rustic to sagemathinc fork and linux releases
- d58099c 2026-03-26 release: add manual dispatch for tagged linux builds
- 0ef705a 2026-09-06 cli: merge upstream 0.11.4 with pinned sparse-safe CoCalc core
- 737ba53 2026-09-06 cli/backup: expose bounded admission and machine-readable capabilities
- 89d907e 2026-09-06 sparse: bundle qualified binaries with recovery evidence and provenance
- 8e8e801 2026-09-06 ci: verify candidate provenance against the exact reviewed source
- b44b066 2026-09-06 cli: emit bounded lossless size-exclusion inventory reports
- 8e4623b 2026-09-06 cli: pin strict local metadata handling and require it in candidates
- d68c11b 2026-10-31 ci: CoCalc CI with loopback round trips; releases only from tested cocalc/main commits
- 03f24b6 2026-10-31 docs: format COCALC.md and tests/RECOVERY.md with dprint
- ed6ac14 2026-10-31 ci(release): build and publish only the verified commit
- b9a37e7 2026-10-31 test(cocalc): round-trip case library with sparse, xattr, ACL and restore-mode checks

### magrathean-uk/rustic : fix/1910-redact-show-config (ahead 1, behind 4)
- 0d4c6ed 2026-09-27 Redact secrets in show-config output

### sagemathinc/rustic : cocalc/sparse-qualification-progress (ahead 23, behind 4)
- 7e2c2ce 2026-03-26 release: wire rustic to sagemathinc fork and linux releases
- d58099c 2026-03-26 release: add manual dispatch for tagged linux builds
- 0ef705a 2026-09-06 cli: merge upstream 0.11.4 with pinned sparse-safe CoCalc core
- 737ba53 2026-09-06 cli/backup: expose bounded admission and machine-readable capabilities
- 89d907e 2026-09-06 sparse: bundle qualified binaries with recovery evidence and provenance
- 8e8e801 2026-09-06 ci: verify candidate provenance against the exact reviewed source
- b44b066 2026-09-06 cli: emit bounded lossless size-exclusion inventory reports
- 8e4623b 2026-09-06 cli: pin strict local metadata handling and require it in candidates
- d68c11b 2026-10-31 ci: CoCalc CI with loopback round trips; releases only from tested cocalc/main commits
- 03f24b6 2026-10-31 docs: format COCALC.md and tests/RECOVERY.md with dprint
- ed6ac14 2026-10-31 ci(release): build and publish only the verified commit
- b9a37e7 2026-10-31 test(cocalc): round-trip case library with sparse, xattr, ACL and restore-mode checks

### sagemathinc/rustic : cocalc/m0-ci-release (ahead 11, behind 4)
- 7e2c2ce 2026-03-26 release: wire rustic to sagemathinc fork and linux releases
- d58099c 2026-03-26 release: add manual dispatch for tagged linux builds
- 0ef705a 2026-09-06 cli: merge upstream 0.11.4 with pinned sparse-safe CoCalc core
- 737ba53 2026-09-06 cli/backup: expose bounded admission and machine-readable capabilities
- 89d907e 2026-09-06 sparse: bundle qualified binaries with recovery evidence and provenance
- 8e8e801 2026-09-06 ci: verify candidate provenance against the exact reviewed source
- b44b066 2026-09-06 cli: emit bounded lossless size-exclusion inventory reports
- 8e4623b 2026-09-06 cli: pin strict local metadata handling and require it in candidates
- d68c11b 2026-10-31 ci: CoCalc CI with loopback round trips; releases only from tested cocalc/main commits
- 03f24b6 2026-10-31 docs: format COCALC.md and tests/RECOVERY.md with dprint
- ed6ac14 2026-10-31 ci(release): build and publish only the verified commit

### magrathean-uk/rustic : fix/926-multiline-descriptions (ahead 1, behind 4)
- f187310 2026-09-27 Render multiline snapshot descriptions in tables

### sagemathinc/rustic : cocalc/snapshots-show-errors (ahead 24, behind 4)
- 7e2c2ce 2026-03-26 release: wire rustic to sagemathinc fork and linux releases
- d58099c 2026-03-26 release: add manual dispatch for tagged linux builds
- 0ef705a 2026-09-06 cli: merge upstream 0.11.4 with pinned sparse-safe CoCalc core
- 737ba53 2026-09-06 cli/backup: expose bounded admission and machine-readable capabilities
- 89d907e 2026-09-06 sparse: bundle qualified binaries with recovery evidence and provenance
- 8e8e801 2026-09-06 ci: verify candidate provenance against the exact reviewed source
- b44b066 2026-09-06 cli: emit bounded lossless size-exclusion inventory reports
- 8e4623b 2026-09-06 cli: pin strict local metadata handling and require it in candidates
- d68c11b 2026-10-31 ci: CoCalc CI with loopback round trips; releases only from tested cocalc/main commits
- 03f24b6 2026-10-31 docs: format COCALC.md and tests/RECOVERY.md with dprint
- ed6ac14 2026-10-31 ci(release): build and publish only the verified commit
- b9a37e7 2026-10-31 test(cocalc): round-trip case library with sparse, xattr, ACL and restore-mode checks

### sagemathinc/rustic : cocalc/ls-json-lines (ahead 9, behind 4)
- 7e2c2ce 2026-03-26 release: wire rustic to sagemathinc fork and linux releases
- d58099c 2026-03-26 release: add manual dispatch for tagged linux builds
- 0ef705a 2026-09-06 cli: merge upstream 0.11.4 with pinned sparse-safe CoCalc core
- 737ba53 2026-09-06 cli/backup: expose bounded admission and machine-readable capabilities
- 89d907e 2026-09-06 sparse: bundle qualified binaries with recovery evidence and provenance
- 8e8e801 2026-09-06 ci: verify candidate provenance against the exact reviewed source
- b44b066 2026-09-06 cli: emit bounded lossless size-exclusion inventory reports
- 8e4623b 2026-09-06 cli: pin strict local metadata handling and require it in candidates
- 406316d 2026-10-31 feat(ls): --json-lines lists every entry with its full node metadata

### sagemathinc/rustic : cocalc/sparse-backups (ahead 8, behind 4)
- 7e2c2ce 2026-03-26 release: wire rustic to sagemathinc fork and linux releases
- d58099c 2026-03-26 release: add manual dispatch for tagged linux builds
- 0ef705a 2026-09-06 cli: merge upstream 0.11.4 with pinned sparse-safe CoCalc core
- 737ba53 2026-09-06 cli/backup: expose bounded admission and machine-readable capabilities
- 89d907e 2026-09-06 sparse: bundle qualified binaries with recovery evidence and provenance
- 8e8e801 2026-09-06 ci: verify candidate provenance against the exact reviewed source
- b44b066 2026-09-06 cli: emit bounded lossless size-exclusion inventory reports
- 8e4623b 2026-09-06 cli: pin strict local metadata handling and require it in candidates

### BradKollmyer/rustic : feat/aws-glacier (ahead 6, behind 5)
- 5de0a86 2026-09-01 docs: add AWS Glacier hot/cold S3 profile
- 055b6c2 2026-09-01 feat: add rustic warmup command and restore --warmup-only
- 41387bd 2026-09-01 feat: add warmup --status and --require-warm
- dea852a 2026-09-01 test: add CLI coverage for warmup, --status, and --require-warm
- 6263f0f 2026-09-01 docs: use data_storage_class and enable_restore in Glacier profile
- ccfedf2 2026-09-03 docs: add AWS Glacier design document

### mchobbit/rustic : backotter (ahead 46, behind 6)
- 0569d8f 2026-10-30 backotter: BackOtter's rustic_core, version 0.11.4+backotter.1
- 07fb9f1 2026-10-30 backotter: SNAP:subfolder restores give the destination its metadata
- dc4844e 2026-10-30 backotter: batch 1 - version 0.11.4+backotter.2, numeric ids and atime by default (unreviewed)
- 70acebc 2026-10-30 backotter: lock records 0.11.4+backotter.2; build guard; docs for batch 1 fixes
- 215ebd3 2026-10-31 backotter: rustix 1.1.6, which builds for DragonFly
- 90b6fea 2026-10-31 backotter: round 3 in progress - quieter time-zone fallback
- 8063521 2026-10-31 backotter: round 3 in progress - time-zone fallback, docs
- fedf26e 2026-10-31 backotter: round 3 finished - time-zone fallback checked
- 5196b81 2026-10-31 backotter: notes on restore over a symlinked directory and symlink atimes
- c7477ad 2026-10-31 backotter: notes on reading files with holes, sparse restore by block and skipped sockets
- 2f9c59b 2026-11-01 backotter: notes: a sparse restore writes only the non-zero part of each block a blob reaches into
- eeb8b4b 2026-11-01 backotter: notes: files with holes on JFS and nilfs2 come back allocated in full, in both tools alike

### mchobbit/rustic : bko-batch3 (ahead 11, behind 6)
- 0569d8f 2026-10-30 backotter: BackOtter's rustic_core, version 0.11.4+backotter.1
- 07fb9f1 2026-10-30 backotter: SNAP:subfolder restores give the destination its metadata
- dc4844e 2026-10-30 backotter: batch 1 - version 0.11.4+backotter.2, numeric ids and atime by default (unreviewed)
- 70acebc 2026-10-30 backotter: lock records 0.11.4+backotter.2; build guard; docs for batch 1 fixes
- 215ebd3 2026-10-31 backotter: rustix 1.1.6, which builds for DragonFly
- 90b6fea 2026-10-31 backotter: round 3 in progress - quieter time-zone fallback
- 8063521 2026-10-31 backotter: round 3 in progress - time-zone fallback, docs
- fedf26e 2026-10-31 backotter: round 3 finished - time-zone fallback checked
- 5196b81 2026-10-31 backotter: notes on restore over a symlinked directory and symlink atimes
- c7477ad 2026-10-31 backotter: notes on reading files with holes, sparse restore by block and skipped sockets
- 2f9c59b 2026-11-01 backotter: notes: a sparse restore writes only the non-zero part of each block a blob reaches into

### lucasssvaz/rustic : fix/jemallocator-feature-no-op (ahead 1, behind 15)
- ec68b26 2026-08-01 fix: link jemallocator-global so the jemallocator feature applies

### sengleung/rustic : fix-diff (ahead 1, behind 15)
- 519576a 2026-07-28 fix: use backup config for local diffs

### ychampion/rustic : fix-snapshot-program-version (ahead 4, behind 16)
- 833529e 2026-07-10 Ensure snapshots identify the invoking CLI
- 49bad3b 2026-07-25 Keep snapshot version calls consistent with command imports
- ef21a04 2026-07-26 Merge branch 'main' into fix-snapshot-program-version
- 987da84 2026-07-27 Merge branch 'main' into fix-snapshot-program-version

### hacker/x-rustic : fix/opendal-source-glob-exclusion (ahead 2, behind 17)
- caf2447 2026-07-26 fix(ish): support exclusion on the opendal source
- 6b319ee 2026-06-01 use git rustic_core

### ibash/rustic : local/parallel-upload-patch (ahead 1, behind 19)
- 4fd5fb0 2026-07-07 build: patch rustic_core/rustic_backend to parallel-upload fork

### mschuwalow/rustic : unreleased-opendal (ahead 2, behind 23)
- c8b5966 2026-09-14 add nix flake and dependency override
- 79bf741 2026-09-16 add envrc

### mro68/rustic_fork : chore/add-gdrive-service-example (ahead 3, behind 32)
- 75aeebf 2026-05-25 config: add gdrive service example profile
- 1c45c87 2026-05-25 chore: remove unrelated Cargo.lock change from gdrive example PR
- 0290147 2026-06-02 Merge branch 'main' into chore/add-gdrive-service-example

### Valentin-Metz/rustic : patch-1 (ahead 1, behind 34)
- c112693 2026-05-31 throttle configuration example

### mro68/rustic_fork : chore/add-pcloud-service-example (ahead 3, behind 34)
- 75aeebf 2026-05-25 config: add gdrive service example profile
- 1c45c87 2026-05-25 chore: remove unrelated Cargo.lock change from gdrive example PR
- f2b4586 2026-06-04 Add pCloud service example config

### alxint/rustic : fix-stdin-filename-in-config (ahead 1, behind 35)
- 18c9f95 2026-05-09 Fix: read stdin-filename from config file

### Turmaxx/rustic : shell-scripts-fix (ahead 1, behind 36)
- 9590a39 2026-05-05 fix(scripts): portable bash shebang and prevented array expansions

### jullanggit/rustic : patch-3 (ahead 3, behind 36)
- 5321385 2026-05-01 config/README.md: mention string requirement for [repository.options] 
- 65dbb33 2026-05-06 Merge branch 'main' into patch-3
- 1115e73 2026-06-02 dprint fmt

### jullanggit/rustic : patch-2 (ahead 3, behind 37)
- 5b5f54b 2026-05-01 Add link/note to opendal's backend documentation
- b8cb6d7 2026-05-01 squash-me: re-apply unsaved changes
- fc39d5e 2026-06-02 dprint fmt

### f18m/rustic : rustic-serve-cmd (ahead 8, behind 37)
- ba007c3 2026-04-08 Submit first draft of API for a "serve" command
- d0f5d27 2026-04-09 add wiring for the "serve" command
- f297baa 2026-04-13 get rid of the implementation spawning an external rustic process
- b51a7c3 2026-04-13 remove feature flag for serve
- 462c765 2026-04-23 remove feature flag for "serve"
- 6db84b5 2026-04-23 add single backup constraint
- b27cd81 2026-04-23 update openapi
- 90cecde 2026-04-24 Merge branch 'main' into rustic-serve-cmd

### jullanggit/rustic : patch-1 (ahead 2, behind 47)
- 01fcc99 2026-03-15 Add keep-{within-}hourly to config/full.toml
- 9305154 2026-04-02 Merge branch 'main' into patch-1

### hacker/x-rustic : feat/exclude-if-xattr (ahead 3, behind 50)
- ccdaa8a 2026-03-21 feat: add exclude-if-xattr option
- ea526fa 2026-03-30 Update core
- c0bcdc8 2026-03-30 Merge branch 'main' into feat/exclude-if-xattr

### tilpner/rustic : node-name-cow (ahead 1, behind 52)
- 873db1c 2026-03-01 perf: use Cow Node names

### yonasBSD/rustic : yonasBSD (ahead 3, behind 78)
- 27c0d80 2026-01-08 fix: Fix build on FreeBSD.
- 76aff10 2026-01-08 build(deps): Update deps.
- a9ebb24 2026-01-08 fix: Use local timezone for list command.

### 543069760/rustic-sql : v0.10.3-branch (ahead 15, behind 81)
- cb6eb34 2026-02-04 Merge tag v0.10.3 and add sql mode
- f25f351 2026-02-04 Update CI/CD
- 9c89c95 2026-02-04 Fix compatibility with v0.10.3 by removing jiff and updating time formatting
- 96df67b 2026-02-04 Fix compatibility with v0.10.3 by removing jiff and updating time formatting
- 29e8494 2026-02-04 Fix compatibility with v0.10.3 by removing jiff and updating time formatting
- cf33163 2026-02-04 Fix compatibility with v0.10.3 by removing jiff and updating time formatting
- 1829b3a 2026-02-04 Fix compatibility with v0.10.3 by removing jiff and updating time formatting
- b7d7d1a 2026-02-04 Fix compatibility with v0.10.3 by removing jiff and updating time formatting
- bb9ff1c 2026-02-04 Fix compatibility with v0.10.3 by removing jiff and updating time formatting
- f44c481 2026-02-05 Update Readme
- 96f8f95 2026-02-06 Update backup version
- 21beaff 2026-02-10 增加Stop逻辑，基于标签变量，在不方便CtrlC的情况下

### authorizedaccess/rustic : jiff (ahead 1, behind 82)
- f53779a 2025-12-24 use jiff

### SomeThink1729/rustic : feature/no_warmup_on_dry_run (ahead 5, behind 83)
- 9f7a927 2025-08-08 skip warmup script on dry run
- cdbdb52 2025-08-23 added --dry-run-warmup
- 40850cf 2025-09-05 changed logic to make --dry-run-warmup additional
- dc9a44a 2025-09-05 add warning if only using --dry-run-warmup
- b3afb08 2025-12-23 adaptions from review

### rdelaage/rustic : fix/subst_optin (ahead 1, behind 89)
- 1684003 2025-11-10 fix: Substitute environment variables in profiles only if explicitly opted-in

### rdelaage/rustic : feat/subst (ahead 1, behind 96)
- 7036be7 2025-10-10 feat: Add environment variable substitution in config files

### tilpner/rustic : prometheus-local-registry (ahead 1, behind 97)
- 60b345e 2025-10-06 fix(metrics): use short-lived local registry

### authorizedaccess/rustic : log-levels (ahead 3, behind 100)
- 4f1b9a4 2025-09-16 feat!: Add log-level-logfile and log-level-dryrun options
- 62e9e8e 2025-09-16 remove quiet options
- 30ab67e 2025-09-16 Adapt tests

### authorizedaccess/rustic : feature/broad_snapshot_id (ahead 15, behind 107)
- b9f4aa5 2025-09-15 feat(commands): copy can use latest~N to identify snapshots
- 0e55866 2025-09-15 feat(commands): forget can use latest~N to identify snapshots
- 49f24c9 2025-09-15 docs(commands): ls can use latest~N syntax for snapshots
- 0f13f31 2025-09-15 docs(commands): check can use latest and latest~N
- a13a392 2025-09-15 docs(commands): skip a line to make it easier to read
- 401fe93 2025-09-15 feat(commands): diff can use latest~N to identify snapshots
- f2dca1f 2025-09-15 docs(commands): dump can use latest~N to identify a snapshot
- e4c157a 2025-09-15 docs(commands): find can use latest~N to identify snapshots
- cef1a69 2025-09-15 feat(commands): merge can use latest and latest~N to identify snapshots
- abe6461 2025-09-15 docs(commands): mount can use latest~N to identify snapshot
- 406b0a0 2025-09-15 feat(commands): repair can use latest~N to identify snapshots
- c8947e4 2025-09-15 docs(commands): restore can use latest~N to identify snapshot

### rdelaage/rustic : feat/hooks_env (ahead 2, behind 110)
- cdcde31 2025-08-04 feat: Add environment variables to the hooks
- 41b26e1 2025-08-29 use correct hook

### gmorenz/rustic : commit-hash (ahead 1, behind 119)
- e614166 2025-07-06 Move git-version information gathering to build.rs

### johanneshorner/rustic : flake (ahead 1, behind 119)
- 50945bd 2025-07-06 add flake.nix

### Dubzer/rustic : wip (ahead 15, behind 133)
- 3acafe6 2025-05-24 wip otel
- f5015b6 2025-05-24 disable unused features
- 108988d 2025-05-24 add second variable to config entry
- 102c9f4 2025-05-25 fix otel env
- 2398a87 2025-06-04 fix config value precedence
- d34f58a 2025-06-05 rename prometheus to metrics
- 22318e2 2025-06-05 add support for OTEL_SERVICE_NAME
- d2f8e03 2025-06-05 fix job name
- a5989da 2025-06-05 make sure the build succeeds with any flag combination
- cad85be 2025-06-06 cleanup
- 0b42a5c 2025-06-06 add new fields to full.toml
- 87ae26a 2025-06-06 accept some snapshots

### raggi/rustic : raggi/sigpipe (ahead 1, behind 148)
- 3e834fe 2025-03-16 fix(commands): remove SIGPIPE default handler

### kdambiec/rustic : fix-opendal-env (ahead 2, behind 149)
- 9a0f239 2025-01-02 fix: rename OPENDAL_HOT_*/COLD_* to OPENDALHOT_*/COLD_*
- 3f7aa84 2025-03-06 Merge branch 'main' into fix-opendal-env

### kdambiec/rustic : key-commands (ahead 3, behind 155)
- 4e103f6 2024-12-10 feat(commands): Add missing key subcommands
- 101b6a1 2024-12-10 add key information when using key password
- 7d10b92 2024-12-10 branch dependency

### kdambiec/rustic : snapshot-no-group (ahead 2, behind 155)
- 616e4fa 2024-12-02 feat(snapshots): Fine-tune json output
- c4c3902 2024-12-03 Merge branch 'main' into snapshot-no-group

### jullanggit/rustic : keep_minutely (ahead 4, behind 162)
- 610403e 2024-11-29 feat: Add documentation for minutely timeline
- c5d2c46 2024-11-30 Merge branch 'main' into keep_minutely
- bd0cbd5 2024-11-30 Merge branch 'main' into keep_minutely
- f78b052 2024-11-30 Merge branch 'main' into keep_minutely

### nardoor/rustic : feature/async_incompatible (ahead 6, behind 179)
- db9b26e 2024-11-17 fix: typo
- 6552020 2024-11-17 fix(webdav): early fail when used with async incompatible repo
- 184a420 2024-11-19 Merge branch 'main' into feature/async_incompatible
- 6a425fb 2024-11-19 Merge branch 'main' into feature/async_incompatible
- e99d3d0 2024-11-20 Merge branch 'main' into feature/async_incompatible
- 7220029 2024-11-21 Merge branch 'main' into feature/async_incompatible

### timtorChen/rustic : support-arm64-docker-image (ahead 1, behind 187)
- 8715167 2024-11-11 build: support arm64 docker image

### simonsan/rustic : feat/home (ahead 11, behind 217)
- 8dd15bd 2024-02-11 feat(env): Make rustic more portable
- 6a6b42f 2024-02-11 fix(config): Use join and don't push to PathBuf
- fc1a52e 2024-02-11 docs(config): rewrite parts of profile section to account for profile locations
- 6f26e05 2024-02-11 style: fmt
- 4e89670 2024-02-11 chore: apply fixes from review
- 4934499 2024-02-11 chore: fix clippy lints by allowing due to os dependent impl
- b96173b 2024-02-11 refactor: return a collection of optional PathBufs from portability fn to easily extend vec up the call stack
- 6edf7e6 2024-02-11 refactor: replace push with join
- bf56c87 2024-02-12 docs: add comment to explain, why we need to have a lint allowed
- b75df65 2024-10-02 Merge branch 'main' into feat/home
- b8f7ec0 2024-10-09 Merge branch 'main' into feat/home

### simonsan/rustic : restore-memory (ahead 1, behind 254)
- 174f5f1 2024-02-19 feat(memory): Reduce memory usage of restore

### varqox/rustic : patch-2 (ahead 2, behind 260)
- cf051af 2024-09-21 fix: Make ls and find show the year of mtime date
- 6353c40 2024-09-22 Merge branch 'main' into patch-2

### varqox/rustic : patch-3 (ahead 2, behind 260)
- 8e2207e 2024-09-21 feat(commands): ls: Add option --json
- a77f11a 2024-09-22 Merge branch 'main' into patch-3

### varqox/rustic : hooks (ahead 13, behind 261)
- b9e2263 2024-09-02 fix: return exitcode
- 9360397 2024-08-30 feat: Add run-before and run-after hooks
- e2ae782 2024-08-30 dprint
- 664361c 2024-08-31 Use new type CommandInput
- aa56f13 2024-08-31 add more hooks
- 36282a1 2024-09-02 depend on rustic_core branch commandinput
- 720307a 2024-09-02 add docu, examples and tests
- 261e9d1 2024-09-13 Merge branch 'main'
- 45c9159 2024-09-17 adapt to rustic_core
- 47b1950 2024-09-18 update deps
- d5f7cb4 2024-09-18 Merge branch 'main'
- 473ce7c 2024-09-19 use hooks for targets in copy command

### varqox/rustic : patch-1 (ahead 2, behind 261)
- 651fea2 2024-09-21 fix: ls: Remove printing trailing space
- 264c60b 2024-09-21 fix: ls: Print unquoted path

### varqox/rustic : plural-options (ahead 3, behind 263)
- 7b89fbe 2024-09-16 fix!: use multiple options only as array in config profile
- e642c30 2024-09-17 fix config files
- d4f54a3 2024-09-18 Merge branch 'main' into plural-options

### alerque/rustic : no-self-updater (ahead 2, behind 268)
- 8be7b74 2024-04-26 chore: Remove self-updater from default features
- 8920349 2024-09-10 Merge branch 'main' into no-self-updater

### varqox/rustic : upgrade-check (ahead 1, behind 272)
- d5c5de7 2024-09-08 feat: check: Allow to only check trees+packs for given snapshots

### Mu-L/rustic : update-core (ahead 2, behind 284)
- db8b089 2024-08-18 chore: update rustic_core and rustic_backend
- 0aaa4ab 2024-08-18 rustic_testing

### nardoor/rustic : feature/diff_statistics (ahead 4, behind 285)
- 1cf41c0 2024-07-13 feat(diff): show diff statistics
- 5099ed1 2024-08-05 feat(diff): add nodetype, metadata, symlink statistics types
- be8edb5 2024-08-10 remove unused "use"
- 367c754 2024-08-10 Merge branch 'main' into feature/diff_statistics

### drdo/rustic : fix-tui-reset-terminal (ahead 2, behind 288)
- c8e5534 2024-07-09 fix(tui): reset terminal no matter what
- 8214597 2024-07-10 Merge branch 'main' into fix-tui-reset-terminal

### alerque/rustic : find (ahead 2, behind 299)
- 9881e21 2024-04-25 add find command
- dc6078b 2024-04-25 add option show-misses

### simonsan/rustic : feat/test-rework (ahead 4, behind 318)
- 9b7edb5 2024-02-11 tests: refactor integration tests to assert_cmd and predicates
- 586e0f0 2024-02-11 tests: test all config files in config subdirectory
- 527d7ef 2024-02-11 fix: typo
- b99be64 2024-02-29 Merge branch 'main' into feat/test-rework

### HaleTom/rustic : patch-1 (ahead 9, behind 321)
- 846f216 2024-02-19 Correct b2.toml
- 88f4437 2024-02-19 Update b2.toml
- 9a47485 2024-02-19 Make root optional and improve comment
- debaa11 2024-02-19 Update pending env var issue
- f184e8a 2024-02-21 Update password example
- 7e1a210 2024-02-21 Remove comment about environment variables
- 6cb801f 2024-02-22 Merge branch 'main' into patch-1
- 17497cb 2024-02-25 use rustic_password instead of restic_password
- a5d58d0 2024-02-25 format toml

### HaleTom/rustic : prune-debug (ahead 1, behind 324)
- a985bb7 2024-02-14 WIP: prune: Add debug output

### hirschenberger/rustic : patch-1 (ahead 6, behind 330)
- 4e45c53 2024-02-06 Create opendal_owncloud_webdav.toml example config
- 4b8b4e6 2024-02-06 Update opendal_owncloud_webdav.toml
- 38c3fc9 2024-02-06 Rename opendal_owncloud_webdav.toml to opendal_webdav.toml
- 3f5d04e 2024-02-06 Rename opendal_webdav.toml to webdav.toml
- 5a60905 2024-02-06 Update webdav.toml
- e413bdd 2024-02-06 Update and rename webdav.toml to webdav_owncloud_nextcloud.toml

### kapitainsky/rustic : patch-2 (ahead 1, behind 333)
- f5b5b24 2024-02-04 Create S3_iDrive.toml

### kapitainsky/rustic : patch-1 (ahead 1, behind 373)
- c3ce8a8 2024-01-03 Correct typo

### kapitainsky/rustic : mount (ahead 1, behind 384)
- 84ccf79 2023-12-26 Add mount command

### kapitainsky/rustic : update-rustic_core (ahead 2, behind 385)
- e1043d4 2023-12-11 update full.toml
- 4538534 2023-12-16 update scanning of backup source

### Vatson112/rustic : docker (ahead 2, behind 388)
- 6ebf6d8 2023-12-15 build: add Dockerfile
- c172da0 2023-12-15 build: migrate to slim image, delete RUSTIC_NO_CACHE

### nils-werner/rustic : ci-upstream-only (ahead 2, behind 400)
- 1e2cf85 2023-11-28 Run Clippy CI job upstream only, because it requires secrets
- 19f13c0 2023-11-28 Get rid of Clippy Check in CI

### SecurityWorks/rustic : update-rustic_core (ahead 1, behind 410)
- d6abee0 2023-12-11 update full.toml

### zxcat/rustic : fix-log-level (ahead 1, behind 429)
- 14efc8b 2023-10-19 Fix term log level limiter when `log-file` option set

### zxcat/rustic : release/rustic-rs/0.6.0 (ahead 17, behind 431)
- d7221dd 2023-09-18 chore: Release
- a1765f2 2023-09-18 add changelog and copy over items from old changelog files
- 01170b9 2023-09-18 fix date in changelog
- f37fb82 2023-09-18 Merge branch 'main' into release/rustic-rs/0.6.0
- 3883036 2023-09-18 Merge branch 'main' into release/rustic-rs/0.6.0
- 44da094 2023-09-19 Merge branch 'main' into release/rustic-rs/0.6.0
- f033195 2023-09-19 Generated: Updated Completions fixtures
- 32dcbe1 2023-09-19 Merge branch 'main' into release/rustic-rs/0.6.0
- 025042e 2023-09-19 remove unneeded dependencies
- 8ce72e0 2023-09-19 re-add testing feature of abscissa_core
- 5c851e4 2023-09-19 Merge branch 'main' into release/rustic-rs/0.6.0
- 4f7d266 2023-09-19 Merge branch 'main' into release/rustic-rs/0.6.0

### liziyang168/rustic : bfp-verify-be8337da (ahead 1, behind 443)
- 8a14c3d 2026-06-25 [bfp-verify] LLM repair of update-completions.yml (buggy@a6130d24)

### simonsan/rustic : pr-build (ahead 18, behind 509)
- 2e15fb7 2023-08-21 ci: split CI build and release build to manually trigger builds of artifacts for PRs
- ee1dcbc 2023-08-21 ci: Rename workflow to better reflect intentions, remove releasing versions
- b3e0489 2023-08-21 ci: update GH api call
- b59130f 2023-08-21 ci: add github_token to workflow
- 29258f7 2023-08-21 fix(ci): remove doubled repository owner
- 13d577a 2023-08-21 ci: always remove build label even after build failed
- c13067c 2023-08-21 ci: set permission for label application to PRs
- 2dc92d3 2023-08-21 ci: set permission (issues) for label application to PRs
- 59f919d 2023-08-21 ci: try an own action
- 8ab693b 2023-08-21 ci: Comment out approach with a separate for now and use the bare approach
- 9ced957 2023-08-22 ci: only run removal of label if matrix job hasn't been skipped
- 02f511a 2023-08-22 Merge branch 'main' into pr-build

### simonsan/rustic : update-deps (ahead 5, behind 521)
- 6a913da 2023-09-11 chore: review some more deps
- 74590b6 2023-09-11 style: fmt
- c399250 2023-09-11 chore(deps): fix nix build
- a1cd371 2023-09-11 style: fmt
- 1280841 2023-09-11 style: add fmt task in just

### Scandiravian/rustic : add-s3-backend (ahead 4, behind 528)
- 3a86b83 2023-09-08 drop: this commit will be dropped
- e259ca4 2023-09-08 feat: initial s3 backend implementation
- 36a4ab2 2023-09-08 feat(s3): add to choose backend
- 674c227 2023-09-08 test(s3): utility functions

### simonsan/rustic : auditable (ahead 12, behind 530)
- 266e53e 2023-08-22 ci: do non-cross builds with cargo-auditible and include `config/` directory
- 03a8e6c 2023-08-22 ci: release all built artifacts
- a1007af 2023-08-22 ci: reactivate other build matrix targets
- a6b9b99 2023-08-22 Merge branch 'main' into auditable
- c4133f1 2023-08-22 Merge branch 'main' into auditable
- aeebe59 2023-08-24 ci: account for beta builds on main branch in RELEASE_NAME
- bec6573 2023-08-24 fix: typo
- 44e433a 2023-08-24 ci: rename `rustic-main` to `rustic-beta` for beta builds from main
- 1062837 2023-08-25 ci: account for different artifact names depending on the branch in 'packaging binary'
- e5d07a9 2023-08-25 ci: fix equation signs
- 399d44c 2023-08-25 style: cargo fmt --all
- f98c09e 2023-09-07 Merge branch 'main' into auditable

### simonsan/rustic : passwords (ahead 5, behind 532)
- 7d62bc5 2023-08-23 feat: Securely zero memory for Passwords using secrecy `Zeroize` trait
- aa28374 2023-08-23 style: dprint fmt
- c8504e6 2023-08-23 fix: automatic deref
- 2eb440b 2023-08-23 fix: make examples run with RusticPassword
- 8dd67fb 2023-08-23 Merge branch 'main' into passwords

### simonsan/rustic : some-testing (ahead 6, behind 532)
- c22eb69 2023-08-18 test: implement some random tests
- 7f2945e 2023-08-18 test: prefix tests with `test_`
- 1f5ff1b 2023-08-18 test: begin implementing MockBackend
- 98ad777 2023-08-18 derive for mockbackend
- 43aec3f 2023-08-18 test: Implement MockBackend and write `test_merge_nodes`
- 7ceb1e2 2023-08-22 Merge branch 'main' into some-testing

### simonsan/rustic : benches (ahead 2, behind 532)
- 12d0a54 2023-08-23 chore: add criterion dependency
- b4691ed 2023-08-23 benchmark first try

### simonsan/rustic : fuzzing (ahead 3, behind 532)
- 0a9f0b2 2023-08-24 test: initialize fuzzing for rustic_core
- 1928fe2 2023-08-24 docs: add todo
- 5b5d967 2023-08-24 docs: add arbitrary instructions for fuzzing

### simonsan/rustic : architecture (ahead 3, behind 534)
- 548ff88 2023-07-17 docs: Add `ARCHITECTURE.md` stub
- c42e440 2023-07-19 add more headlines for topics to be covered
- 99f71c9 2023-08-21 Merge branch 'main' into architecture

### simonsan/rustic : serde-halt (ahead 1, behind 538)
- 9bee504 2023-08-19 chore: Downgrade serde due to distributing binary blob for `serde_derive` for now until further steps have been figured out.

### simonsan/rustic : ci-fail-fast (ahead 1, behind 542)
- fc185cb 2023-08-17 ci: Fail fast if something is not working out in build matrix

### simonsan/rustic : refactor-api_rebase-backup (ahead 47, behind 550)
- 5620b47 2023-07-21 only keep needed items in API
- 039dba3 2023-07-24 use AsRef<str> in interfaces
- 5f22524 2023-07-25 Overwork & document interfaces in SnapshotFiles
- bfec212 2023-07-25 overwork & document backup APIs
- 83b697e 2023-07-25 overwork & document check API
- 33079b6 2023-07-25 overwork config/key options
- 35663a4 2023-07-25 document copy/forget/prune/repair
- 972ef25 2023-07-25 document restore
- f709dbb 2023-07-25 document repoinfo
- fb327c8 2023-07-26 Extract repofile related stuff
- 981a3b5 2023-07-27 Reword and document LsOptions
- 015d58f 2023-07-30 document Repository

### Aderemi-Adesada/rustic : forget-json-option (ahead 1, behind 666)
- 4b77131 2023-06-27 add --json option to forget

### simonsan/rustic : refactor_flat (ahead 2, behind 766)
- 7f5369b 2023-04-26 Begin refactor to library
- 0337693 2023-04-26 parent 7f5369bbc05b72b16a0dfb40d40434af273190fd

### thndrbrrr/rustic : support-neg-1-opts (ahead 1, behind 837)
- c389659 2023-04-10 Interpret "--keep-* -1" as "keep all"

### thndrbrrr/rustic : support-keep-opts-with-neg-1-value (ahead 4, behind 837)
- c389659 2023-04-10 Interpret "--keep-* -1" as "keep all"
- 0c65663 2023-04-23 forget: Allow hyphen values for keep options
- 8ba676e 2023-04-23 Fix ... but has duplicate code
- e232c11 2023-04-23 Fix without duplicate code

### MichaelTbag/rustic : parallel-backup (ahead 1, behind 865)
- 348cd05 2023-03-31 WIP: Parallelize backup of files

### MichaelTbag/rustic : add-docu (ahead 1, behind 1004)
- 8174321 2022-08-23 WIP: Add docu

### MichaelTbag/rustic : add-mimalloc (ahead 1, behind 1026)
- e0eabb0 2022-09-23 user mimalloc

### Dr-Emann/rustic : tar_source (ahead 3, behind 1061)
- 05dd882 2023-01-15 Don't force a File implementation for reading in backup
- 3d3a347 2023-01-16 Use a trait rather than FnOnce
- 329ec2e 2023-01-17 First attempt at taking a tar file on input

## Old upstream branches copied into many forks (49 groups)

- `simonsan-patch-1` in 19 forks (ahead 39, behind 186): dd441a5 2023-08-19 Create bug_report.md template
- `multi-progress` in 17 forks (ahead 1, behind 385): 1d9eb01 2023-12-22 WIP: Allow multiple parallel progresses
- `feature/config-subcommand` in 17 forks (ahead 1, behind 373): 3427e04 2024-01-02 feat(commands): create show and set subcommands for config
- `feature/outsource_config` in 16 forks (ahead 1, behind 332): 1a3e6d6 2024-02-04 outsource config I
- `backend-config` in 16 forks (ahead 13, behind 373): 1683847 2023-12-29 feat(config): add backend options to config
- `prune-json` in 15 forks (ahead 2, behind 316): 8561410 2024-03-04 make json a global option
- `build/profile-small-bin` in 11 forks (ahead 2, behind 182): 261bf44 2024-11-18 chore: add max-perf-at-small-bin profile
- `build/dist` in 11 forks (ahead 9, behind 166): 134fb26 2024-11-28 build: create release with cargo-dist
- `feat/add-cross-toml` in 11 forks (ahead 8, behind 187): a1a2e8f 2024-11-09 Add Cross.toml
- `fix/backup-src` in 11 forks (ahead 1, behind 155): 84c2cb6 2024-12-04 fix backup source handling in case sanitizing fails
- `conflate` in 11 forks (ahead 1, behind 241): dae2cf7 2024-09-26 refactor: use conflate instead of merge crate
- `refactor/tracing-assoc-path` in 11 forks (ahead 12, behind 182): ee51cbe 2024-10-29 refactor(logging): use tracing and utilize associated type in `Application::Path`
- `cocalc/cli-reuse-extents` in 11 forks (ahead 40, behind 4): 7e2c2ce 2026-03-26 release: wire rustic to sagemathinc fork and linux releases
- `panic-abort` in 11 forks (ahead 1, behind 233): 5cffa20 2024-09-30 build: remove aborting on panic, reset to stack unwinding
- `lock` in 11 forks (ahead 3, behind 241): db6ebc2 2024-09-27 feat(commands): Add lock command
- `typed_path` in 10 forks (ahead 3, behind 131): 930a116 2025-05-23 refactor!: Use same path representation on all OS
- `win7` in 9 forks (ahead 1, behind 75): 556197d 2026-01-14 feat: Add Windows7 as release target
- `backup-skip-identical` in 7 forks (ahead 1, behind 410): 23640ca 2023-11-14 backup: Add option to omit identical backups
- `add-jemalloc` in 7 forks (ahead 1, behind 1618): 26e83d6 2022-07-03 Add jemalloc as allocator for supported platforms
- `restore-memory` in 5 forks (ahead 1, behind 323): 388715b 2024-02-19 feat(memory): Reduce memory usage of restore
- `windows` in 5 forks (ahead 2, behind 1666): 0893920 2022-06-09 Add CI tests for windows
- `lock` in 4 forks (ahead 5, behind 323): 91d2ca7 2024-02-16 handle breaking changes from rustic_core#163
- `init-hot` in 3 forks (ahead 1, behind 276): 850ec83 2024-09-04 feat: Add init --hot-only option
- `mount` in 3 forks (ahead 3, behind 289): e2fb461 2023-12-26 Add mount command
- `copy-target-profile` in 3 forks (ahead 1, behind 300): 3d56e7f 2024-04-22 feat!(command): copy: Use config profile as target
- `add-mimalloc` in 3 forks (ahead 1, behind 1306): 1e94b0b 2022-09-23 user mimalloc
- `clap-v4` in 3 forks (ahead 1, behind 1298): 705307c 2022-09-29 update clap to v4
- `mount` in 2 forks (ahead 8, behind 366): 6cfb26b 2023-12-11 update full.toml
- `fix-errorhandling-open` in 2 forks (ahead 1, behind 390): 1ac5851 2023-12-10 fix: error handling when entering passwords
- `ci-security` in 2 forks (ahead 1, behind 1654): 91131f7 2022-06-13 add rust audit
- `add-mimalloc` in 2 forks (ahead 1, behind 813): 8379427 2022-09-23 use mimalloc as allocator
- `backup-long` in 2 forks (ahead 1, behind 289): ae174b6 2024-05-28 feat(commands): backup: Add option --long
- `docs/fix-desc` in 2 forks (ahead 1, behind 118): dc26be7 2025-07-09 docs(config): Correct the `exclude-if-present` option descritption
- `main` in 1 forks (ahead 4, behind 37): fadad97 2026-04-29 fix: use indicatif-log-bridge to avoid breaking progress bar on log
- `main` in 1 forks (ahead 3, behind 405): d30760a 2023-11-20 #950: Enable RPM file build target
- `main` in 1 forks (ahead 2, behind 51): 7e2c2ce 2026-03-26 release: wire rustic to sagemathinc fork and linux releases
- `main` in 1 forks (ahead 2, behind 65): 021e39f 2026-02-04 Add files via upload
- `main` in 1 forks (ahead 6, behind 120): 75e6888 2025-06-07 feat: OpenTelemetry Protocol support for metrics
- `main` in 1 forks (ahead 1, behind 4): 5c1c918 2026-10-23 Update compatible dependencies and retire Dependabot
- `main` in 1 forks (ahead 1, behind 155): 5ba2026 2025-07-06 add flake.nix
- `main` in 1 forks (ahead 3, behind 187): cf5f3fc 2024-11-11 add
- `main` in 1 forks (ahead 1, behind 21): 47f7102 2026-06-29 routed to fork
- `main` in 1 forks (ahead 2, behind 23): 18c9f95 2026-05-09 Fix: read stdin-filename from config file
- `backend-config` in 1 forks (ahead 6, behind 377): 1683847 2023-12-29 feat(config): add backend options to config
- `main` in 1 forks (ahead 3, behind 41): c49b56f 2026-04-24 ci(fedora): add rpm build workflow with dnf repo on gh-pages
- `main` in 1 forks (ahead 6, behind 21): 26bd9c9 2026-06-17 changes
- `main` in 1 forks (ahead 1, behind 41): 0e1fe9c 2026-04-23 fix: respect config-supplied backup(.snapshot).init
- `lock` in 1 forks (ahead 3, behind 323): 91d2ca7 2024-02-16 handle breaking changes from rustic_core#163
- `main` in 1 forks (ahead 1, behind 380): f3008a1 2023-12-31 fix(deps): enable abscissa_core testing feature only for dev
