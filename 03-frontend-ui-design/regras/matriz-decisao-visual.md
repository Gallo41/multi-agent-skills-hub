# Matriz de Decisão Visual (Skills de UI & Design)

Ao trabalhar em interfaces ou peças visuais, cite explicitamente o nome da skill escolhida quando houver opções próximas:

| Cenário / Necessidade | Combinação Recomendada | Observação Chave |
| :--- | :--- | :--- |
| **Landing page / site institucional / portfólio** | `frontend-design` + `antiwebslop` (ou `design-taste-frontend`) | Em `design-taste-frontend`, use os módulos em `references/` sem carregar arquivos gigantes inteiros. |
| **Dashboard / Admin / Tela de App** | `design-taste-frontend` (`references/app-screens.md`) + `antiwebslop` | Seguir o fluxo de app screens (`app-screens/`), nunca o fluxo de landing page. |
| **Aplicar paleta/tipografia consistente** | `theme-factory` | 10 temas prontos em `skills/theme-factory/themes/*.md`. |
| **App React + shadcn/ui multi-tela complexo** | `web-artifacts-builder` | **Não usar** para HTML simples de arquivo único. |
| **Arte generativa interativa (p5.js)** | `algorithmic-art` | Gera filosofia algorítmica + viewer HTML/JS. |
| **Peça gráfica estática (`.png`/`.pdf`)** | `canvas-design` | Utiliza fontes locais em `canvas-fonts/`. |
| **Auditoria de UI/UX, acessibilidade e copy** | `web-design-guidelines` + `writing-guidelines` | Checklist rápido de interface e textos de produto. |

## Relação com o Setor 04 (React/Next.js)
- Para regras de performance de renderização, estado e composição em React/Next.js, consulte também o **Setor 04** ([`../../04-react-nextjs-mobile/SETOR.md`](../../04-react-nextjs-mobile/SETOR.md)).
