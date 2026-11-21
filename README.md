<div align="center">

# ðŸŒ multi-agent-skills-hub

**Production-grade, sector-organized skills and governance architecture for AI coding agents.**  
*Native compatibility for Claude Code, Google Antigravity, OpenCode, Cursor, and Codex.*

[![License](https://img.shields.io/badge/license-MIT%2FApache--2.0-blue.svg)](#license)
[![Skills Count](https://img.shields.io/badge/skills-38%20active-success.svg)](#the-6-sectors)
[![Knowledge Graph](https://img.shields.io/badge/graph-2%2C300%2B%20nodes-purple.svg)](#how-the-knowledge-graph-works)
[![Cross-Platform](https://img.shields.io/badge/platform-Windows%20%7C%20macOS%20%7C%20Linux-lightgrey.svg)](#quick-start)

[English](#english) Â· [PortuguÃªs](#portuguÃªs)

</div>

---

<a name="english"></a>
## ðŸ’¡ The Problem

Most developers configure AI coding agents by dumping dozens of monolithic `.md` files (50 KB+ each) into the agent's root prompt. This triggers severe drawbacks:
1. **Context Bloat:** Thousands of useless tokens loaded on every turn, degrading reasoning quality.
2. **TTFT Latency Floor:** Waiting 6â€“8 seconds per turn for basic read-only tool calls.
3. **AI Slop:** Generic, uninspired web interfaces with low-contrast, clichÃ© purple gradients.
4. **Agent Amnesia:** Switching between Claude Code, Antigravity, or Cursor forces you to re-explain project rules repeatedly.

## ðŸš€ The Solution: `multi-agent-skills-hub`

`multi-agent-skills-hub` organizes **38 specialized skills** into **6 distinct engineering sectors**, indexed by a local **Knowledge Graph (Graphify)**:

- ðŸ§  **Zero Context Clutter:** Agents query the AST+semantic graph (`graphify query`) to fetch only the exact 15 lines of guidance they need.
- âš¡ **Tool-Call Acceleration:** Integrated with `agy-fast` MCP for sub-70ms batch searches and atomic multi-file edits.
- ðŸŽ¨ **Anti-Slop Design System:** Strict UI aesthetics (`antiwebslop`), paired with `pocket-design` MCP for instant SVG icons (Phosphor, Feather), Google Fonts, and OKLCH palettes.
- ðŸ”— **Single Source of Truth:** Canonical junctions/symlinks ensure Claude Code (`~/.claude/skills`), Antigravity (`~/.gemini/skills`), and OpenCode/Cursor (`~/.agents/skills`) share the exact same configuration without duplicating files.

---

## âš¡ Quick Start

### 1. Clone the repository

```bash
git clone https://github.com/Gallo41/multi-agent-skills-hub.git
cd multi-agent-skills-hub
```

### 2. Run the 1-Click Installer

**Windows (PowerShell):**
```powershell
.\install.ps1
```

**macOS / Linux (Bash):**
```bash
chmod +x install.sh && ./install.sh
```

The script automatically detects your home directory and creates symbolic links/NTFS junctions for:
- `~/.claude/skills` *(Claude Code)*
- `~/.gemini/skills` & `~/.gemini/config/skills` *(Google Antigravity / Gemini CLI)*
- `~/.agents/skills` *(OpenCode, Cursor, Codex)*

---

## ðŸ“‚ The 6 Sectors

| Sector | Focus | Key Skills & Tools |
| :--- | :--- | :--- |
| **01. Governance** | Sprint checkpoints, Git auto-sync, Multi-AI protocol | Sprints 10%, Git post-commit auto-sync, Multi-agent onboarding |
| **02. Engineering & Superpowers** | Core developer workflows & rigor | `test-driven-development`, `systematic-debugging`, `writing-plans`, `executing-plans`, `subagent-driven-development`, `dispatching-parallel-agents`, `using-git-worktrees` |
| **03. Frontend, UI & Design** | Authentic web UI & design assets | `frontend-design`, `antiwebslop`, `pocket-design` (MCP), `design-taste-frontend` (modular), `theme-factory`, `canvas-design`, `algorithmic-art`, `web-artifacts-builder` |
| **04. React, Next.js & Mobile** | High-performance fullstack patterns | `vercel-react-best-practices`, `vercel-composition-patterns`, `vercel-react-view-transitions`, `vercel-react-native-skills` |
| **05. Security, Cloud & Deploy** | Infrastructure & cloud safety | `security-audit`, `vercel-optimize`, `deploy-to-vercel`, `vercel-cli-with-tokens` |
| **06. Automation, AI & Knowledge** | Knowledge graph, scrapers & latency | `graphify`, `agy-fast` (MCP), `agent-browser`, `google-maps-scraper`, `skill-creator`, `writing-skills`, `diagnosing-superpowers` |

---

## ðŸ§  How the Knowledge Graph Works

Instead of reading full `.md` files blindly, your agent queries the built-in graph:

```powershell
graphify query "how to handle antiwebslop and visual design"
```

The graph returns a scoped subgraph containing exact symbol definitions, cross-file relationships, and line numbers in less than 50ms, saving up to 90% in token overhead.

Explore the visual graph interactively: open [`graphify-out/graph.html`](graphify-out/graph.html) in any browser!

---

<a name="portuguÃªs"></a>
## ðŸ‡§ðŸ‡· PortuguÃªs

O **multi-agent-skills-hub** Ã© um ecossistema modular de **38 skills de desenvolvimento** organizadas em **6 setores de engenharia**.

### Vantagens:
1. **Sem inchaÃ§o de contexto:** O agente nÃ£o carrega arquivos gigantes. Ele consulta o Grafo de Conhecimento (`graphify query`) e puxa apenas a instruÃ§Ã£o necessÃ¡ria.
2. **Multi-IA Nativo:** Funciona simultaneamente no Claude Code, Antigravity, OpenCode e Cursor atravÃ©s de espelhos de links simbÃ³licos.
3. **Design Anti-Slop:** Combina regras estÃ©ticas rigorosas com o servidor MCP `pocket-design` (Ã­cones SVG reais, fontes do Google/Fontshare e paletas OKLCH).
4. **InstalaÃ§Ã£o em 1 Clique:** Rode `.\install.ps1` no Windows ou `./install.sh` no Mac/Linux para linkar todas as 38 skills imediatamente.

---

## ðŸ“„ License

Code and skills are distributed under the [MIT License](LICENSE) and [Apache-2.0](LICENSE) for relevant submodules.