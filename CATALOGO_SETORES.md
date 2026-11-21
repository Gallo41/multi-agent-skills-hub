# Catálogo Mestre por Setor — Configurações e Skills (`~/.gemini/setores/`)

> **Busca rápida via Grafo de Configurações**: Antes de abrir múltiplos `.md`, execute em `C:\Users\Gallo\.gemini\setores`:
> `graphify query "<termo>"` ou consulte [`setores/graphify-out/wiki/index.md`](./setores/graphify-out/wiki/index.md).

## Setor 01 — Governança Delbor (`setores/01-governanca-delbor/`)
- **Visão Geral**: [`SETOR.md`](./setores/01-governanca-delbor/SETOR.md)
- **Regras**:
  - [`regras/sprint-10-porcento.md`](./setores/01-governanca-delbor/regras/sprint-10-porcento.md) — Marcos 10% a 100%, `Sprint atual.md`, `task.md`, Central do Operador.
  - [`regras/git-auto-sync.md`](./setores/01-governanca-delbor/regras/git-auto-sync.md) — Hook `.githooks/post-commit`, `git-auto-sync.ps1`, arquivos proibidos.
  - [`regras/onboarding-projetos.md`](./setores/01-governanca-delbor/regras/onboarding-projetos.md) — Script `setup-delbor-project.ps1` e template `Projeto Padrão`.
  - [`regras/ecossistema-multi-ia.md`](./setores/01-governanca-delbor/regras/ecossistema-multi-ia.md) — Antigravity, Claudinho, OpenCode, Codex, OmniRoute e junctions.

## Setor 02 — Engenharia & Superpowers Core (`setores/02-engenharia-superpowers/`)
- **Visão Geral**: [`SETOR.md`](./setores/02-engenharia-superpowers/SETOR.md)
- **Regras**:
  - [`regras/fluxo-tdd-e-debug.md`](./setores/02-engenharia-superpowers/regras/fluxo-tdd-e-debug.md)
  - [`regras/planos-e-subagentes.md`](./setores/02-engenharia-superpowers/regras/planos-e-subagentes.md)
- **Skills (13)**:
  1. [`using-superpowers`](./setores/02-engenharia-superpowers/skills/using-superpowers/SKILL.md) — Descoberta inicial de skills.
  2. [`brainstorming`](./setores/02-engenharia-superpowers/skills/brainstorming/SKILL.md) — Arquitetura e alternativas antes de codar.
  3. [`writing-plans`](./setores/02-engenharia-superpowers/skills/writing-plans/SKILL.md) — Criação de planos de execução.
  4. [`executing-plans`](./setores/02-engenharia-superpowers/skills/executing-plans/SKILL.md) — Execução controlada de planos.
  5. [`subagent-driven-development`](./setores/02-engenharia-superpowers/skills/subagent-driven-development/SKILL.md) — Implementação com subagentes e revisão.
  6. [`dispatching-parallel-agents`](./setores/02-engenharia-superpowers/skills/dispatching-parallel-agents/SKILL.md) — Tarefas paralelas independentes.
  7. [`systematic-debugging`](./setores/02-engenharia-superpowers/skills/systematic-debugging/SKILL.md) — Investigação de causa-raiz.
  8. [`test-driven-development`](./setores/02-engenharia-superpowers/skills/test-driven-development/SKILL.md) — Ciclo TDD Red-Green-Refactor.
  9. [`verification-before-completion`](./setores/02-engenharia-superpowers/skills/verification-before-completion/SKILL.md) — Evidência de testes antes de finalizar.
  10. [`requesting-code-review`](./setores/02-engenharia-superpowers/skills/requesting-code-review/SKILL.md) — Solicitar revisão de código.
  11. [`receiving-code-review`](./setores/02-engenharia-superpowers/skills/receiving-code-review/SKILL.md) — Tratar feedback de revisão.
  12. [`using-git-worktrees`](./setores/02-engenharia-superpowers/skills/using-git-worktrees/SKILL.md) — Branches isoladas em worktrees.
  13. [`finishing-a-development-branch`](./setores/02-engenharia-superpowers/skills/finishing-a-development-branch/SKILL.md) — Fechamento/merge de branch.

## Setor 03 — Frontend, UI & Design (`setores/03-frontend-ui-design/`)
- **Visão Geral**: [`SETOR.md`](./setores/03-frontend-ui-design/SETOR.md)
- **Regras**:
  - [`regras/matriz-decisao-visual.md`](./setores/03-frontend-ui-design/regras/matriz-decisao-visual.md)
  - [`regras/compatibilidade-windows-ui.md`](./setores/03-frontend-ui-design/regras/compatibilidade-windows-ui.md)
- **Skills (10)**:
  1. [`frontend-design`](./setores/03-frontend-ui-design/skills/frontend-design/SKILL.md) — Interfaces web autênticas.
  2. [`pocket-design`](./setores/03-frontend-ui-design/skills/pocket-design/SKILL.md) — Servidor MCP & skill: ícones SVG, fontes, componentes shadcn/React Bits, easings, paletas OKLCH e contraste WCAG/APCA.
  3. [`design-taste-frontend`](./setores/03-frontend-ui-design/skills/design-taste-frontend/SKILL.md) — Direção de arte web e app screens (modularizada em `references/app-screens/`, `motion/`, `imagery/`).
  4. [`antiwebslop`](./setores/03-frontend-ui-design/skills/antiwebslop/SKILL.md) — Padrões anti-slop e lint visual.
  5. [`theme-factory`](./setores/03-frontend-ui-design/skills/theme-factory/SKILL.md) — 10 temas prontos + criação de paletas.
  6. [`canvas-design`](./setores/03-frontend-ui-design/skills/canvas-design/SKILL.md) — Peças visuais estáticas (`.png`/`.pdf`).
  7. [`algorithmic-art`](./setores/03-frontend-ui-design/skills/algorithmic-art/SKILL.md) — Arte generativa p5.js.
  8. [`web-artifacts-builder`](./setores/03-frontend-ui-design/skills/web-artifacts-builder/SKILL.md) — Apps React + shadcn/ui multi-tela (via Git Bash + `pnpm`).
  9. [`web-design-guidelines`](./setores/03-frontend-ui-design/skills/web-design-guidelines/SKILL.md) — Diretrizes Web Interface Vercel.
  10. [`writing-guidelines`](./setores/03-frontend-ui-design/skills/writing-guidelines/SKILL.md) — Microcopy e escrita de UI.

