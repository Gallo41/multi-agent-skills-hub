# Guia de Performance & Arquitetura React / Next.js / React Native

## 1. Como Consultar as Regras sem Inchar o Contexto
- **NUNCA** leia dezenas de arquivos `rules/*.md` de uma vez.
- Abra primeiro o `SKILL.md` ou `INDEX_REGRAS.md` da skill alvo para identificar o prefixo exato e leia apenas os arquivos individuais necessários.

## 2. Prioridade de Diagnóstico Web (`vercel-react-best-practices`)
1. **CRITICAL (`async-*`, `bundle-*`)**: Eliminar waterfalls (`Promise.all`, `Suspense`), remover barrel imports e usar `next/dynamic` em módulos pesados.
2. **HIGH (`server-*`)**: `React.cache()`, paralelização de fetch em Server Components e redução de payloads serializados para Client Components.
3. **MEDIUM (`client-*`, `rerender-*`, `rendering-*`)**: SWR deduplication, memoização seletiva, `startTransition` e `content-visibility`.
4. **Arquitetura (`vercel-composition-patterns`)**: Substituir proliferação de props booleanas por compound components e providers desacoplados.

## 3. Prioridade Mobile (`vercel-react-native-skills`)
1. **CRITICAL (`list-performance-*`)**: `FlashList`, itens memoizados, `expo-image` e callbacks estáveis.
2. **HIGH (`animation-*`, `navigation-*`, `ui-*`)**: Animar apenas `transform`/`opacity` na UI thread via Reanimated e preferir navegadores nativos.
