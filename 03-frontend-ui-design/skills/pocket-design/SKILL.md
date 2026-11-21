---
name: pocket-design
description: Design tools and resources MCP server providing icons (Phosphor, Hugeicons, Feather), Google Fonts/Fontshare, components (shadcn/ui, React Bits, Motion Primitives), easings, OKLCH palettes, WCAG/APCA contrast checks, and SVG optimization.
---

# Pocket Design (MCP & Skill)

O **pocket-design** conecta o agente diretamente a recursos de design de alta fidelidade: busca e inserção de ícones SVG, tipografia, componentes prontos, curvas de easing / animação, paletas de cores OKLCH e otimização de SVG.

## Ferramentas Disponíveis

| Ferramenta | Descrição | Fontes / Recursos |
| :--- | :--- | :--- |
| `list_resources` | Lista ~180 recursos de design curados (categorias: icons, fonts, components, motion, design systems) | Local |
| `search_icons` | Busca ícones SVG por palavra-chave (`query`, `limit`, `sets`) | Iconify (Phosphor `ph:`, Hugeicons `hugeicons:`, Feather `feather:`, Pixelarticons `pixelarticons:`) |
| `get_icon` | Retorna o SVG pronto para embutir no código (`name`, `size`, `color`) | Ex: `ph:house`, `feather:search` |
| `search_fonts` | Busca fontes e retorna o link CSS/Google Fonts/Fontshare (`query`, `category`, `source`) | Google Fonts + Fontshare |
| `search_components` | Busca componentes prontos de UI (`query`, `registries`) | shadcn/ui, React Bits, Motion Primitives, Fancy Components |
| `get_component` | Retorna o código e o comando de instalação (`name`, `registry`) | shadcn CLI ou código TSX/Tailwind |
| `get_easing` | Curvas de animação easings.net (CSS `cubic-bezier`, Motion, GSAP) ou springs (`linear()`) | Local |
| `easing_gradient` | Gradientes suaves sem arestas duras com interpolação `oklab` | Local |
| `check_contrast` | Verificação de contraste WCAG 2 (AA/AAA) e APCA Lc com sugestão de ajuste | Local |
| `optimize_svg` | Minifica e limpa SVGs via svgo | svgo local |
| `make_palette` | Gera escala de cores 50–950 em OKLCH, harmonias e taxas de contraste | Local |
| `search_images` | Busca fotos e ilustrações (requer `PIXABAY_API_KEY` opcional) | Pixabay |

## Quando Usar
- Ao construir ou estilizar telas em projetos web/React/Next.js/HTML.
- Ao precisar de ícones SVG específicos sem inventar vetores quebrados.
- Ao selecionar fontes para títulos ou corpo de texto (combinando com `frontend-design` e `design-taste-frontend`).
- Ao adicionar microinterações e transições com curvas de easing realistas (CSS ou Framer Motion).
- Ao validar contraste de cores e acessibilidade antes de fechar a sprint.

## Execução Local / CLI
Caso o MCP não esteja conectado via stdio na sessão atual, o servidor pode ser executado diretamente via Node:
```powershell
node "C:\Users\Gallo\.gemini\setores\03-frontend-ui-design\skills\pocket-design\dist\index.js"
```
Ou testado via script de smoke test:
```powershell
cmd /c "cd /d C:\Users\Gallo\.gemini\setores\03-frontend-ui-design\skills\pocket-design && npm test"
```