## Setor 04 — React, Next.js & Mobile (`setores/04-react-nextjs-mobile/`)
- **Visão Geral**: [`SETOR.md`](./setores/04-react-nextjs-mobile/SETOR.md)
- **Regras**: [`regras/guia-performance-react-nextjs.md`](./setores/04-react-nextjs-mobile/regras/guia-performance-react-nextjs.md)
- **Skills (4)**:
  1. [`vercel-react-best-practices`](./setores/04-react-nextjs-mobile/skills/vercel-react-best-practices/SKILL.md) ([`INDEX_REGRAS.md`](./setores/04-react-nextjs-mobile/skills/vercel-react-best-practices/INDEX_REGRAS.md))
  2. [`vercel-composition-patterns`](./setores/04-react-nextjs-mobile/skills/vercel-composition-patterns/SKILL.md) ([`INDEX_REGRAS.md`](./setores/04-react-nextjs-mobile/skills/vercel-composition-patterns/INDEX_REGRAS.md))
  3. [`vercel-react-view-transitions`](./setores/04-react-nextjs-mobile/skills/vercel-react-view-transitions/SKILL.md) ([`INDEX_REGRAS.md`](./setores/04-react-nextjs-mobile/skills/vercel-react-view-transitions/INDEX_REGRAS.md))
  4. [`vercel-react-native-skills`](./setores/04-react-nextjs-mobile/skills/vercel-react-native-skills/SKILL.md) ([`INDEX_REGRAS.md`](./setores/04-react-nextjs-mobile/skills/vercel-react-native-skills/INDEX_REGRAS.md))

## Setor 05 — Segurança, Cloud & Deploy (`setores/05-seguranca-cloud-deploy/`)
- **Visão Geral**: [`SETOR.md`](./setores/05-seguranca-cloud-deploy/SETOR.md)
- **Regras**: [`regras/protocolo-auditoria-e-deploy.md`](./setores/05-seguranca-cloud-deploy/regras/protocolo-auditoria-e-deploy.md)
- **Skills (4)**:
  1. [`security-audit`](./setores/05-seguranca-cloud-deploy/skills/security-audit/SKILL.md) — Auditoria de segurança multi-domínio.
  2. [`vercel-optimize`](./setores/05-seguranca-cloud-deploy/skills/vercel-optimize/SKILL.md) ([`INDEX_REGRAS.md`](./setores/05-seguranca-cloud-deploy/skills/vercel-optimize/INDEX_REGRAS.md)) — Redução de custos/latência Vercel.
  3. [`deploy-to-vercel`](./setores/05-seguranca-cloud-deploy/skills/deploy-to-vercel/SKILL.md) — Deploy direto e previews.
  4. [`vercel-cli-with-tokens`](./setores/05-seguranca-cloud-deploy/skills/vercel-cli-with-tokens/SKILL.md) — Automação CI/CD com `VERCEL_TOKEN`.

## Setor 06 — Automação, IA & Conhecimento (`setores/06-automacao-ia-conhecimento/`)
- **Visão Geral**: [`SETOR.md`](./setores/06-automacao-ia-conhecimento/SETOR.md)
- **Regras**:
  - [`regras/protocolo-graphify-global-e-projetos.md`](./setores/06-automacao-ia-conhecimento/regras/protocolo-graphify-global-e-projetos.md)
  - [`regras/criacao-e-diagnostico-skills.md`](./setores/06-automacao-ia-conhecimento/regras/criacao-e-diagnostico-skills.md)
- **Skills (7)**:
  1. [`graphify`](./setores/06-automacao-ia-conhecimento/skills/graphify/SKILL.md) — Grafos de conhecimento e busca econômica.
  2. [`agy-fast`](./setores/06-automacao-ia-conhecimento/skills/agy-fast/SKILL.md) — Acelerador de latência, buscas concorrentes e edições atômicas via MCP (`ServerName: "fast"`).
  3. [`agent-browser`](./setores/06-automacao-ia-conhecimento/skills/agent-browser/SKILL.md) — Automação de navegador CLI/MCP.
  4. [`google-maps-scraper`](./setores/06-automacao-ia-conhecimento/skills/google-maps-scraper/SKILL.md) — Extração de leads Google Maps.
  5. [`skill-creator`](./setores/06-automacao-ia-conhecimento/skills/skill-creator/SKILL.md) — Criação/validação de skills.
  6. [`writing-skills`](./setores/06-automacao-ia-conhecimento/skills/writing-skills/SKILL.md) — Redação e teste de skills.
  7. [`diagnosing-superpowers`](./setores/06-automacao-ia-conhecimento/skills/diagnosing-superpowers/SKILL.md) — Diagnóstico de sessões e aderência.