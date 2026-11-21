# Regra Mandatória: Sprint Atual & Checkpoint Incremental de 10%

Aplica-se a **qualquer tarefa, funcionalidade, refatoração ou correção de bug** em projetos da Delbor.

## 1. Fonte Única da Verdade e Sincronismo
- **Na raiz do projeto**: `Sprint atual.md`.
- **Na Central do Operador**: `C:\Projetos Soft\Operador\Projetos\<Nome_do_Projeto>\Sprint atual.md`.
- **No Antigravity**: artefato `task.md`, mantido sempre espelhado com os mesmos 10 marcos do `Sprint atual.md`.
- A ficha técnica do projeto fica em `C:\Projetos Soft\Operador\Projetos\<Nome_do_Projeto>\<Nome_do_Projeto>.md`.

## 2. Planejamento em 10 Marcos (10% a 100%)
Ao iniciar qualquer demanda:
1. Definir ou atualizar o checklist com **exatamente 10 marcos sequenciais** (`10%`, `20%`, `30%`, ..., `100%`).
2. Listar os arquivos alvo e o objetivo claro da sprint.
3. Atualizar `Sprint atual.md` (projeto + Operador) e `task.md`.

## 3. Protocolo de Salvamento Seguro a Cada 10%
Ao concluir cada marco de 10%:
1. **Validar e testar** o código do marco concluído (compilando/executando sem quebras).
2. **Marcar o checkbox** correspondente no `Sprint atual.md` e no `task.md`.
3. **Registrar o checkpoint** na tabela **Diário de Bordo & Checkpoints Salvos** (data/hora, resumo e arquivos modificados).
4. **Sincronizar** `Sprint atual.md` com `C:\Projetos Soft\Operador\Projetos\<Nome_do_Projeto>\Sprint atual.md`.
5. **Commit e push imediatos** seguindo [`git-auto-sync.md`](./git-auto-sync.md).
