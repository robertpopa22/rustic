<#
.SYNOPSIS
  `cat` parity: restic and rustic print the same content for each file and blob type.
.DESCRIPTION
  JSON outputs are compared after parsing (restic re-indents JSON); pack and blob outputs are
  compared byte for byte. Prints PASS / FAIL per check.
.EXAMPLE
  pwsh fork/tests/cat.ps1 -Rustic target/release/rustic.exe -Work $env:TEMP\rcat
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
function Text([string]$exe, [string[]]$a) { (& $exe @a 2>$null | Out-String) }
function Bytes([string]$exe, [string[]]$a, [string]$out) {
  $psi = [Diagnostics.ProcessStartInfo]::new($exe)
  foreach ($x in $a) { $psi.ArgumentList.Add($x) }
  $psi.RedirectStandardOutput = $true; $psi.RedirectStandardError = $true; $psi.UseShellExecute = $false
  $p = [Diagnostics.Process]::Start($psi)
  $fs = [IO.File]::Create($out); $p.StandardOutput.BaseStream.CopyTo($fs); $fs.Close()
  $null = $p.StandardError.ReadToEnd(); $p.WaitForExit()
  (Get-FileHash $out -Algorithm SHA256).Hash
}
function SameJson($a, $b) {
  try { (($a | ConvertFrom-Json -Depth 50 | ConvertTo-Json -Depth 50 -Compress) -eq ($b | ConvertFrom-Json -Depth 50 | ConvertTo-Json -Depth 50 -Compress)) } catch { $false }
}

if (Test-Path $Work) { Remove-Item -Recurse -Force $Work }
New-Item -ItemType Directory -Force "$Work\src" | Out-Null
$Work = (Get-Item $Work).FullName
$repo = "$Work\repo"
$bin = [byte[]]::new(300000); [Random]::new(7).NextBytes($bin); [IO.File]::WriteAllBytes("$Work\src\bin.dat", $bin)
Set-Content "$Work\src\a.txt" 'hello'
$g = @('-r', $repo, '--no-cache')
$null = Text $Restic ($g + 'init')
$null = Text $Restic ($g + @('backup', "$Work\src"))

$key = @(& $Restic @($g + @('list', 'keys')))[0].Trim()
$pack = @(& $Restic @($g + @('list', 'packs')))[0].Trim()
$blobs = @(& $Restic @($g + @('list', 'blobs'))) | ForEach-Object { $_.Trim() }
$data = ($blobs | Where-Object { $_ -like 'data *' } | Select-Object -First 1).Split(' ')[1].Trim()
$tree = ($blobs | Where-Object { $_ -like 'tree *' } | Select-Object -First 1).Split(' ')[1].Trim()

Rec 'config' (SameJson (Text $Restic ($g + @('cat', 'config'))) (Text $Rustic ($g + @('cat', 'config'))))
Rec 'masterkey' (SameJson (Text $Restic ($g + @('cat', 'masterkey'))) (Text $Rustic ($g + @('cat', 'masterkey'))))
Rec 'key' (SameJson (Text $Restic ($g + @('cat', 'key', $key))) (Text $Rustic ($g + @('cat', 'key', $key))))
# restic needs the full key id; rustic also accepts a prefix (superset)
Rec 'key by prefix (rustic only)' (SameJson (Text $Restic ($g + @('cat', 'key', $key))) (Text $Rustic ($g + @('cat', 'key', $key.Substring(0, 8)))))

# a lock held by restic: suspend a prune right after it wrote its lock
Add-Type -Namespace Nt -Name P -MemberDefinition '[DllImport("ntdll.dll")] public static extern int NtSuspendProcess(IntPtr h); [DllImport("ntdll.dll")] public static extern int NtResumeProcess(IntPtr h);'
$p = Start-Process $Restic -ArgumentList ($g + 'prune') -PassThru -WindowStyle Hidden; $h = $p.Handle
$sw = [Diagnostics.Stopwatch]::StartNew()
while (-not (Get-ChildItem "$repo\locks" -File -ErrorAction SilentlyContinue) -and $sw.ElapsedMilliseconds -lt 10000) { Start-Sleep -Milliseconds 5 }
[void][Nt.P]::NtSuspendProcess($h)
$lock = (Get-ChildItem "$repo\locks" -File | Select-Object -First 1).Name
Rec 'lock' (SameJson (Text $Restic ($g + @('cat', 'lock', $lock, '--no-lock'))) (Text $Rustic ($g + @('--ignore-restic-locks', 'cat', 'lock', $lock))))
[void][Nt.P]::NtResumeProcess($h); $p.WaitForExit()

$a = Bytes $Restic ($g + @('cat', 'pack', $pack)) "$Work\p1"; $b = Bytes $Rustic ($g + @('cat', 'pack', $pack)) "$Work\p2"
Rec 'pack (bytes)' ($a -eq $b -and $a -eq (Get-FileHash (Get-ChildItem -Recurse -File "$repo\data" | Where-Object Name -EQ $pack).FullName).Hash)
$a = Bytes $Restic ($g + @('cat', 'blob', $data)) "$Work\b1"; $b = Bytes $Rustic ($g + @('cat', 'blob', $data)) "$Work\b2"
Rec 'data blob (bytes)' ($a -eq $b) "$($a.Substring(0,8)) $($b.Substring(0,8))"
$a = Bytes $Restic ($g + @('cat', 'blob', $tree)) "$Work\t1"; $b = Bytes $Rustic ($g + @('cat', 'blob', $tree)) "$Work\t2"
Rec 'tree blob (bytes)' ($a -eq $b) "$($a.Substring(0,8)) $($b.Substring(0,8))"
& $Rustic @($g + @('cat', 'blob', ('0' * 64))) 2>$null | Out-Null; $rc = $LASTEXITCODE
& $Restic @($g + @('cat', 'blob', ('0' * 64))) 2>$null | Out-Null
Rec 'unknown blob fails in both' ($rc -ne 0 -and $LASTEXITCODE -ne 0) "rustic $rc restic $LASTEXITCODE"

"`n$fails failed"
if (-not $Keep) { Remove-Item -Recurse -Force $Work }
