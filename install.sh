#!/usr/bin/env bash
# multi-agent-skills-hub One-Click Installer for macOS and Linux
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
USER_HOME="$HOME"

echo "=========================================================="
echo " [multi-agent-skills-hub] Initializing Multi-Agent Skills"
echo " Source: $REPO_ROOT"
echo " Target Home: $USER_HOME"
echo "=========================================================="

MIRRORS=(
    "$USER_HOME/.claude/skills"
    "$USER_HOME/.gemini/skills"
    "$USER_HOME/.gemini/config/skills"
    "$USER_HOME/.agents/skills"
)

for mirror in "${MIRRORS[@]}"; do
    mkdir -p "$mirror"
done

total_skills=0
for sector in "$REPO_ROOT"/[0-9][0-9]-*; do
    if [ -d "$sector/skills" ]; then
        for skill in "$sector/skills"/*; do
            if [ -d "$skill" ]; then
                skill_name="$(basename "$skill")"
                total_skills=$((total_skills + 1))
                for mirror in "${MIRRORS[@]}"; do
                    ln -sfn "$skill" "$mirror/$skill_name"
                done
                echo "  -> [Linked] $skill_name ($(basename "$sector"))"
            fi
        done
    fi
done

CLAUDE_ROUTER="$USER_HOME/.claude/CLAUDE.md"
GEMINI_ROUTER="$USER_HOME/.gemini/GEMINI.md"

ROUTER_CONTENT="# Global Multi-Agent Router & Knowledge Graph

> **Config Knowledge Graph**: Skills and governance are organized into 6 sectors in \`$REPO_ROOT\` with local graph in \`$REPO_ROOT/graphify-out/\`.
> To query any rule or skill without loading raw files:
> \`\`\`bash
> cd \"$REPO_ROOT\" && graphify query \"<topic>\" && cd -
> \`\`\`

## Active Sectors
- **01. Governance**: Sprints 10%, Git Auto-Sync, Multi-AI Protocol.
- **02. Engineering & Superpowers**: 13 workflow skills (TDD, debugging, execution plans, parallel subagents, code review, worktrees).
- **03. Frontend, UI & Design**: 10 skills (frontend-design, antiwebslop, pocket-design MCP, design-taste, theme-factory, canvas-design).
- **04. React, Next.js & Mobile**: 4 Vercel skills (react-best-practices, composition-patterns, view-transitions, react-native).
- **05. Security, Cloud & Deploy**: 4 skills (security-audit, vercel-optimize, deploy-to-vercel, vercel-cli-with-tokens).
- **06. Automation, AI & Knowledge**: 7 skills (graphify, agy-fast MCP, agent-browser, google-maps-scraper, skill-creator, writing-skills).
"

if [ ! -f "$CLAUDE_ROUTER" ]; then
    printf "%s" "$ROUTER_CONTENT" > "$CLAUDE_ROUTER"
    echo "[+] Configured Claude Code global router: $CLAUDE_ROUTER"
fi
if [ ! -f "$GEMINI_ROUTER" ]; then
    printf "%s" "$ROUTER_CONTENT" > "$GEMINI_ROUTER"
    echo "[+] Configured Gemini / Antigravity global router: $GEMINI_ROUTER"
fi

echo "=========================================================="
echo " [SUCCESS] $total_skills skills linked across all mirrors!"
echo " Compatible with Claude Code, Antigravity, Cursor, OpenCode"
echo "=========================================================="