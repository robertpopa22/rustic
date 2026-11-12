<#
.SYNOPSIS
  Cross-compatibility checks between stock restic and rustic on the same repositories.
.DESCRIPTION
  Creates throw-away repositories under -Work, runs each scenario with both tools and
  prints one line per check: PASS / FAIL / DIFF / INFO. Nothing outside -Work is touched,
  except reading -Source. The work directory is deleted at the end unless -Keep.
.EXAMPLE
  pwsh fork/tests/cross-compat.ps1 -Rustic target/release/rustic.exe -Work $env:TEMP\rcc
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
$results = [System.Collections.Generic.List[object]]::new()

function Rec($area, $check, $status, $detail = '') {
  $results.Add([pscustomobject]@{ Area = $area; Check = $check; Status = $status; Detail = $detail })
  '{0,-5} {1,-14} {2} {3}' -f $status, $area, $check, $detail | Write-Host
}
function Run([string]$exe, [string[]]$a) {
  $out = & $exe @a 2>&1 | Out-String
  [pscustomobject]@{ Code = $LASTEXITCODE; Out = $out }
}
function Ok($area, $check, $r) {
  if ($r.Code -eq 0) { Rec $area $check PASS } else { Rec $area $check FAIL (($r.Out -split "`n" | Select-Object -Last 2) -join ' | ').Trim() }
}
function Files($dir) {
  Get-ChildItem -Recurse -File $dir | Sort-Object FullName | ForEach-Object {
    $_.FullName.Substring($dir.Length) + ' ' + (Get-FileHash $_.FullName -Algorithm SHA256).Hash
  }
}

if (Test-Path $Work) { Remove-Item -Recurse -Force $Work }
New-Item -ItemType Directory -Force $Work | Out-Null; $Work = (Get-Item $Work).FullName
$src = Join-Path $Work 'src'
New-Item -ItemType Directory -Force "$src\dir\sub", "$src\empty" | Out-Null
Set-Content "$src\a.txt" 'alpha'
Set-Content "$src\dir\b.txt" ('beta' * 1000)
[IO.File]::WriteAllBytes("$src\dir\sub\rand.bin", [byte[]](1..(3MB) | ForEach-Object { Get-Random -Maximum 256 }))
[IO.File]::WriteAllBytes("$src\zeros.bin", [byte[]]::new(2MB))

# --- 1. restic writes, rustic reads -------------------------------------------------
$r1 = Join-Path $Work 'r-restic'
Ok init 'restic init (v2)' (Run $Restic @('-r', $r1, 'init'))
Ok write 'restic backup' (Run $Restic @('-r', $r1, 'backup', $src, '--host', 'h1', '--tag', 't1'))
Ok read 'rustic snapshots' (Run $Rustic @('-r', $r1, 'snapshots'))
Ok read 'rustic check --read-data' (Run $Rustic @('-r', $r1, 'check', '--read-data'))
$dst = Join-Path $Work 'restore-rustic'
Ok read 'rustic restore' (Run $Rustic @('-r', $r1, 'restore', 'latest', $dst))
$want = Files $src
$restored = Get-ChildItem -Recurse -Directory $dst | Where-Object { Test-Path (Join-Path $_.FullName 'a.txt') } | Select-Object -First 1
if ($restored -and -not (Compare-Object $want (Files $restored.FullName))) { Rec read 'rustic restore content' PASS } else { Rec read 'rustic restore content' FAIL }
Ok read 'rustic ls' (Run $Rustic @('-r', $r1, 'ls', 'latest'))
Ok read 'rustic find' (Run $Rustic @('-r', $r1, 'find', '--glob', '*b.txt'))
Ok read 'rustic dump file' (Run $Rustic @('-r', $r1, 'dump', ('latest:' + (($src -replace '^([A-Za-z]):', '$1') -replace '\\', '/') + '/a.txt')))
Ok write 'rustic backup into restic repo' (Run $Rustic @('-r', $r1, 'backup', $src, '--host', 'h2'))
Ok write 'restic check after rustic backup' (Run $Restic @('-r', $r1, 'check', '--read-data'))
Ok write 'rustic forget --keep-last 1 --prune' (Run $Rustic @('-r', $r1, 'forget', '--keep-last', '1', '--prune', '--instant-delete'))
Ok write 'restic check after rustic prune' (Run $Restic @('-r', $r1, 'check', '--read-data'))
Ok write 'restic snapshots after rustic prune' (Run $Restic @('-r', $r1, 'snapshots'))

