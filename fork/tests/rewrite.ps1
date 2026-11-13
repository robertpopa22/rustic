<#
.SYNOPSIS
  `rewrite --new-host`, `--new-time`, `--snapshot-summary` (-s): restic and rustic, each on its
  own copy of one restic repository, leave snapshots that restic reads the same way.
.EXAMPLE
  pwsh fork/tests/rewrite.ps1 -Rustic target/release/rustic.exe -Work $env:TEMP\rrw
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
function Rec($check, $ok, $detail = '') {
  $s = if ($ok) { 'PASS' } else { $script:fails++; 'FAIL' }
  '{0,-5} {1} {2}' -f $s, $check, $detail | Write-Host
}
# what restic sees of the rewritten snapshot: host, time as instant, tags, files, bytes, count
function Seen($repo) {
  $all = @(& $Restic -r $repo --no-cache snapshots --json | ConvertFrom-Json)
  # the rewritten snapshot carries `original`; without one, the repository has only the source
  $sn = @($all | Where-Object { $_.original })[0]; if (-not $sn) { $sn = $all[0] }
  '{0} | {1} | {2} | files {3} bytes {4} | {5} snapshots' -f $sn.hostname,
    ([DateTimeOffset]::Parse($sn.time)).UtcTicks, (($sn.tags | Sort-Object) -join ','),
    $sn.summary.total_files_processed, $sn.summary.total_bytes_processed, $all.Count
}
function Pair($name, [string[]]$ra, [string[]]$rb) {
  Remove-Item -Recurse -Force "$Work\a", "$Work\b" -ErrorAction SilentlyContinue
  Copy-Item -Recurse $repo "$Work\a"; Copy-Item -Recurse $repo "$Work\b"
  & $Restic @(@('-r', "$Work\a", '--no-cache', 'rewrite') + $ra + 'latest') *> $null; $ca = $LASTEXITCODE
  & $Rustic @(@('-r', "$Work\b", '--no-cache', 'rewrite') + $rb + 'latest') *> $null; $cb = $LASTEXITCODE
  $sa = Seen "$Work\a"; $sb = Seen "$Work\b"
  Rec $name ($ca -eq 0 -and $cb -eq 0 -and $sa -eq $sb) "restic: $sa / rustic: $sb (exit $ca/$cb)"
  & $Restic -r "$Work\b" --no-cache check *> $null
  Rec "$name - restic check on rustic result" ($LASTEXITCODE -eq 0)
}

if (Test-Path $Work) { Remove-Item -Recurse -Force $Work }
New-Item -ItemType Directory -Force "$Work\src\sub" | Out-Null
$Work = (Get-Item $Work).FullName
$repo = "$Work\repo"
Set-Content "$Work\src\a.txt" 'aaaa'
Set-Content "$Work\src\sub\b.txt" 'bbbbbbbb'
& $Restic -r $repo --no-cache init *> $null
& $Restic -r $repo --no-cache backup --host orig "$Work\src" *> $null

Pair 'new-host' @('--new-host', 'renamed') @('--new-host', 'renamed')
Pair 'new-time' @('--new-time', '2025-01-02 03:04:05') @('--new-time', '2025-01-02 03:04:05')
Pair 'new-host + new-time + forget' @('--forget', '--new-host', 'h2', '--new-time', '2025-01-02 03:04:05') @('--forget', '--new-host', 'h2', '--new-time', '2025-01-02 03:04:05')
Pair '-s on a summary that is already right (no new snapshot)' @('-s') @('-s')
Pair 'exclude updates files and bytes' @('-e', 'b.txt') @('--glob', '!b.txt')

"`n$fails failed"
if (-not $Keep) { Remove-Item -Recurse -Force $Work }
