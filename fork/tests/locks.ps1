<#
.SYNOPSIS
  Lock parity between stock restic and rustic (fork) on one throw-away repository.
.DESCRIPTION
  restic holds a lock while a slow `backup --stdin-from-command` runs (non-exclusive), or while
  a `prune` is suspended right after it wrote its exclusive lock. rustic is run against those
  locks, and the reverse: rustic with --restic-locks holds locks and restic is run against
  them. Prints PASS / FAIL per check. Windows only (suspends a process with NtSuspendProcess).
.EXAMPLE
  pwsh fork/tests/locks.ps1 -Rustic target/release/rustic.exe -Work $env:TEMP\rlk
#>
param(
  [string]$Restic = 'restic',
  [Parameter(Mandatory)][string]$Rustic,
  [Parameter(Mandatory)][string]$Work,
  [switch]$Keep
)
$ErrorActionPreference = 'Continue'
$env:RESTIC_PASSWORD = 'parity-test'
$env:RUSTIC_PASSWORD = 'parity-test'
$Rustic = (Get-Item $Rustic).FullName
$fails = 0

Add-Type -Namespace Nt -Name P -MemberDefinition @'
[DllImport("ntdll.dll")] public static extern int NtSuspendProcess(IntPtr h);
[DllImport("ntdll.dll")] public static extern int NtResumeProcess(IntPtr h);
'@

function Rec($check, $ok, $detail = '') {
  $s = if ($ok) { 'PASS' } else { $script:fails++; 'FAIL' }
  '{0,-5} {1} {2}' -f $s, $check, $detail | Write-Host
}
function Run([string]$exe, [string[]]$a) {
  $out = & $exe @a 2>&1 | Out-String
  [pscustomobject]@{ Code = $LASTEXITCODE; Out = $out }
}
function Short($r) { "exit $($r.Code): " + (($r.Out -split "`n" | Where-Object { $_ -match '\S' } | Select-Object -Last 1)).Trim() }
function Locks { @(Get-ChildItem "$repo\locks" -File -ErrorAction SilentlyContinue) }
function WaitLocks([int]$n, [int]$ms = 15000) {
  $sw = [Diagnostics.Stopwatch]::StartNew()
  while ((Locks).Count -lt $n -and $sw.ElapsedMilliseconds -lt $ms) { Start-Sleep -Milliseconds 5 }
  (Locks).Count -ge $n
}
function WaitNoLocks([int]$ms = 15000) {
  $sw = [Diagnostics.Stopwatch]::StartNew()
  while ((Locks).Count -gt 0 -and $sw.ElapsedMilliseconds -lt $ms) { Start-Sleep -Milliseconds 50 }
  (Locks).Count -eq 0
}

