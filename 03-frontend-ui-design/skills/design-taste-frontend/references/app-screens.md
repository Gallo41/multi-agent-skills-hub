# App Screens (Dashboards, Admin & Ferramentas) (Índice Modular)

Regras e arquitetura para telas operacionais (dashboards, tabelas, KPIs, gráficos, formulários e settings). O fluxo de landing pages do `SKILL.md` não se aplica a elas.

> **Economia de contexto**: Este guia foi modularizado em `app-screens/` (6 módulos). Leia apenas o módulo específico da seção necessária.

## Mapa de Módulos

| Módulo | Conteúdo / Seções | Tamanho |
| :--- | :--- | ---: |
| [`00-visao-geral.md`](./app-screens/00-visao-geral.md) | Visão Geral, Estudo de 23 Telas & Identidade do Produto | 7.1 KB |
| [`01-1-when-this-applies.md`](./app-screens/01-1-when-this-applies.md) | §1. When this applies · §2. The run for an app screen | 15.8 KB |
| [`02-3-the-shell.md`](./app-screens/02-3-the-shell.md) | §3. The shell · §4. The canvas and page title · §5. KPIs | 15.1 KB |
| [`03-6-charts.md`](./app-screens/03-6-charts.md) | §6. Charts · §7. Tables and lists | 18.1 KB |
| [`04-8-forms-and-settings.md`](./app-screens/04-8-forms-and-settings.md) | §8. Forms & settings · §9. Type & colour · §10. Density · §11. Empty/zero/error states | 16.8 KB |
| [`05-12-the-phone.md`](./app-screens/05-12-the-phone.md) | §12. The phone · §13. House rules · §14. Tells of generated dashboards | 11.9 KB |

## Resumo Executivo / Regras de Ouro

1. **Colour goes on data, not chrome** (median screen has ~3% coloured pixels; <= 5% in 17/23 screens).
2. **KPIs are type, not tiles** (no icon in a tinted circle, no sparklines on KPI tiles).
3. **Surfaces are flat** (no drop shadows; separate with 1px lines or one tone step).
4. **There is no hero header** (headings <= 16-24px; show headers and first rows above the fold).
5. **Charts carry almost no chrome** (single series has no legend; 3-7 faint gridlines or none).
6. **Navigation recedes** (active item is neutral grey pill or text colour change).
7. **Tables are rules and alignment** (no zebra striping, no header bands, numbers right-aligned).
8. **Data states are honest** (zeros print as `0`, missing values as grey dash `—`, empty sections keep their frame).
