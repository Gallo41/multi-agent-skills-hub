<div align="center">

# ÃƒÂ°Ã…Â¸Ã…â€™Ã‚Â multi-agent-skills-hub

**Production-grade, sector-organized skills and governance architecture for AI coding agents.**  
*Native compatibility for Claude Code, Google Antigravity, OpenCode, Cursor, and Codex.*

[![License](https://img.shields.io/badge/license-MIT%2FApache--2.0-blue.svg)](#license)
[![Skills Count](https://img.shields.io/badge/skills-40%20active-success.svg)](#the-6-sectors)
[![Knowledge Graph](https://img.shields.io/badge/graph-2%2C300%2B%20nodes-purple.svg)](#how-the-knowledge-graph-works)
[![Cross-Platform](https://img.shields.io/badge/platform-Windows%20%7C%20macOS%20%7C%20Linux-lightgrey.svg)](#quick-start)

[English](#english) Ãƒâ€šÃ‚Â· [PortuguÃƒÆ’Ã‚Âªs](#portuguÃƒÆ’Ã‚Âªs)

</div>

---

<a name="english"></a>
## ÃƒÂ°Ã…Â¸Ã¢â‚¬â„¢Ã‚Â¡ The Problem

Most developers configure AI coding agents by dumping dozens of monolithic `.md` files (50 KB+ each) into the agent's root prompt. This triggers severe drawbacks:
1. **Context Bloat:** Thousands of useless tokens loaded on every turn, degrading reasoning quality.
2. **TTFT Latency Floor:** Waiting 6ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“8 seconds per turn for basic read-only tool calls.
3. **AI Slop:** Generic, uninspired web interfaces with low-contrast, clichÃƒÆ’Ã‚Â© purple gradients.
4. **Agent Amnesia:** Switching between Claude Code, Antigravity, or Cursor forces you to re-explain project rules repeatedly.

## ÃƒÂ°Ã…Â¸Ã…Â¡Ã¢â€šÂ¬ The Solution: `multi-agent-skills-hub`

`multi-agent-skills-hub` organizes **40 specialized skills** into **6 distinct engineering sectors**, indexed by a local **Knowledge Graph (Graphify)**:

- ÃƒÂ°Ã…Â¸Ã‚Â§Ã‚Â  **Zero Context Clutter:** Agents query the AST+semantic graph (`graphify query`) to fetch only the exact 15 lines of guidance they need.
- ÃƒÂ¢Ã…Â¡Ã‚Â¡ **Tool-Call Acceleration:** Integrated with `agy-fast` MCP for sub-70ms batch searches and atomic multi-file edits.
- ÃƒÂ°Ã…Â¸Ã…Â½Ã‚Â¨ **Anti-Slop Design System:** Strict UI aesthetics (`antiwebslop`), paired with `pocket-design` MCP for instant SVG icons (Phosphor, Feather), Google Fonts, and OKLCH palettes.
- ÃƒÂ°Ã…Â¸Ã¢â‚¬ÂÃ¢â‚¬â€ **Single Source of Truth:** Canonical junctions/symlinks ensure Claude Code (`~/.claude/skills`), Antigravity (`~/.gemini/skills`), and OpenCode/Cursor (`~/.agents/skills`) share the exact same configuration without duplicating files.

---

## ÃƒÂ¢Ã…Â¡Ã‚Â¡ Quick Start

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

## ÃƒÂ°Ã…Â¸Ã¢â‚¬Å“Ã¢â‚¬Å¡ The 6 Sectors

| Sector | Focus | Key Skills & Tools |
| :--- | :--- | :--- |
| **01. Governance** | Sprint checkpoints, Git auto-sync, Multi-AI protocol | 
iche-discovery (descoberta com CONTEXT.md), Sprints 10%, Git auto-sync, Multi-agent onboarding |
| **02. Engineering & Superpowers** | Core developer workflows & rigor | `test-driven-development`, `systematic-debugging`, `writing-plans`, `executing-plans`, `subagent-driven-development`, `dispatching-parallel-agents`, `using-git-worktrees` |
| **03. Frontend, UI & Design** | Authentic web UI & design assets | `frontend-design`, `gemini-frontend-design`, `antiwebslop`, `pocket-design` (MCP), `design-taste-frontend` (modular), `theme-factory`, `canvas-design`, `algorithmic-art`, `web-artifacts-builder` |
| **04. React, Next.js & Mobile** | High-performance fullstack patterns | `vercel-react-best-practices`, `vercel-composition-patterns`, `vercel-react-view-transitions`, `vercel-react-native-skills` |
| **05. Security, Cloud & Deploy** | Infrastructure & cloud safety | `security-audit`, `vercel-optimize`, `deploy-to-vercel`, `vercel-cli-with-tokens` |
| **06. Automation, AI & Knowledge** | Knowledge graph, scrapers & latency | `graphify`, `agy-fast` (MCP), `agent-browser`, `google-maps-scraper`, `skill-creator`, `writing-skills`, `diagnosing-superpowers` |

---

## ÃƒÂ°Ã…Â¸Ã‚Â§Ã‚Â  How the Knowledge Graph Works

Instead of reading full `.md` files blindly, your agent queries the built-in graph:

```powershell
graphify query "how to handle antiwebslop and visual design"
```

The graph returns a scoped subgraph containing exact symbol definitions, cross-file relationships, and line numbers in less than 50ms, saving up to 90% in token overhead.

Explore the visual graph interactively: open [`graphify-out/graph.html`](graphify-out/graph.html) in any browser!

---

<a name="portuguÃƒÆ’Ã‚Âªs"></a>
## ÃƒÂ°Ã…Â¸Ã¢â‚¬Â¡Ã‚Â§ÃƒÂ°Ã…Â¸Ã¢â‚¬Â¡Ã‚Â· PortuguÃƒÆ’Ã‚Âªs

O **multi-agent-skills-hub** ÃƒÆ’Ã‚Â© um ecossistema modular de **40 skills de desenvolvimento** organizadas em **6 setores de engenharia**.

### Vantagens:
1. **Sem inchaÃƒÆ’Ã‚Â§o de contexto:** O agente nÃƒÆ’Ã‚Â£o carrega arquivos gigantes. Ele consulta o Grafo de Conhecimento (`graphify query`) e puxa apenas a instruÃƒÆ’Ã‚Â§ÃƒÆ’Ã‚Â£o necessÃƒÆ’Ã‚Â¡ria.
2. **Multi-IA Nativo:** Funciona simultaneamente no Claude Code, Antigravity, OpenCode e Cursor atravÃƒÆ’Ã‚Â©s de espelhos de links simbÃƒÆ’Ã‚Â³licos.
3. **Design Anti-Slop:** Combina regras estÃƒÆ’Ã‚Â©ticas rigorosas com o servidor MCP `pocket-design` (ÃƒÆ’Ã‚Â­cones SVG reais, fontes do Google/Fontshare e paletas OKLCH).
4. **InstalaÃƒÆ’Ã‚Â§ÃƒÆ’Ã‚Â£o em 1 Clique:** Rode `.\install.ps1` no Windows ou `./install.sh` no Mac/Linux para linkar todas as 40 skills imediatamente.

---

## ÃƒÂ°Ã…Â¸Ã¢â‚¬Å“Ã¢â‚¬Å¾ License

Code and skills are distributed under the [MIT License](LICENSE) and [Apache-2.0](LICENSE) for relevant submodules.