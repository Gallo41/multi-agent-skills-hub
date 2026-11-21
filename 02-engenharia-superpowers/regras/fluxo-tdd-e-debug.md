# Fluxo de Engenharia: Superpowers, TDD, Debugging e Verificação

## 1. Sequência Padrão de Qualidade
1. **`using-superpowers`**: No início da tarefa, verificar quais skills se aplicam ao contexto.
2. **`brainstorming`**: Discutir alternativas, requisitos e arquitetura antes de iniciar qualquer implementação ou refatoração grande.
3. **`test-driven-development`**: Adotar TDD (escrever/executar teste que falha antes da implementação, implementar o mínimo para passar, refatorar e re-testar).
4. **`systematic-debugging`**: Diante de qualquer erro ou falha inesperada, investigar a causa-raiz com evidências concretas (logs, stack trace, reprodução) antes de editar código.
5. **`verification-before-completion`**: Nunca declarar conclusão sem executar testes, builds ou validações reais após a última edição.

## 2. Regra de Escopo
- O pacote **Superpowers (`v7.0.2`)** é mantido apenas no escopo global (`~/.gemini/setores/02-engenharia-superpowers/skills/`, espelhado em `~/.agents/skills/`, `~/.gemini/skills/` e `~/.claude/skills/`) para não inflar repositórios individuais de projeto.
