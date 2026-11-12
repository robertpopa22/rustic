<#
.SYNOPSIS
  Lists forks of rustic-rs repositories that carry commits upstream does not have.
.DESCRIPTION
  For every fork of the given upstream repository, compares every branch pushed after the
  fork was created with upstream's default branch and prints the branches that are ahead,
  with their commits. Read-only; uses the GitHub API through `gh`.
.EXAMPLE
  pwsh fork/tools/fork-radar.ps1 -Upstream rustic-rs/rustic_core -Out radar-core.md
#>
param(
  [Parameter(Mandatory)][string]$Upstream,
  [Parameter(Mandatory)][string]$Out
)
$base = gh api "repos/$Upstream" --jq .default_branch
$forks = gh api "repos/$Upstream/forks?per_page=100" --paginate --jq '.[] | [.full_name, .created_at, .pushed_at, .stargazers_count] | @tsv' |
  ForEach-Object { $f = $_ -split "`t"; [pscustomobject]@{ Name = $f[0]; Created = [datetime]$f[1]; Pushed = [datetime]$f[2]; Stars = [int]$f[3] } }
$lines = @("# Fork radar: $Upstream", '', "Forks: $($forks.Count). Generated $(Get-Date -Format 'yyyy-MM-dd HH:mm').", '')
$active = $forks | Where-Object { $_.Pushed -gt $_.Created.AddMinutes(5) }
$lines += "Forks pushed after creation: $($active.Count).", ''
foreach ($f in $active) {
  $branches = gh api "repos/$($f.Name)/branches?per_page=100" --paginate --jq '.[].name' 2>$null
  foreach ($b in $branches) {
    $owner = $f.Name.Split('/')[0]
    $cmp = gh api "repos/$Upstream/compare/${base}...${owner}:$([uri]::EscapeDataString($b))" --jq '[.ahead_by, .behind_by] | @tsv' 2>$null
    if (-not $cmp) { continue }
    $ahead, $behind = $cmp -split "`t"
    if ([int]$ahead -eq 0) { continue }
    $commits = gh api "repos/$Upstream/compare/${base}...${owner}:$([uri]::EscapeDataString($b))" --jq '.commits[] | "  - `\(.sha[0:7])` \(.commit.author.date[0:10]) \(.commit.message | split("\n")[0])"' 2>$null
    $lines += "## $($f.Name) : $b  (ahead $ahead, behind $behind, stars $($f.Stars))", ''
    $lines += ($commits | Select-Object -First 30)
    if (@($commits).Count -gt 30) { $lines += "  - ... $(@($commits).Count - 30) more" }
    $lines += ''
  }
}
$lines | Set-Content -Encoding utf8 $Out
Write-Host "written $Out"
