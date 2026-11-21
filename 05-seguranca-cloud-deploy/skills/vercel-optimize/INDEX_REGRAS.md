# vercel-optimize — Índice Modular e Requisitos

Procedimento completo em [`SKILL.md`](./SKILL.md). Use apenas para projetos hospedados na Vercel com tráfego.

## Requisitos & Fluxo
- Node.js 20+, Vercel CLI v53+ autenticada, diretório linkado (`vercel link`), Observability Plus para métricas por rota.
- Ordem: `SKILL.md` -> coletar sinais Vercel -> filtrar candidatos com scripts -> ler apenas arquivos citados -> verificar antes do relatório.
- Regras rígidas: [`references/doctrine.md`](./references/doctrine.md).

## Referências Principais (`references/`)
[`candidates`](./references/candidates.md), [`data-collection`](./references/data-collection.md), [`doctrine`](./references/doctrine.md), [`observability-plus`](./references/observability-plus.md), [`recommendations`](./references/recommendations.md), [`scanner-patterns`](./references/scanner-patterns.md), [`scoring`](./references/scoring.md), [`verification`](./references/verification.md), [`voice`](./references/voice.md)

## Catálogo de Otimizações (51 arquivos em `references/frameworks/` e `references/patterns/`)
Busque por framework (`nextjs`, `astro`, `sveltekit`, `nuxt`) ou padrão (`cache`, `fluid`, `image`, `middleware`) diretamente nas subpastas de `references/`.
