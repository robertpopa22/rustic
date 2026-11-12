<#
.SYNOPSIS
  Condenses a fork-radar report: groups branches with the same commits, drops bot branches,
  and separates work that exists only in other forks from old upstream branches that every
  fork copied.
#>
param(
  [Parameter(Mandatory)][string]$Radar,
  [Parameter(Mandatory)][string]$Out,
  [string]$Self = 'robertpopa22'
)
$sections = @(); $cur = $null
foreach ($line in Get-Content $Radar) {
  if ($line -match '^## (\S+) : (\S+)\s+\(ahead (\d+), behind (\d+)') {
    $cur = [pscustomobject]@{ Fork = $Matches[1]; Branch = $Matches[2]; Ahead = [int]$Matches[3]; Behind = [int]$Matches[4]; Commits = [System.Collections.Generic.List[string]]::new() }
    $sections += $cur
  } elseif ($cur -and $line -match '^\s+- `([0-9a-f]{7})` (.*)$') {
    $cur.Commits.Add("$($Matches[1]) $($Matches[2])")
  }
}
$sections = $sections | Where-Object { $_.Branch -notmatch '^(release-plz|renovate|dependabot)' -and $_.Fork -notlike "$Self/*" }
$groups = $sections | Group-Object { ($_.Commits | ForEach-Object { $_.Substring(0, 7) } | Sort-Object) -join ',' }
$selfBranches = @(Get-Content $Radar | Where-Object { $_ -match "^## $Self/\S+ : (\S+)" } | ForEach-Object { ($_ -split ' : ')[1].Split(' ')[0] })
$lines = @("# Fork radar summary: $(Split-Path $Radar -Leaf)", '')
$own = $groups | Where-Object { $_.Count -eq 1 -and $_.Group[0].Branch -notin $selfBranches } | ForEach-Object { $_.Group[0] } | Sort-Object Behind
$lines += "## Work found only in one fork ($(@($own).Count) branches), freshest first", ''
foreach ($s in $own) {
  $lines += "### $($s.Fork) : $($s.Branch) (ahead $($s.Ahead), behind $($s.Behind))"
  $lines += ($s.Commits | Select-Object -First 12 | ForEach-Object { "- $_" })
  $lines += ''
}
$legacy = $groups | Where-Object { $_.Count -gt 1 -or $_.Group[0].Branch -in $selfBranches }
$lines += "## Old upstream branches copied into many forks ($(@($legacy).Count) groups)", ''
foreach ($g in $legacy | Sort-Object Count -Descending) {
  $s = $g.Group[0]
  $lines += "- ``$($s.Branch)`` in $($g.Count) forks (ahead $($s.Ahead), behind $($s.Behind)): $($s.Commits | Select-Object -First 1)"
}
$lines | Set-Content -Encoding utf8 $Out
Write-Host "written ${Out}:$(@($own).Count) unique, $(@($legacy).Count) legacy groups"
