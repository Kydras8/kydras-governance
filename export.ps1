param([string]$Profile="KYDRAS-CORE",[string]$Brand="Kydras Systems Inc.")
$ts = Get-Date -Format "yyyyMMdd-HHmmss"
$badges = Get-Content "$PSScriptRoot/doctor_report.json" -Raw | ConvertFrom-Json
$stats  = @{
  pass = ($badges | ? status -eq "PASS").Count
  warn = ($badges | ? status -eq "WARN").Count
  fail = ($badges | ? status -eq "FAIL").Count
  total= $badges.Count
}
($badges | ConvertTo-Json -Depth 6) | Set-Content "$env:USERPROFILE/kydras-governance/doctor_report_$ts.json"
(New-Object System.Text.StringBuilder).AppendLine("| Plugin | Status | Severity |").ToString() | Out-File "$env:USERPROFILE/kydras-governance/audit_table_$ts.md"
"<!DOCTYPE html><html><body><h1>$Brand</h1><p>PASS:$($stats.pass) WARN:$($stats.warn) FAIL:$($stats.fail)</p></body></html>" | Out-File "$env:USERPROFILE/kydras-governance/executive_dashboard_$ts.html"
Get-ChildItem "$env:USERPROFILE\kydras-governance" -Filter "executive_dashboard_*.html" | Sort-Object LastWriteTime -Descending | Select-Object -First 1 | ForEach-Object { $repoRoot = (Get-Location).Path; New-Item -ItemType Directory -Path "$repoRoot\docs\history" -Force | Out-Null; Copy-Item $_.FullName "$repoRoot\docs\index.html" -Force; New-Item -ItemType File -Path "$repoRoot\docs\.nojekyll" -Force | Out-Null; Copy-Item $_.FullName "$repoRoot\docs\history\executive_dashboard_$(Get-Date -Format "yyyyMMdd_HHmmss").html" -Force; Write-Host "[Kydras] GitHub Pages dashboard + history updated for $repoRoot" }
Get-ChildItem "$env:USERPROFILE\kydras-governance" -Filter "executive_dashboard_*.html" | Sort-Object LastWriteTime -Descending | Select-Object -First 1 | ForEach-Object { $repoRoot = (Get-Location).Path; New-Item -ItemType Directory -Path "$repoRoot\docs\history" -Force | Out-Null; Copy-Item $_.FullName "$repoRoot\docs\index.html" -Force; New-Item -ItemType File -Path "$repoRoot\docs\.nojekyll" -Force | Out-Null; Copy-Item $_.FullName "$repoRoot\docs\history\executive_dashboard_$(Get-Date -Format "yyyyMMdd_HHmmss").html" -Force; Write-Host "[Kydras] GitHub Pages dashboard + history updated for $repoRoot" }
Get-ChildItem "$env:USERPROFILE\kydras-governance" -Filter "executive_dashboard_*.html" | Sort-Object LastWriteTime -Descending | Select-Object -First 1 | ForEach-Object { $repoRoot = (Get-Location).Path; New-Item -ItemType Directory -Path "$repoRoot\docs\history" -Force | Out-Null; Copy-Item $_.FullName "$repoRoot\docs\index.html" -Force; New-Item -ItemType File -Path "$repoRoot\docs\.nojekyll" -Force | Out-Null; Copy-Item $_.FullName "$repoRoot\docs\history\executive_dashboard_$(Get-Date -Format "yyyyMMdd_HHmmss").html" -Force; Write-Host "[Kydras] GitHub Pages dashboard + history updated for $repoRoot" }
