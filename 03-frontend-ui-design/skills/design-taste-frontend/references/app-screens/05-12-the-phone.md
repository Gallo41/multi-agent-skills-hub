# App Screens (Dashboards, Admin & Ferramentas): 12. The phone | 13. House rules for app screens | 14. Tells of generated dashboards

## 12. The phone

The study has no phone screens. This section is house rule, built from the skill's phone rules
(`layout.md` §9) and from what the desktop screens imply. The inspector fails a sidebar that still
takes more than 30% of a phone's width.

- **Navigation folds.** The sidebar becomes a 48px top bar with the screen's name, a menu button that
  opens a full-screen sheet (nav, workspace switcher, account) and at most one action; or a bottom
  bar of four or five destinations with short labels. An icon rail becomes that bottom bar.
- **Margins** 16-20px; touch targets at least 44px tall; data and labels at 14px, sublines no smaller
  than 12px.
- **The title stays**, at 20-24px. Header actions move into a kebab, except the one primary.
- **Filters** collapse into one row of chips or a Filters sheet; tabs scroll sideways inside their own
  row, never the page. The first list row starts in the top 60% of the phone screen: three rows of
  filter controls above it pushed the list off the first screen in testing.
- **KPIs**: a divided container becomes a 2-column grid, or a list with the label on the left and the
  value on the right. Never four squeezed columns. In a 2-column grid the count after any full-width
  lead is even; otherwise use three narrow columns or a divided list, or let the last cell take the
  full width (`app.css` does that for an odd count). A lone "Sold 3.18 kWh" beside an empty half-row
  was flagged.
- **At most one row of controls above a chart**: an office select and a week switch share one row.
  Two stacked full-width segmented controls pushed the data down in testing.
- **Charts** go full width, 160-200px tall, with 3-4 x labels and a legend of dots above, set in a
  2-column grid (or behind a "Key" disclosure) when it would wrap to three lines. The y ticks keep
  their own lane at the left (or move to the right edge); a tick label never sits on the line.
- **Row actions on a phone** are text actions or one compact trailing button, with one filled bulk
  action for the list ("Approve 3 that fit"); five 44px grey Approve blocks turned a list into a stack
  of buttons.
- **When a strip collapses, drop the item least relevant to the screen's main action**, not the last
  in source order: the live price stays on an energy screen whose plan depends on it.
- **Tables become lists of two-line rows below about 640px**: the identity and the key number on line
  1, the other fields the brief names in 13px grey on line 2 ("fra1 · 1m 38s"), the one action at the
  right. Fields move to line 2; they are never dropped. A table that must stay a table scrolls inside
  its own frame with its first column fixed; the page never scrolls sideways.
- **The tablet (641-1100px) is its own band**: the sidebar folds to the top bar, but tables keep four
  or five columns with secondary fields as sublines, two narrow panels stack once either would be
  under about 340px, and the identity column is never the one truncated while another has room.
- **Blocks that carry an action move up, not down**: a right rail with an action (low stock and its
  Reorder, bills due and Pay) becomes a one-line summary row above the list ("5 items low · Review"),
  never a block under twenty orders.
- **Several panes** (a list and its detail, an inbox): one region at a time. Choosing a row pushes the
  detail; back returns to the list at its scroll position.
- **Settings**: the label column stacks above its panel.
- **A right rail** moves under the main column or into a tab.
- **Builders** show the work read-only, with the palette as a bottom sheet if editing stays.
- Check 390px in the inspector's screenshots every round.


## 13. House rules for app screens

The house rules in `SKILL.md` were written for pages that are read once. An app screen is read every
day, and part of what those rules ban is the structure of a working screen. These relax, with limits:

