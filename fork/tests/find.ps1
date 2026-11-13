<#
.SYNOPSIS
  `find --blob/--tree/--pack` parity: restic and rustic print the same lines.
.DESCRIPTION
  Two snapshots, a blob used by two files, nested trees. Text output must be equal line for
  line (pack lines of --show-pack-id compared as a set: restic prints them in map order);
  JSON compared after parsing, times as instants. Prints PASS / FAIL per check.
.EXAMPLE
  pwsh fork/tests/find.ps1 -Rustic target/release/rustic.exe -Work $env:TEMP\rfind
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
function Lines([string]$exe, [string[]]$a) { @(& $exe @a 2>$null | ForEach-Object { $_.TrimEnd() } | Where-Object { $_ -ne '' }) }
function Same($name, $ra, $rb, [switch]$Set) {
  if ($Set) { $ra = $ra | Sort-Object; $rb = $rb | Sort-Object }
  $d = Compare-Object @($ra | Where-Object { $_ }) @($rb | Where-Object { $_ }) -SyncWindow 0
  Rec $name (-not $d -and $ra.Count -gt 0) $(if ($d) { ($d | Select-Object -First 4 | ForEach-Object { "$($_.SideIndicator) $($_.InputObject)" }) -join ' | ' } else { "$($ra.Count) lines" })
}
function Norm($json) {
  ($json | ConvertFrom-Json) | ForEach-Object {
    $_.time = ([DateTimeOffset]::Parse($_.time)).UtcTicks; $_ | ConvertTo-Json -Compress
  }
}

if (Test-Path $Work) { Remove-Item -Recurse -Force $Work }
New-Item -ItemType Directory -Force "$Work\src\sub\deep" | Out-Null
$Work = (Get-Item $Work).FullName
$repo = "$Work\repo"
Set-Content "$Work\src\a.txt" 'same content'
Set-Content "$Work\src\sub\b.txt" 'same content'
Set-Content "$Work\src\sub\deep\c.txt" 'other'
$g = @('-r', $repo, '--no-cache')
& $Restic @($g + 'init') *> $null
& $Restic @($g + @('backup', "$Work\src")) *> $null
Set-Content "$Work\src\sub\deep\d.txt" 'new file'
& $Restic @($g + @('backup', "$Work\src")) *> $null

$blobs = @(& $Restic @($g + @('list', 'blobs')))
$data = @($blobs | Where-Object { $_ -like 'data *' } | ForEach-Object { $_.Split(' ')[1] })
$trees = @($blobs | Where-Object { $_ -like 'tree *' } | ForEach-Object { $_.Split(' ')[1] })
$packs = @(& $Restic @($g + @('list', 'packs')))

foreach ($d in $data) {
  Same "blob $($d.Substring(0,8))" (Lines $Restic ($g + @('find', '--blob', $d))) (Lines $Rustic ($g + @('find', '--blob', $d)))
}
Same 'blob short ids, two at once' (Lines $Restic ($g + @('find', '--blob', $data[0].Substring(0, 8), $data[1].Substring(0, 8)))) (Lines $Rustic ($g + @('find', '--blob', $data[0].Substring(0, 8), $data[1].Substring(0, 8))))
Same 'blob --reverse' (Lines $Restic ($g + @('find', '--reverse', '--blob', $data[0]))) (Lines $Rustic ($g + @('find', '--reverse', '--blob', $data[0])))
foreach ($t in $trees) {
  Same "tree $($t.Substring(0,8))" (Lines $Restic ($g + @('find', '--tree', $t))) (Lines $Rustic ($g + @('find', '--tree', $t)))
}
Same 'two trees at once' (Lines $Restic ($g + @('find', '--tree', $trees[0], $trees[-1]))) (Lines $Rustic ($g + @('find', '--tree', $trees[0], $trees[-1])))
foreach ($p in $packs) {
  Same "pack $($p.Substring(0,8))" (Lines $Restic ($g + @('find', '--pack', $p))) (Lines $Rustic ($g + @('find', '--pack', $p)))
}
Same 'blob --show-pack-id' (Lines $Restic ($g + @('find', '--show-pack-id', '--blob', $data[0]))) (Lines $Rustic ($g + @('find', '--show-pack-id', '--blob', $data[0]))) -Set
Same 'pack --show-pack-id' (Lines $Restic ($g + @('find', '--show-pack-id', '--pack', $packs[0]))) (Lines $Rustic ($g + @('find', '--show-pack-id', '--pack', $packs[0]))) -Set
Same 'blob --json' (Norm (& $Restic @($g + @('--json', 'find', '--blob', $data[0])))) (Norm (& $Rustic @($g + @('find', '--json', '--blob', $data[0]))))
Same 'tree --json' (Norm (& $Restic @($g + @('--json', 'find', '--tree', $trees[0])))) (Norm (& $Rustic @($g + @('find', '--json', '--tree', $trees[0]))))
& $Rustic @($g + @('find', '--pack', ('0' * 64))) *> $null; $rc = $LASTEXITCODE
& $Restic @($g + @('find', '--pack', ('0' * 64))) *> $null
Rec 'unknown pack fails in both' ($rc -ne 0 -and $LASTEXITCODE -ne 0) "rustic $rc restic $LASTEXITCODE"

"`n$fails failed"
if (-not $Keep) { Remove-Item -Recurse -Force $Work }
