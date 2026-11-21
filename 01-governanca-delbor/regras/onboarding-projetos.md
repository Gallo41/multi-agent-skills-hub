# Onboarding e Padronização de Projetos Delbor

Ao iniciar um projeto novo ou atuar em um projeto existente que ainda não possua o padrão Delbor, inicialize a estrutura imediatamente.

## 1. Script Automático de Onboarding
Execute o padronizador global localizado em `~/.gemini/scripts/`:
```powershell
powershell -ExecutionPolicy Bypass -File "C:\Users\Gallo\.gemini\scripts\setup-delbor-project.ps1" -ProjectPath "<caminho-do-projeto>"
```
O template de origem fica em `C:\Users\Gallo\Documents\Projeto Padrão\`.

## 2. Checklist Obrigatório de Estrutura no Projeto
- `.agents/rules/`: `git-auto-commit.md`, `graphify.md`, `sprint-checkpoint.md`, `skills-delbor.md`.
- `.agents/skills/` + `skills-lock.json` (skills visuais e utilitárias de projeto, sem `file-search`).
- `.githooks/post-commit` com `git config core.hooksPath .githooks`.
- `scripts/git-auto-sync.ps1` e `scripts/git-auto-sync.bat`.
- `AGENTS.md`, `INSTRUCTIONS.md` e `.gitignore` padrão Delbor.
- `Sprint atual.md` na raiz do projeto.
- Registro e espelhamento em `C:\Projetos Soft\Operador\Projetos\<NovoProjeto>\` (`<NovoProjeto>.md` e `Sprint atual.md`).
- Grafo de conhecimento `graphify-out/` gerado via `/graphify .` ou `graphify .`.
