# Ecossistema Multi-IA & Sincronismo (Antigravity, Claudinho, OpenCode, Codex, Obsidian)

O ambiente Delbor opera com múltiplos agentes compartilhando contexto, regras, skills e memória persistente.

## 1. Pontos de Conexão e Caminhos Compartilhados
- **Gateway Local**: OmniRoute em `http://localhost:20128/v1`.
- **Central de Projetos (Fonte de Verdade do Claudinho e IAs)**: `C:\Projetos Soft\Operador\Projetos\`.
- **Memória Persistente por Projeto (Graphify + Obsidian)**: `<projeto>/graphify-out/wiki/index.md` e pastas `ObsidianGraph/` na Central do Operador.

## 2. Distribuição Unificada de Configurações e Skills
- **Fonte canônica setorial**: `C:\Users\Gallo\.gemini\setores\` (organizada em 6 setores, registrada no Antigravity via `C:\Users\Gallo\.gemini\config\skills.json`).
- **Espelhos via NTFS Junctions** (para descoberta automática em todas as ferramentas sem duplicar arquivos no disco):
  - `C:\Users\Gallo\.agents\skills\` (CLI `npx skills`, OpenCode, Codex e `.skill-lock.json`)
  - `C:\Users\Gallo\.gemini\skills\` (Antigravity / Gemini)
  - `C:\Users\Gallo\.gemini\config\skills\` (compatibilidade legada / Gemini CLI)
  - `C:\Users\Gallo\.claude\skills\` (Claudinho / Claude Code)
- **Regra de Manutenção**: ao adicionar, remover ou atualizar uma skill, mantenha os arquivos físicos dentro do setor correspondente em `~/.gemini/setores/<setor>/skills/` e atualize o grafo global (`graphify update .` em `~/.gemini/setores`).
