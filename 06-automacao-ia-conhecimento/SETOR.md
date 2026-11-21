# Setor 06 — Automação, Navegador, IA & Gestão de Conhecimento

Este setor concentra o **Graphify** (grafo de conhecimento de código e das próprias configurações), aceleradores de chamadas de IA (**agy-fast**), automação de navegador, extração de dados e criação/diagnóstico de skills.

## Regras do Setor
- [`regras/protocolo-graphify-global-e-projetos.md`](./regras/protocolo-graphify-global-e-projetos.md) — Como usar o **Grafo Global de Configurações** (`~/.gemini/setores/graphify-out/`) e os grafos locais de cada projeto.
- [`regras/criacao-e-diagnostico-skills.md`](./regras/criacao-e-diagnostico-skills.md) — Regras de criação, validação (`quick_validate.py` no Windows) e manutenção de skills e `skills-lock.json`.

## Skills do Setor (`skills/`)

| Skill | Especialidade | Arquivo Principal |
| :--- | :--- | :--- |
| `graphify` | Construção e consulta de grafos de conhecimento (`query`, `path`, `explain`, `update`, `wiki`). | [`SKILL.md`](./skills/graphify/SKILL.md) |
| `agy-fast` | Plugin acelerador de latência e MCP: buscas concorrentes (`batch_search`), edições multi-hunk atômicas com verify (`apply_edits`), outlines (`read_slices`) e checagens paralelas (`run_checks`). | [`SKILL.md`](./skills/agy-fast/SKILL.md) |
| `agent-browser` | Automação headless/interativa de navegador via CLI/MCP (`agent-browser`), snapshots e testes E2E. | [`SKILL.md`](./skills/agent-browser/SKILL.md) |
| `google-maps-scraper` | Prospecção e extração estruturada de leads locais do Google Maps (Python/Playwright). | [`SKILL.md`](./skills/google-maps-scraper/SKILL.md) |
| `skill-creator` | Criação, validação (`quick_validate.py`), empacotamento e avaliação de skills. | [`SKILL.md`](./skills/skill-creator/SKILL.md) |
| `writing-skills` | Disciplina TDD e boas práticas para redação de `SKILL.md` descobertos por agentes. | [`SKILL.md`](./skills/writing-skills/SKILL.md) |
| `diagnosing-superpowers` | Análise forense de sessões/transcrições para diagnosticar aderência e falhas de skills. | [`SKILL.md`](./skills/diagnosing-superpowers/SKILL.md) |