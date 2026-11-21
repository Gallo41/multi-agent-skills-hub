# Planejamento, Subagentes, Code Review e Git Worktrees

## 1. Planejamento e Execução
- **`writing-plans`**: Estruturar tarefas complexas em passos claros e verificáveis (sincronizados aos 10 marcos de `Sprint atual.md` do Setor 01).
- **`executing-plans`**: Seguir o plano em blocos, validando cada marco antes de avançar.

## 2. Paralelismo e Subagentes
- **`dispatching-parallel-agents`**: Usar quando houver 2+ falhas ou investigações independentes que podem rodar simultaneamente sem estado compartilhado.
- **`subagent-driven-development`**: Usar quando um plano aprovado tiver tarefas modulares implementáveis por subagentes dedicados + revisão.

## 3. Code Review e Isolamento Git
- **`requesting-code-review`** e **`receiving-code-review`**: Revisar diffs com foco técnico objetivo, sem aceitar sugestões sem validação.
- **`using-git-worktrees`** e **`finishing-a-development-branch`**: Isolar implementações paralelas e finalizar branches apenas após bateria completa de testes + sincronização via Setor 01 (`git-auto-sync.md`).
