# Protocolo Graphify: Grafo Global de Configurações & Grafos de Projetos

## 1. Grafo Global de Configurações (`~/.gemini/setores/graphify-out/`)
Sempre que precisar localizar **qual regra, setor, skill ou referência usar** neste ambiente:
1. Execute primeiro no diretório `~/.gemini/setores` (ou `~/.gemini`, que possui junction `graphify-out/`):
   ```powershell
   Push-Location "C:\Users\Gallo\.gemini\setores"
   graphify query "<sua dúvida sobre regra, setor ou skill>"
   Pop-Location
   ```
   Ou use `graphify explain "<nome-do-setor-ou-skill>"` e `graphify path "<A>" "<B>"`.
2. Para navegação estruturada sem terminal, abra [`../graphify-out/wiki/index.md`](../graphify-out/wiki/index.md) ou [`../../CATALOGO_SETORES.md`](../../CATALOGO_SETORES.md).
3. Após adicionar, mover ou editar regras/skills em `~/.gemini/setores/`, execute atualização incremental do grafo.

## 2. Grafos de Projetos Delbor (`<projeto>/graphify-out/`)
- **Inicialização Obrigatória**: Em projetos novos ou sem grafo, crie `graphify-out/` com `/graphify .` ou `graphify .`.
- **Economia de Tokens e Precisão**: Quando `<projeto>/graphify-out/graph.json` existir, **SEMPRE** execute `graphify query "<pergunta>"` antes de listar diretórios ou fazer buscas cegas por arquivos. Leia arquivos brutos apenas nas linhas localizadas pelo grafo.
- **Memória Multi-IA**: O grafo unifica o contexto para Antigravity, Claudinho, OpenCode, Codex e Obsidian (`graphify-out/wiki/index.md`).
- **Atualização Contínua**: Ao concluir modificações em código ou arquitetura, execute `graphify update .` (análise AST local sem custo de tokens de API).
