# Regra Mandatória: Git Auto-Commit & Auto-Push (GitHub)

## 1. Hook Automático de Repositório
- Todos os repositórios Git Delbor devem manter ativo o hook `.githooks/post-commit`:
  ```powershell
  git config core.hooksPath .githooks
  ```
- Para projetos que utilizam Husky, o mesmo hook deve existir em `.husky/post-commit`.
- Qualquer commit realizado dispara automaticamente `git push origin HEAD`.

## 2. Comandos Padrão de Sincronização
- Preferencialmente via script padrão do projeto:
  ```powershell
  powershell -ExecutionPolicy Bypass -File ./scripts/git-auto-sync.ps1 -Message "checkpoint: [X%] <descrição do avanço>"
  ```
- Alternativa equivalente direta:
  ```powershell
  git add -A && git commit -m "checkpoint: [X%] <descrição do avanço>" && git push origin <branch>
  ```

## 3. Regra de Fechamento de Sessão
- **NUNCA** encerrar uma sessão ou entrega com trabalho testado pendente sem realizar commit e push para o repositório remoto.

## 4. Higiene de Repositório (Arquivos Proibidos)
**NUNCA** stagear ou commitar:
- Credenciais locais: `.env`, `Configura.ini`, chaves/tokens privados.
- Bancos de dados Firebird: `*.gdb`, `*.fdb`.
- Binários compilados: `Win32/`, `*.exe`, `*.dll`, `*.dcu`.
- Caches locais do Graphify: `graphify-out/cache/`.
- Arquivos temporários de teste: `tests/tmp/`.
