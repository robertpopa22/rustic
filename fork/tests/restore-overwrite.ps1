<#
.SYNOPSIS
  `restore --overwrite always|if-changed|if-newer|never` and `--verify`: restic and rustic
  leave the same content and modification times in a pre-populated target.
.DESCRIPTION
  Target before restore: `newer.txt` changed with a newer mtime than the snapshot,
  `older.txt` changed with an older mtime, `same.txt` identical, `samesize.txt` changed but
  same size and same mtime (only a content check finds it), `extra.txt` not in the snapshot.
.EXAMPLE
  pwsh fork/tests/restore-overwrite.ps1 -Rustic target/release/rustic.exe -Work $env:TEMP\rov
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
function State($dir) {
  Get-ChildItem -Recurse -File $dir | Sort-Object Name | ForEach-Object {
    # extra.txt is written by the test itself, so its time differs; compare its content only
    $time = if ($_.Name -eq 'extra.txt') { '' } else { $_.LastWriteTimeUtc.Ticks }
    '{0} {1} {2}' -f $_.Name, (Get-FileHash $_.FullName -Algorithm SHA256).Hash.Substring(0, 12), $time
  }
}

if (Test-Path $Work) { Remove-Item -Recurse -Force $Work }
New-Item -ItemType Directory -Force "$Work\src" | Out-Null
$Work = (Get-Item $Work).FullName
$repo = "$Work\repo"
$t0 = [datetime]::SpecifyKind([datetime]'2026-01-01T12:00:00', 'Utc')
foreach ($n in 'newer', 'older', 'same', 'samesize') {
  Set-Content "$Work\src\$n.txt" "original $n"
  (Get-Item "$Work\src\$n.txt").LastWriteTimeUtc = $t0
}
$g = @('-r', $repo, '--no-cache')
& $Restic @($g + 'init') *> $null
Push-Location "$Work\src"; & $Restic @($g + @('backup', '.')) *> $null; Pop-Location

function Prepare($dir) {
  New-Item -ItemType Directory -Force $dir | Out-Null
  Set-Content "$dir\newer.txt" 'local change, newer'; (Get-Item "$dir\newer.txt").LastWriteTimeUtc = $t0.AddDays(1)
  Set-Content "$dir\older.txt" 'local change, older'; (Get-Item "$dir\older.txt").LastWriteTimeUtc = $t0.AddDays(-1)
  Set-Content "$dir\same.txt" 'original same'; (Get-Item "$dir\same.txt").LastWriteTimeUtc = $t0
  Set-Content "$dir\samesize.txt" 'ORIGINAL samesize'; (Get-Item "$dir\samesize.txt").LastWriteTimeUtc = $t0
  Set-Content "$dir\extra.txt" 'extra'
}

foreach ($mode in 'always', 'if-changed', 'if-newer', 'never') {
  Prepare "$Work\a-$mode"; Prepare "$Work\b-$mode"
  & $Restic @($g + @('restore', 'latest', '--target', "$Work\a-$mode", '--overwrite', $mode)) *> $null; $ra = $LASTEXITCODE
  & $Rustic @($g + @('restore', 'latest', "$Work\b-$mode", '--overwrite', $mode)) *> $null; $rb = $LASTEXITCODE
  $sa = State "$Work\a-$mode"; $sb = State "$Work\b-$mode"
  $d = Compare-Object @($sa) @($sb)
  Rec "overwrite $mode" ($ra -eq 0 -and $rb -eq 0 -and -not $d) $(if ($d) { ($d | ForEach-Object { "$($_.SideIndicator) $($_.InputObject)" }) -join ' | ' } else { '' })
}

Remove-Item -Recurse -Force "$Work\a-always", "$Work\b-always"
$out = & $Rustic @($g + @('restore', 'latest', "$Work\v", '--verify')) 2>&1 | Out-String
Rec 'rustic --verify on a fresh restore' ($LASTEXITCODE -eq 0 -and $out -match 'verified 4 files') ((($out -split "`n" | Select-String 'verified').Line -join ' '))
$out = & $Restic @($g + @('restore', 'latest', '--target', "$Work\w", '--verify')) 2>&1 | Out-String
Rec 'restic --verify on a fresh restore (reference)' ($LASTEXITCODE -eq 0)

"`n$fails failed"
if (-not $Keep) { Remove-Item -Recurse -Force $Work }