| Allowed on app screens | Limit |
| --- | --- |
| **1px borders** on cards, panels, tables and controls | About 1.1-1.3:1 against the ground on light (#e5e7eb-#ededed on white); #1a1a1a on #000, #2e2e2e on #111. Controls one step stronger. A border or a shadow, never both. |
| **Row rules** in tables and lists | 1px, 3-7% darker than the surface. No zebra, no header band. |
| **Dashed lines** | In chart grids and empty slots only. |
| **Small labels** above values | 12-14px, sentence case, grey at 4.5:1. Meta and axis text 11-12px. Nothing under 11px. At most one tracked uppercase label on a screen (a switcher's context label). |
| **Rows of identical cards** | Peer metrics or peer objects only: 3-6 across, equal widths, one gap, no orphan, edges aligned across rows, no icon on top. Prefer one divided card; mixed spans beat a uniform grid. |
| **Monospace** | IDs, keys and code; or every figure, as one style's decision. Otherwise tabular figures in the text face. |
| **Pills** | Inside rows and beside a value only: 16-24px tall, a pale tint with dark text of the same hue. Never above a heading. |
| **Index numbers** | Only as data: a rank ("1."), a node number. |
| **Icons** | 14-20px outline, one set, grey: in the nav, before a label, or as a single affordance (kebab, chevron, info). A container only if it is neutral, or node-type tiles in a builder (pass `--allow icon-chips` and give the reason in the report). |
| **Shadows** | On what floats: a menu, a popover, a tooltip, a composer, a dialog. A resting card gets at most a small blur under 8% black. |
| **A second typeface** | With one job: a mono for IDs or figures, a serif for one greeting. |
| **A gradient** | Only as an area fade under one line chart; a flat tint of about 14% is safer. |

Still banned, as on pages, and checked:

| Banned | Instead |
| --- | --- |
| Gradients on grounds, buttons, cards, text and KPI tiles (the study's two gradient buttons are flagged) | Flat fills |
| Glows, glass, backdrop blur | Opaque surfaces one tone step from the ground |
| An icon in a coloured circle or tinted square on every KPI or card (0 of 23) | A label and a number |
| Rainbow charts: more than four hues, a hue per bar, one subject in two hues | One hue per chart, neutrals for the rest |
| Sparklines on KPIs (0 of 23) | The trend in its own chart, or nowhere |
| Emoji in greetings, labels, nav or empty states | Words |
| Lorem ipsum, Acme, John Doe, "User 1"; vanity figures ("10,000+ teams"); totals that do not add up | Believable sample data computed from rows, listed in the report |
| Status colour on a zero or undefined change | Grey, or the change in words ("+4 (new)") |
| A dark or saturated sidebar on a light screen; a navy or slate dark theme | The page ground for the sidebar; true neutral darks |
| The accent on chrome: a tinted nav row with a left bar, coloured tab pills, a brand fill on every button | The accent on data and at most one control; a near-black primary |
| Uppercase tracked table headers, zebra rows, header bands | 12px grey sentence-case headers; rules or space |
| Left-aligned numbers, proportional figures in columns | Right-aligned tabular figures |
| A hero header, a greeting with an emoji, an illustrated welcome banner | A noun title at 24px |
| Pagination under a five-row overview list | Capped rows, "View all", the total |
| Violet and indigo accents; cream with terracotta | The dealt style's palette |
| A landing-page title (over 32px) or a figure at 48px or more | An 18-32px title; figures at 16-40px |
| Icons in boxes repeated down a list or on top of every peer card, tinted or neutral | One plain 16px icon where it helps, or none |
| Every row a different hue, a "left" amount in green on every budget row | Grey for what is fine; colour only on the rows at risk or over |
| A screen that names no product and offers no action | The product's mark and scope in the shell; its main job one click away |

**On violet and indigo.** 10 of the 23 studied screens use violet or indigo, always as a data hue or a
single control. The ban is the owner's taste, not a finding of the study: the library deals other
hues for the styles that came from those screens, and the inspector's palette check stays on.


## 14. Tells of generated dashboards

Each line sets a habit of generated dashboards against what the 23 screens do instead.

| Tell | What replaces it |
| --- | --- |
| A dark navy or tinted sidebar with a coloured active pill and a left bar | The sidebar on the page ground; a neutral grey pill, or the label brightening on dark. A left bar appears once in 23. |
| "Welcome back, Alex" with a waving hand and a subtitle | A noun title at 24/600. Three screens greet; the one emoji goes. |
| Four KPI cards, each with an icon in a tinted circle | One container split by hairlines, label over value. No icons on any of the 23. |
| A green "+12.5%" pill on every KPI | A delta on 9 of 20 screens, in words with its window; grey for zero; "+4 (new)" from zero. |
| A sparkline on every KPI | None on any of the 23. The trend has its own chart. |
| KPI values at 36-48px, bold, in the brand colour | 24-30px at 400-600 in ink; nothing at 48. |
| A gradient area chart with a smoothed spline and a dot on every point | A 2px straight line, no fill on 7 of 10, no markers. |
| A rainbow palette, a hue per bar or per chart | One hue per chart; the accent on data only; four hues at most on a screen. |
| Gridlines every 20px, axis lines on both sides, a legend for one series | 3-5 faint lines, no y-axis line, no legend for a single series; round ticks above the maximum. |
| A fat donut with labels on the slices and a big total in the hole | A thin ring, no slice labels, the legend as a table with the values. |
| Cards with a 16-24px radius, a 1px border and a large soft shadow | A border or a tone step, no shadow; a tight or a soft radius, chosen once. |
| A zebra table under uppercase tracked headers, with a checkbox, an avatar, a status chip and a kebab on every row | Rules and alignment: 12px grey headers, one status mark, one action where it is needed. |
| Left-aligned numbers in proportional digits | Right-aligned tabular figures, fixed decimals, units in grey. |
| Saturated status chips with white text | Pale tints with dark text of the same hue. |
| The accent on every button, tab and link | No filled primary on 12 of 23; near-black where there is one. |
| A top bar with search, a bell and an avatar on every screen, or one left mostly empty | No top bar on 9 of 23; when there is one, it carries search, the switcher or the object's name. |
| Export, Share and a date picker clustered by the title | Actions only when they are real; a freshness stamp instead. |
| Placeholder people and companies, round vanity totals, growth on a week-old account | The product's own data, small numbers at their real size, totals summed from the rows. |
| Pagination under a short list | Capped rows and "View all". |
| An equal four-up grid whatever the data, with orphan cells and stretched cards | A column count chosen by the item count; spans that change by row and land on the same lines. |
| Neon on dark, glowing borders, glass | True neutral darks, lightness steps, colour on the data. |
| The kit's own face: Geist or Inter on #f8f8f8 with white 12px cards and no hue on the data, or lime on black | One face taken from the brief (a ground from the product's world, a figure face with character, the brand's hue on the main data element) and one element only this product has. |
| A coloured icon per category in a list | One grey icon set; colour, if any, on the numbers. |
| An illustration and "No data yet" in an empty chart | The zero line drawn, and one sentence in the frame. |

A screen with every tell removed and nothing put in their place is a tidy template. What fills the
space is the product: its own data at its real size, the screen's one question answered by its
biggest block, and a grid whose sums close.
