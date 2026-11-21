---
name: agy-fast
description: Latency and tool-call accelerator plugin and MCP server. Reduces round-trips and TTFT via batch_search (up to 20 concurrent queries), apply_edits (atomic multi-hunk edits with verify), read_slices (outlining large files without dumping lines), and run_checks (concurrent command execution).
---

# agy-fast: Latency & Tool-Call Accelerator

O **agy-fast** acelera sessões de agentes de código (Antigravity, Claude Code, etc.) eliminando turnos redundantes, reduzindo o consumo de tokens/cota em ~35%–58% e agrupando chamadas de ferramentas através de um servidor MCP local ultra-rápido.

## Ferramentas Disponíveis (`ServerName: "fast"` ou `"agy-fast_fast"`)

| Ferramenta | O que faz | Quando usar |
| :--- | :--- | :--- |
| `batch_search` | Executa de 1 a 20 buscas concorrentes locais (regex, texto, glob, fuzzy ou comandos git read-only) em <70ms. | Para substituir múltiplos `run_command` seriais de grep/ripgrep/find/git status. |
| `read_slices` | Mapeia o contorno (*outline*) de arquivos grandes (>300 linhas) sem despejar centenas de linhas cegas no contexto. | Para inspecionar classes, métodos e funções de múltiplos arquivos antes de ler o código. |
| `apply_edits` | Aplica edições multi-hunk atômicas em múltiplos arquivos (1 a 50 arquivos) com comando de verificação (`verify`) integrado. | Para refatorações, criação de arquivos e substituições sem falhar por turnos divididos. |
| `run_checks` | Roda de 1 a 12 comandos não-interativos concorrentes (typecheck, lint, test) com saída compactada. | Para validações pós-edição em lote sem travar a sessão. |

## Regras de Eficiência e Higiene de Latência

1. **Agrupamento Máximo**:
   - Em vez de rodar 3 buscas separadas, empacote todas em uma única chamada de `batch_search`.
   - Em vez de editar e depois rodar um comando de teste, passe `verify: "npm test"` diretamente no `apply_edits`.
2. **Arquivos Grandes**:
   - Para arquivos desconhecidos >300 linhas, chame `read_slices({ outlines: ["caminho/do/arquivo.ts"] })` para mapear as linhas exatas.
   - Depois, use leituras direcionadas com `StartLine` e `EndLine` (<=200 linhas) para trazer apenas o código necessário.
3. **Múltiplos Arquivos (`bestEffort: true`)**:
   - Ao alterar 3 ou mais arquivos com `apply_edits`, use `bestEffort: true`. Se um arquivo tiver divergência de linha, os demais válidos serão gravados e você receberá as dicas de linha atualizadas.
4. **Isolamento Visual**:
   - Evite carregar capturas de tela `.png`/`.jpg` na conversa principal de código em sessões longas (>150k tokens) para evitar quedas drásticas de TTFT (Time to First Token). Delegue inspeções visuais a subagentes que retornem apenas texto/seletores.

## Esquemas Rápidos

```json
// batch_search
{
  "queries": [
    { "type": "regex", "pattern": "export function login", "path": "src" },
    { "type": "glob", "pattern": "*.config.ts" }
  ],
  "maxChars": 8800
}

// apply_edits
{
  "edits": [
    {
      "path": "src/auth.ts",
      "hunks": [{ "target": "oldCode()", "replacement": "newCode()" }]
    }
  ],
  "verify": "npm run typecheck",
  "bestEffort": true
}

// read_slices
{
  "outlines": ["src/service.ts", "src/controller.ts"]
}

// run_checks
{
  "commands": [
    { "name": "lint", "command": "npm run lint" },
    { "name": "typecheck", "command": "npm run typecheck" }
  ],
  "outputMode": "compact"
}
```