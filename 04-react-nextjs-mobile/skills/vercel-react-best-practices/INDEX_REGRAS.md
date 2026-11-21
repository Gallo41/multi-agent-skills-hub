# Vercel React Best Practices — Índice Modular de Regras

Substitui o antigo monolito `AGENTS.md` (112 KB). Todas as **70 regras** existem individualmente em [`rules/`](./rules/), nomeadas como `rules/<prefixo>-<regra>.md` (lista completa em [`SKILL.md`](./SKILL.md)).

> Leia sob demanda apenas o arquivo da regra necessária, sem carregar todas de uma vez.

## Categorias por Prioridade (`rules/`)

| Prioridade | Categoria | Impacto | Prefixo e Padrão de Caminho | Qtd |
| :--- | :--- | :--- | :--- | ---: |
| 1 | Eliminating Waterfalls | CRITICAL | `rules/async-*.md` (ex.: `async-parallel.md`, `async-api-routes.md`) | 6 |
| 2 | Bundle Size Optimization | CRITICAL | `rules/bundle-*.md` (ex.: `bundle-barrel-imports.md`, `bundle-dynamic-imports.md`) | 6 |
| 3 | Server-Side Performance | HIGH | `rules/server-*.md` (ex.: `server-cache-react.md`, `server-parallel-fetching.md`) | 10 |
| 4 | Client-Side Data Fetching | MEDIUM-HIGH | `rules/client-*.md` (ex.: `client-swr-dedup.md`, `client-localstorage-schema.md`) | 4 |
| 5 | Re-render Optimization | MEDIUM | `rules/rerender-*.md` (ex.: `rerender-memo.md`, `rerender-derived-state.md`) | 15 |
| 6 | Rendering Performance | MEDIUM | `rules/rendering-*.md` (ex.: `rendering-hoist-jsx.md`, `rendering-content-visibility.md`) | 11 |
| 7 | JavaScript Performance | LOW-MEDIUM | `rules/js-*.md` (ex.: `js-index-maps.md`, `js-early-exit.md`) | 14 |
| 8 | Advanced Patterns | LOW | `rules/advanced-*.md` (ex.: `advanced-init-once.md`, `advanced-use-latest.md`) | 4 |
