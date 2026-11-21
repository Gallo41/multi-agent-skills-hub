<#
.SYNOPSIS
  multi-agent-skills-hub One-Click Installer for Windows
.DESCRIPTION
  Links all 38 skills across 6 sectors into Claude Code, Antigravity, OpenCode, and Cursor
  using canonical NTFS Junctions (no admin rights required).
#>

param(
    [switch]$Force
)

$ErrorActionPreference = "Stop"
$repoRoot = (Resolve-Path $PSScriptRoot).Path
$userHome = $env:USERPROFILE

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " [multi-agent-skills-hub] Initializing Multi-Agent Skills" -ForegroundColor Cyan
Write-Host " Source: $repoRoot" -ForegroundColor Cyan
Write-Host " Target User: $userHome" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

# Define mirror directories for different AI agents
$mirrors = @(
    (Join-Path $userHome ".claude\skills"),
    (Join-Path $userHome ".gemini\skills"),
    (Join-Path $userHome ".gemini\config\skills"),
    (Join-Path $userHome ".agents\skills")
)

foreach ($mirror in $mirrors) {
    if (-not (Test-Path $mirror)) {
        New-Item -ItemType Directory -Path $mirror -Force | Out-Null
        Write-Host "[+] Created directory: $mirror" -ForegroundColor Green
    }
}

# Find all physical skills across sectors
$sectorDirs = Get-ChildItem -Path $repoRoot -Directory | Where-Object { $_.Name -match "^\d{2}-" }
$totalSkills = 0

foreach ($sector in $sectorDirs) {
    $skillsSubdir = Join-Path $sector.FullName "skills"
    if (Test-Path $skillsSubdir) {
        $skills = Get-ChildItem -Path $skillsSubdir -Directory
        foreach ($skill in $skills) {
            $totalSkills++
            $skillName = $skill.Name
            $targetPath = $skill.FullName

            foreach ($mirror in $mirrors) {
                $linkPath = Join-Path $mirror $skillName
                if (Test-Path $linkPath) {
                    if ($Force) {
                        cmd /c "rmdir `"$linkPath`"" 2>$null
                        cmd /c "mklink /J `"$linkPath`" `"$targetPath`"" | Out-Null
                    }
                } else {
                    cmd /c "mklink /J `"$linkPath`" `"$targetPath`"" | Out-Null
                }
            }
            Write-Host "  -> [Linked] $skillName ($($sector.Name))" -ForegroundColor Gray
        }
    }
}

# Global Router Template Setup for Claude Code & Gemini CLI
$claudeRouter = Join-Path $userHome ".claude\CLAUDE.md"
$geminiRouter = Join-Path $userHome ".gemini\GEMINI.md"

$routerTemplate = @"
# Global Multi-Agent Router & Knowledge Graph

> **Config Knowledge Graph**: Skills and governance are organized into 6 sectors in `$repoRoot` with local graph in `$repoRoot\graphify-out\`.
> To query any rule or skill without loading raw files:
> ```powershell
> Push-Location "$repoRoot"; graphify query "<topic>"; Pop-Location
> ```
> Or browse the master map at `$repoRoot\CATALOGO_SETORES.md`.

## Active Sectors
- **01. Governance**: Sprints 10%, Git Auto-Sync, Multi-AI Protocol.
- **02. Engineering & Superpowers**: 13 workflow skills (TDD, debugging, execution plans, parallel subagents, code review, worktrees).
- **03. Frontend, UI & Design**: 10 skills (frontend-design, antiwebslop, pocket-design MCP, design-taste, theme-factory, canvas-design).
- **04. React, Next.js & Mobile**: 4 Vercel skills (react-best-practices, composition-patterns, view-transitions, react-native).
- **05. Security, Cloud & Deploy**: 4 skills (security-audit, vercel-optimize, deploy-to-vercel, vercel-cli-with-tokens).
- **06. Automation, AI & Knowledge**: 7 skills (graphify, agy-fast MCP, agent-browser, google-maps-scraper, skill-creator, writing-skills).
"@

$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
if (-not (Test-Path $claudeRouter) -or $Force) {
    [System.IO.File]::WriteAllText($claudeRouter, $routerTemplate, $utf8NoBom)
    Write-Host "[+] Configured Claude Code global router: $claudeRouter" -ForegroundColor Green
}
if (-not (Test-Path $geminiRouter) -or $Force) {
    [System.IO.File]::WriteAllText($geminiRouter, $routerTemplate, $utf8NoBom)
    Write-Host "[+] Configured Gemini / Antigravity global router: $geminiRouter" -ForegroundColor Green
}

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " [SUCCESS] $totalSkills skills successfully linked to all mirrors!" -ForegroundColor Green
Write-Host " Compatible with: Claude Code, Antigravity, Cursor, OpenCode" -ForegroundColor Yellow
Write-Host "==========================================================" -ForegroundColor Cyan