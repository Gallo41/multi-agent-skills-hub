# Criação, Validação e Manutenção de Skills (Compatibilidade Windows)

## 1. Regras de Criação (`skill-creator` + `writing-skills`)
- Toda nova skill global deve ser criada fisicamente no seu setor em `C:\Users\Gallo\.gemini\setores\<setor>\skills\<nome-skill>\` e linkada via Junction em `~/.agents/skills/`, `~/.gemini/skills/`, `~/.gemini/config/skills/` e `~/.claude/skills/`.
- Mantenha o `SKILL.md` conciso (disclosure progressivo); coloque documentações extensas em `references/` divididas por tema (< 25 KB cada arquivo).

## 2. Compatibilidade no Windows (`skill-creator` e `npx skills`)
- No `skill-creator`, os scripts `quick_validate.py`, `package_skill.py`, `generate_report.py`, `aggregate_benchmark.py` e `eval-viewer/generate_review.py` rodam nativamente em Python + `pyyaml`:
  ```powershell
  python C:\Users\Gallo\.gemini\setores\06-automacao-ia-conhecimento\skills\skill-creator\scripts\quick_validate.py <caminho-da-skill>
  ```
- Os scripts `run_eval.py` e `run_loop.py` exigem o CLI `claude -p` e `select` POSIX em pipes (não suportado nativamente no Windows).
- Para gerenciar `skills-lock.json` via PowerShell, use `cmd /c "npx --yes skills ..."` e grave JSONs sempre em **UTF-8 sem BOM**.