if (Test-Path $Work) { Remove-Item -Recurse -Force $Work }
New-Item -ItemType Directory -Force "$Work\src" | Out-Null
$Work = (Get-Item $Work).FullName
$repo = "$Work\repo"
foreach ($s in 25, 60) { Set-Content "$Work\slow$s.cmd" "@ping -n $($s + 1) 127.0.0.1 >nul
@echo x" }
1..20 | ForEach-Object { Set-Content "$Work\src\f$_.txt" ("data $_ " * 1000) }
$rs = @('-r', $repo, '--no-cache')
$rt = @('-r', $repo, '--no-cache')

$null = Run $Restic ($rs + 'init')
$null = Run $Restic ($rs + @('backup', "$Work\src"))
$null = Run $Restic ($rs + @('backup', "$Work\src"))

# --- A. restic holds a non-exclusive lock (slow backup) ---
$snapsBefore = 0
$p = Start-Process $Restic -ArgumentList ($rs + @('backup', '--stdin-filename', 's.txt', '--stdin-from-command', '--', "$Work\slow25.cmd")) -PassThru -WindowStyle Hidden
Rec 'A0 restic backup holds a lock' (WaitLocks 1)
$snapsBefore = (Get-ChildItem "$repo\snapshots").Count
$r = Run $Rustic ($rt + @('snapshots')); Rec 'A1 rustic snapshots runs during restic backup' ($r.Code -eq 0) (Short $r)
$r = Run $Rustic ($rt + @('backup', "$Work\src")); Rec 'A2 rustic backup runs during restic backup' ($r.Code -eq 0) (Short $r)
$r = Run $Rustic ($rt + @('--restic-locks', 'backup', "$Work\src")); Rec 'A3 rustic --restic-locks backup runs during restic backup' ($r.Code -eq 0) (Short $r)
$r = Run $Rustic ($rt + @('forget', '--keep-last', '1')); Rec 'A4 rustic forget refuses during restic backup' ($r.Code -ne 0 -and $r.Out -match 'locked') (Short $r)
$r = Run $Rustic ($rt + @('--restic-locks', 'prune')); Rec 'A5 rustic --restic-locks prune refuses during restic backup' ($r.Code -ne 0 -and $r.Out -match 'locked') (Short $r)
$r = Run $Rustic ($rt + @('check')); Rec 'A5b rustic check refuses during restic backup (restic check is exclusive)' ($r.Code -ne 0 -and $r.Out -match 'locked') (Short $r)
$snapsBefore = (Get-ChildItem "$repo\snapshots").Count
$r = Run $Rustic ($rt + @('--restic-locks', 'tag', '--add', 'x')); Rec 'A5c rustic tag refuses before writing any snapshot' ($r.Code -ne 0 -and (Get-ChildItem "$repo\snapshots").Count -eq $snapsBefore) (Short $r)
Rec 'A6 refused rustic left no lock behind' ((Locks).Count -eq 1) "locks: $((Locks).Count)"
$p.WaitForExit(); Rec 'A7 restic backup finished' ($p.ExitCode -eq 0) "exit $($p.ExitCode)"

# --- B. restic holds an exclusive lock (prune suspended) ---
$p = Start-Process $Restic -ArgumentList ($rs + @('prune')) -PassThru -WindowStyle Hidden
$h = $p.Handle
$got = WaitLocks 1 10000
[void][Nt.P]::NtSuspendProcess($h)
Rec 'B0 restic prune holds an exclusive lock (suspended)' $got
if ($got) {
  $r = Run $Rustic ($rt + @('snapshots')); Rec 'B1 rustic snapshots refuses during restic prune' ($r.Code -ne 0 -and $r.Out -match 'exclusive') (Short $r)
  $r = Run $Rustic ($rt + @('backup', "$Work\src")); Rec 'B2 rustic backup refuses during restic prune' ($r.Code -ne 0 -and $r.Out -match 'exclusive') (Short $r)
  $r = Run $Rustic ($rt + @('--restic-locks', 'backup', "$Work\src")); Rec 'B3 rustic --restic-locks backup refuses, leaves no lock' ($r.Code -ne 0 -and (Locks).Count -eq 1) (Short $r)
  $r = Run $Rustic ($rt + @('--ignore-restic-locks', 'snapshots')); Rec 'B4 --ignore-restic-locks overrides' ($r.Code -eq 0) (Short $r)
  $r = Run $Rustic ($rt + @('unlock')); Rec 'B5 rustic unlock keeps a fresh lock' ($r.Code -eq 0 -and (Locks).Count -eq 1) (Short $r)
}
[void][Nt.P]::NtResumeProcess($h)
$p.WaitForExit(); Rec 'B6 restic prune finished' ($p.ExitCode -eq 0) "exit $($p.ExitCode)"

# --- C. rustic --restic-locks holds a non-exclusive lock (slow stdin backup) ---
$p = Start-Process $Rustic -ArgumentList ($rt + @('--restic-locks', 'backup', '--stdin-filename', 's.txt', '--stdin-command', ("$Work\slow25.cmd" -replace '\\','/'), '-')) -PassThru -WindowStyle Hidden
Rec 'C0 rustic --restic-locks backup holds a lock' (WaitLocks 1)
$r = Run $Restic ($rs + @('list', 'locks', '--no-lock')); Rec 'C1 restic reads the rustic lock' ($r.Code -eq 0 -and $r.Out -match '^[0-9a-f]{64}') (Short $r)
$id = ($r.Out -split "`n" | Where-Object { $_ -match '^[0-9a-f]{64}' } | Select-Object -First 1).Trim()
if ($id) { $r = Run $Restic ($rs + @('cat', 'lock', $id, '--no-lock')); Rec 'C2 restic decodes the rustic lock' ($r.Code -eq 0 -and $r.Out -match '"exclusive":\s*false' -and $r.Out -match '"pid"') (($r.Out -replace '\s+', ' ').Trim()) }
$r = Run $Restic ($rs + @('backup', "$Work\src")); Rec 'C3 restic backup runs during rustic backup' ($r.Code -eq 0) (Short $r)
$r = Run $Restic ($rs + @('prune')); Rec 'C4 restic prune refuses during rustic backup' ($r.Code -ne 0) (Short $r)
$r = Run $Restic ($rs + @('forget', '--keep-last', '1')); Rec 'C5 restic forget refuses during rustic backup' ($r.Code -ne 0) (Short $r)
$p.WaitForExit(); Rec 'C6 rustic backup finished' ($p.ExitCode -eq 0) "exit $($p.ExitCode)"
Rec 'C7 rustic removed its lock at the end' (WaitNoLocks)

# --- D. rustic --restic-locks holds an exclusive lock (prune suspended) ---
$null = Run $Restic ($rs + @('forget', '--keep-last', '1'))
$p = Start-Process $Rustic -ArgumentList ($rt + @('--restic-locks', 'prune', '--instant-delete')) -PassThru -WindowStyle Hidden
$h = $p.Handle
# rustic writes a non-exclusive lock when it opens the repository and an exclusive one before
# it deletes; suspend as soon as the second lock appears, then confirm it is exclusive
# step the process: suspend, look, resume briefly, until an exclusive lock is seen
$null = WaitLocks 1 20000
$ex = $false
for ($i = 0; $i -lt 400 -and -not $ex -and -not $p.HasExited; $i++) {
  [void][Nt.P]::NtSuspendProcess($h)
  foreach ($l in Locks) { $r = Run $Restic ($rs + @('cat', 'lock', $l.Name, '--no-lock')); if ($r.Out -match '"exclusive":\s*true') { $ex = $true } }
  if (-not $ex) { [void][Nt.P]::NtResumeProcess($h); Start-Sleep -Milliseconds 2 }
}
Rec 'D0 rustic --restic-locks prune holds an exclusive lock (suspended)' $ex
if ($ex) {
  $r = Run $Restic ($rs + @('snapshots')); Rec 'D1 restic snapshots refuses during rustic prune' ($r.Code -ne 0) (Short $r)
  $r = Run $Restic ($rs + @('backup', "$Work\src")); Rec 'D2 restic backup refuses during rustic prune' ($r.Code -ne 0) (Short $r)
  [void][Nt.P]::NtResumeProcess($h)
}
$p.WaitForExit(); Rec 'D3 rustic prune finished' ($p.ExitCode -eq 0) "exit $($p.ExitCode)"
Rec 'D4 rustic removed its locks at the end' (WaitNoLocks)

# --- E. unlock ---
$p = Start-Process $Rustic -ArgumentList ($rt + @('--restic-locks', 'backup', '--stdin-filename', 's.txt', '--stdin-command', ("$Work\slow60.cmd" -replace '\\','/'), '-')) -PassThru -WindowStyle Hidden
$null = WaitLocks 1
$p.Kill(); $p.WaitForExit()
Rec 'E0 killed rustic left its lock' ((Locks).Count -eq 1)
$r = Run $Restic ($rs + @('prune')); Rec 'E1 restic prune refuses on the left-over rustic lock' ($r.Code -ne 0) (Short $r)
$r = Run $Rustic ($rt + @('--dry-run', 'unlock', '--remove-all')); Rec 'E1b rustic --dry-run unlock removes nothing' ($r.Code -eq 0 -and (Locks).Count -eq 1 -and $r.Out -match 'would remove 1') (Short $r)
$r = Run $Rustic ($rt + @('unlock')); Rec 'E1c rustic unlock keeps a fresh lock of a dead process on Windows (age only)' ($r.Code -eq 0 -and (Locks).Count -eq 1) (Short $r)
$r = Run $Rustic ($rt + @('unlock', '--remove-all')); Rec 'E2 rustic unlock --remove-all removes it' ($r.Code -eq 0 -and (Locks).Count -eq 0) (Short $r)
$r = Run $Restic ($rs + @('check', '--read-data')); Rec 'E3 restic check --read-data clean at the end' ($r.Code -eq 0) (Short $r)
$r = Run $Rustic ($rt + @('check', '--read-data')); Rec 'E4 rustic check --read-data clean at the end' ($r.Code -eq 0) (Short $r)

"`n$fails failed"
if (-not $Keep) { Remove-Item -Recurse -Force $Work }
