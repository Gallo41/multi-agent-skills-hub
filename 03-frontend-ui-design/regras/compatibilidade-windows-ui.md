# Compatibilidade Windows para Skills de UI (`web-artifacts-builder`)

## 1. Execução no Windows (Ambiente Delbor)
- Os scripts `scripts/init-artifact.sh` e `scripts/bundle-artifact.sh` da skill `web-artifacts-builder` exigem **`pnpm`** (instalado globalmente) e **Bash POSIX**.
- No Windows PowerShell, execute sempre via **Git Bash**:
  ```powershell
  & "C:\Program Files\Git\bin\bash.exe" C:\Users\Gallo\.gemini\setores\03-frontend-ui-design\skills\web-artifacts-builder\scripts\init-artifact.sh <nome-do-projeto>
  ```
- **Proibido**: não utilize `C:\Windows\System32\bash.exe` (launcher WSL), pois causa divergência de caminhos e ambiente.

## 2. Ferramentas de Inspeção Visual
- Os scripts `draw.mjs` e `inspect.mjs` de `design-taste-frontend` e `slop-lint.mjs` de `antiwebslop` rodam em Node.js 22+ com Chrome/Edge instalado localmente.
