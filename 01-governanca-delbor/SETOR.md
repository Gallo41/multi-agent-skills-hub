# Setor 01 — Governança Delbor & Padrão Operacional

Este setor centraliza as **regras obrigatórias de operação em todos os projetos da Delbor** (gestão de sprints incrementais, versionamento Git automático, inicialização de novos projetos e integração entre múltiplas IAs).

## Mapa do Setor

| Documento | Escopo / Quando Consultar |
| :--- | :--- |
| [`regras/sprint-10-porcento.md`](./regras/sprint-10-porcento.md) | Planejamento em 10 marcos (10% a 100%), espelhamento `Sprint atual.md` <-> `task.md` <-> Central do Operador e tabela de checkpoints. |
| [`regras/git-auto-sync.md`](./regras/git-auto-sync.md) | Hook `.githooks/post-commit`, script `git-auto-sync.ps1`, push obrigatório por marco e lista estrita de arquivos proibidos. |
| [`regras/onboarding-projetos.md`](./regras/onboarding-projetos.md) | Padronização de projetos novos ou sem estrutura Delbor via `setup-delbor-project.ps1` e `C:\Users\Gallo\Documents\Projeto Padrão\`. |
| [`regras/ecossistema-multi-ia.md`](./regras/ecossistema-multi-ia.md) | Integração compartilhada entre Antigravity, Claudinho, OpenCode, Codex, OmniRoute (`localhost:20128/v1`) e Obsidian. |

## Relação com Outros Setores
- O pilar **Graphify** da Governança Delbor tem documentação técnica detalhada no **Setor 06** ([`../06-automacao-ia-conhecimento/regras/protocolo-graphify-global-e-projetos.md`](../06-automacao-ia-conhecimento/regras/protocolo-graphify-global-e-projetos.md)).
- O controle de branches e worktrees Git durante entregas é apoiado pelo **Setor 02** (`using-git-worktrees`, `finishing-a-development-branch`).
