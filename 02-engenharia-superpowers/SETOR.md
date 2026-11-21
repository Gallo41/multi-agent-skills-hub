# Setor 02 — Engenharia de Software & Superpowers Core (`v7.0.2`)

Este setor concentra o fluxo obrigatório de engenharia disciplinada, planejamento, TDD, debugging metódico, revisão de código e execução paralela via subagentes (pacote **Superpowers** mantido no escopo global).

## Regras do Setor
- [`regras/fluxo-tdd-e-debug.md`](./regras/fluxo-tdd-e-debug.md) — Ciclo `using-superpowers` -> `brainstorming` -> TDD -> `systematic-debugging` -> `verification-before-completion`.
- [`regras/planos-e-subagentes.md`](./regras/planos-e-subagentes.md) — Planejamento (`writing-plans`, `executing-plans`), paralelismo (`dispatching-parallel-agents`, `subagent-driven-development`), revisão (`requesting-code-review`, `receiving-code-review`) e worktrees Git (`using-git-worktrees`, `finishing-a-development-branch`).

## Skills do Setor (`skills/`)

| Skill | Quando Ativar | Arquivo Principal |
| :--- | :--- | :--- |
| `using-superpowers` | Antes de responder ou agir: verifica e ativa skills aplicáveis. | [`SKILL.md`](./skills/using-superpowers/SKILL.md) |
| `brainstorming` | Antes de qualquer desenvolvimento ou refatoração grande (alinhar arquitetura/alternativas). | [`SKILL.md`](./skills/brainstorming/SKILL.md) |
| `writing-plans` | Criar planos detalhados com marcos e critérios de verificação. | [`SKILL.md`](./skills/writing-plans/SKILL.md) |
| `executing-plans` | Executar planos passo a passo mantendo rastreabilidade. | [`SKILL.md`](./skills/executing-plans/SKILL.md) |
| `subagent-driven-development` | Delegar blocos independentes de código/revisão a subagentes. | [`SKILL.md`](./skills/subagent-driven-development/SKILL.md) |
| `dispatching-parallel-agents` | Investigar ou corrigir múltiplos problemas independentes em paralelo. | [`SKILL.md`](./skills/dispatching-parallel-agents/SKILL.md) |
| `systematic-debugging` | Investigar causa-raiz de bugs com evidências antes de propor correção. | [`SKILL.md`](./skills/systematic-debugging/SKILL.md) |
| `test-driven-development` | Escrever/executar testes antes e depois da implementação (Red-Green-Refactor). | [`SKILL.md`](./skills/test-driven-development/SKILL.md) |
| `verification-before-completion` | Rodar checagens finais e comprovar funcionamento antes de concluir. | [`SKILL.md`](./skills/verification-before-completion/SKILL.md) |
| `requesting-code-review` | Solicitar revisão estruturada antes de merge ou entrega crítica. | [`SKILL.md`](./skills/requesting-code-review/SKILL.md) |
| `receiving-code-review` | Avaliar feedbacks de revisão tecnicamente antes de aplicar. | [`SKILL.md`](./skills/receiving-code-review/SKILL.md) |
| `using-git-worktrees` | Isolar tarefas em worktrees Git limpas sem sujar a branch principal. | [`SKILL.md`](./skills/using-git-worktrees/SKILL.md) |
| `finishing-a-development-branch` | Consolidar testes, limpeza e decisão de merge/PR ao fechar uma branch. | [`SKILL.md`](./skills/finishing-a-development-branch/SKILL.md) |