# --- 2. rustic writes, restic reads -------------------------------------------------
$r2 = Join-Path $Work 'r-rustic'
Ok init 'rustic init' (Run $Rustic @('-r', $r2, 'init'))
Ok write 'rustic backup' (Run $Rustic @('-r', $r2, 'backup', $src, '--host', 'h1'))
Ok read 'restic snapshots' (Run $Restic @('-r', $r2, 'snapshots'))
Ok read 'restic check --read-data' (Run $Restic @('-r', $r2, 'check', '--read-data'))
$dst2 = Join-Path $Work 'restore-restic'
Ok read 'restic restore' (Run $Restic @('-r', $r2, 'restore', 'latest', '--target', $dst2))
$restored2 = Get-ChildItem -Recurse -Directory $dst2 | Where-Object { Test-Path (Join-Path $_.FullName 'a.txt') } | Select-Object -First 1
if ($restored2 -and -not (Compare-Object $want (Files $restored2.FullName))) { Rec read 'restic restore content' PASS } else { Rec read 'restic restore content' FAIL }
Ok write 'restic backup into rustic repo' (Run $Restic @('-r', $r2, 'backup', $src, '--host', 'h2'))
Ok write 'restic forget --prune' (Run $Restic @('-r', $r2, 'forget', '--keep-last', '1', '--prune'))
Ok write 'rustic check after restic prune' (Run $Rustic @('-r', $r2, 'check', '--read-data'))

# --- 3. keys ----------------------------------------------------------------------
$pw = Join-Path $Work 'pw2.txt'; Set-Content $pw 'second-password' -NoNewline
Ok key 'restic key add' (Run $Restic @('-r', $r1, 'key', 'add', '--new-password-file', $pw))
$env:RUSTIC_PASSWORD = 'second-password'
Ok key 'rustic opens with restic-added key' (Run $Rustic @('-r', $r1, 'snapshots'))
$env:RUSTIC_PASSWORD = 'parity-test'
Ok key 'rustic key add' (Run $Rustic @('-r', $r2, 'key', 'add', '--new-password-file', $pw))
$env:RESTIC_PASSWORD = 'second-password'
Ok key 'restic opens with rustic-added key' (Run $Restic @('-r', $r2, 'snapshots'))
$env:RESTIC_PASSWORD = 'parity-test'
Ok key 'restic key list on rustic repo' (Run $Restic @('-r', $r2, 'key', 'list'))
Ok key 'rustic key list on restic repo' (Run $Rustic @('-r', $r1, 'key', 'list'))

# --- 4. copy between tools ---------------------------------------------------------
$r3 = Join-Path $Work 'r-copy'
Ok copy 'restic init --copy-chunker-params' (Run $Restic @('-r', $r3, 'init', '--from-repo', $r1, '--copy-chunker-params', '--from-password-file', $pw))
$cfg = Join-Path $Work 'copy.toml'
@"
[repository]
repository = '$($r3 -replace "'", "''")'
password = 'parity-test'
"@ | Set-Content $cfg
Ok copy 'rustic copy into restic-made repo' (Run $Rustic @('-r', $r1, 'copy', '--target', ($cfg -replace '\.toml$', '')))
Ok copy 'restic check of copy target' (Run $Restic @('-r', $r3, 'check', '--read-data'))

# --- 5. locks ----------------------------------------------------------------------
# restic leaves a lock file while it runs; simulate a stale exclusive lock with restic itself.
$lockDir = Join-Path $r1 'locks'
$before = @(Get-ChildItem $lockDir -ErrorAction SilentlyContinue).Count
$r = Run $Rustic @('-r', $r1, 'list', 'locks')
Rec lock 'rustic list locks' ($(if ($r.Code -eq 0) { 'PASS' } else { 'DIFF' })) (($r.Out -split "`n" | Select-Object -Last 1).Trim())
Rec lock 'rustic creates lock files' INFO ("locks before=$before after=" + @(Get-ChildItem $lockDir -ErrorAction SilentlyContinue).Count)

# --- 6. json -----------------------------------------------------------------------
foreach ($cmd in @('snapshots', 'ls latest', 'find --glob *a.txt', 'repoinfo', 'key list')) {
  $a = @('-r', $r1, '--json') + ($cmd -split ' ')
  if ($cmd -eq 'snapshots' -or $cmd -like 'ls*' -or $cmd -eq 'repoinfo') { $a = @('-r', $r1) + ($cmd -split ' ') + '--json' }
  $o = & $Rustic @a 2>$null | Out-String
  try { $null = $o | ConvertFrom-Json -ErrorAction Stop; Rec json "rustic $cmd --json" PASS } catch { Rec json "rustic $cmd --json" DIFF 'not one JSON document' }
}

# --- 7. Windows mount ---------------------------------------------------------------
$r = Run $Rustic @('mount', '--help')
Rec mount 'rustic mount on this OS' ($(if ($r.Code -eq 0) { 'PASS' } else { 'DIFF' })) (($r.Out -split "`n" | Select-Object -First 1).Trim())

# --- 8. repository version 1 --------------------------------------------------------
$r4 = Join-Path $Work 'r-v1'
Ok format 'restic init --repository-version 1' (Run $Restic @('-r', $r4, 'init', '--repository-version', '1'))
Ok format 'rustic backup into v1' (Run $Rustic @('-r', $r4, 'backup', $src))
Ok format 'restic check v1 after rustic' (Run $Restic @('-r', $r4, 'check', '--read-data'))

$results | Export-Csv -NoTypeInformation (Join-Path ([IO.Path]::GetTempPath()) 'rustic-cross-compat.csv')
$results | Group-Object Status | ForEach-Object { "$($_.Name): $($_.Count)" } | Write-Host
if (-not $Keep) { Remove-Item -Recurse -Force $Work }
