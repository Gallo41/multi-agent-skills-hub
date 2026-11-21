# App Screens (Dashboards, Admin & Ferramentas): 8. Forms and settings | 9. Type and colour | 10. Density | 11. Empty, zero, loading and error states

## 8. Forms and settings

The study holds forms on three screens and one settings page, so this section rests on little. It is
enough for the defaults.

### 8.1 Fields

- **Label above the field**, 14px at 500, 8-10px gap. No floating labels and no placeholder standing
  in for a label.
- **Inputs** 38-40px in forms (radius 8-10); toolbar and filter controls 28-40px, median 32. One
  control height per context.
- Inputs stay white with a 1px #e5e7eb-#e8e8e8 border even on a grey panel; filter and select
  controls take a border one step darker (#cdcfcf-#d1d5db).
- A leading icon at 14px, 13px in from the edge, with the text starting at 38px.
- **Spacing**: 24px from a description to the first label, 16px between fields, 16px to the Save
  button.
- **A joined input and action** (a read-only link and its Copy button) share a border and square
  their inner corners.
- **Toggles** 28x16 to 33x20. The on colour is a semantic green or near-black, not the brand accent.
- **Disabled** controls stay legible and say why they are disabled: the study's disabled Save
  (#cecece on #f4f4f4, about 1.4:1) and its plan-locked panel at 30% opacity are flagged as
  unreadable.

### 8.2 Settings layout

- Each section is a row: a label column (about 450px: a 16/500 title and a 14px grey description)
  beside a panel (about 700px, #fafafa, radius 16, padding 16, no border, no shadow). The title's cap
  top aligns with the panel's first line, 6-8px below the panel's top.
- Sections are split by a full-width 1px rule with 32px above and below.
- A switch row: a 14/500 title, a status badge 8px after it, a 14px grey description, and the toggle
  on the right, 16px from the edge and centred on the title line.
- A plan-gated feature: a 48px tinted strip with a 32px button directly above the locked panel; the
  panel stays readable.
- Narrow containers stack: label, 10px, field, then 26px to the next pair.
- Do not leave the label column empty beside a tall panel (a 250px void is flagged): put the section's
  help or a summary of its current values there, or narrow the column.
- **Destructive actions** (house rule; none in the study) go last, in a section of their own, as a
  text or outlined button in the negative colour, with the consequence in words and a confirmation
  that names the object.
- **One view per area** (house rule, from testing). When settings span several areas (general,
  members, billing, notifications), each sidebar item opens its own view (a hash route is enough in
  a static build), with the area's name as the h1. One long page of every area, with the sidebar
  scrolling to anchors, put the first area the brief named four screens down and was marked down.
- **One save model per view**: every control saves itself and shows a quiet "Saved" stamp, or one
  Save per panel at the panel's bottom right. Never a mix of both on one view.
- **Show what the setting produces.** Beside the control that changes it, a small preview of the
  result (the invite email, the notification as it will arrive, the plan's next invoice) is the
  product-specific substance a settings screen otherwise lacks.
- A settings view opens with a usage strip only when usage is its question (a plan or quota view),
  and its figures stay smaller than its h1.

### 8.3 Buttons

Controls run 27-40px tall (median 34; 32 is the commonest), with a 6-8px radius in the tight styles
and full pills in the soft ones. One filled primary per screen, usually near-black; a secondary is
white with a 1px border; a tertiary is text. The controls in one row share one height.


## 9. Type and colour

### 9.1 Type

- **One grotesk.** All 23 screens use a neo-grotesk, and 14 use that one family alone. A second face
  always has one job: a monospace for every number or for IDs only, a serif for one greeting, a brand
  face kept to the wordmark or the switcher. Never three. Axis ticks, chart notes and labels stay in
  the text face even when IDs are in a monospace.
- **App type is not display type.** The h1 stays at 18-32px and no figure reaches 48px: in testing, a
  50px serif title and a 76px balance made a budgeting screen read as a landing page (the inspector
  warns at 34px and 48px).
- **Sizes**:

| Role | Range in the study | Median |
| --- | --- | --- |
| Page title | 14-48 | 24 |
| KPI value | 16-40 | 24 |
| Card title (500-600) | 14-24 | 16 |
| Body, nav, cells | 13-16 | 14 |
| Labels, meta | 11-14 | 12 |
| Axis ticks | 11-16 | 12 |
| Pills, badges | 9-14 | 11-12 (house floor 11) |

  A screen uses 4-9 sizes, median 6. The cleanest scales in the study are 12/14/18/24, 12/14/16/30
  and 12/14/16/24.
- **Weights**: a median of 3 per screen; 10 of 23 never go above 600; 700 does one job per screen
  (money, the greeting or the title).
- **Figures**: tabular on every number in a table, in a KPI, or anywhere it updates. Check that the
  face really has tabular figures: `font-variant-numeric: tabular-nums` must change its digit widths;
  if it does not, take another face.
- **Case**: sentence case on about 19 of 23; uppercase content labels on 4 only. Tracking 0, and
  negative only on large type (-0.02em at 32px). Line height 20px for 14px text, 24px for 16px.
- **Dark** screens set body at 13px on three, and titles at 18-20/600 or 26-28/700.

### 9.2 Colour on light screens

- **Ground models**: white cards on an off-white ground (10 screens; #f3f5f7 to #fdfdfd, median
  #f9f9f9-#f9fafb); grey panels on white (6); a framed sheet (7).
- **The sidebar is never dark or saturated** (0 of 17): it matches the page, sits 1-3 levels off it,
  or is white on a grey page.
- **Lines in three steps.** Card edges median #eaeaea, the working band #e5e7eb-#ededed (about 1.2:1 on
  white). Row rules one step lighter, #efefef-#f4f4f4. Control borders one step darker, median
  #d1d5db. #cbcecd on cards reads heavy; #f5f5f5 disappears.
- **Text in three tiers.** Primary about #111 (range #000 to a tinted #272446). Secondary about #606060
  (#3a3b3b-#8e8e8e). Tertiary in the study runs #969696-#9f9d9b and placeholders #9ca3af-#b0b2b6,
  which is 2.5-3:1 on white and under the house floor. House rule: every tier that carries words
  reaches 4.5:1 on the surface it sits on, placeholders included; #6b6b6b is about the lightest grey
  that holds on white and on #f9fafb.
- **Accent placement**: on data only with greyscale chrome (4 screens), on actions only (2), or no
  accent at all (2). The primary button is usually near-black. Every screen with more than one accent
  family is flagged.
- **Status**: positive greens in the study run #16a34a-#40a670, which is under 4.5:1 as text; use a
  darker green such as #247b50 (5.2:1) for text, and the pale pairs for pills: positive #dcfae5 with
  #04250e, negative #ffedea with #831c1e, a notice #fffbeb with a #fde68a border and #92400e text, a
  count badge #c4242a-#dc3532.

### 9.3 Colour on dark screens

- **Ground**: #000 (3 screens), #111 (2), #171719 (1). No navy and no slate.
- **Surfaces**, three ways: a lighter step with no border (#111 on #000, nested panels at
  #222-#2a2a2a); the ground's own fill with a 1px line (#2e2e2e on #111); darker than the ground with
  a soft shadow (once: #131217 on #171719 with 0 12px 28px rgba(0,0,0,.2)).
- **Lines**: structural lines 22-31 levels above the ground (#1a1a1a on #000, #2e2e2e on #111,
  #222224 on #171719); interactive outlines brighter, #373737-#4c4c4c, so an outlined button reads as
  clickable without a fill.
- **Text**: #fff; secondary about #aaa (#82848a-#bbb); tertiary about #888. #4c4c4f (about 2:1) is
  flagged. The house floor of 4.5:1 holds here too. Two greys at most, and far enough apart to read
  as two: about #b4b4b4 for secondary text and #949494 for meta (in testing, #aaaaaa, #969696 and
  #bbbbbb on one screen read as one grey used three ways).
- **Accent** on data only, or on one selected state. Active nav by brightness. Emphasis without
  colour: an inverted white pill, a grey-filled button (#212121), an outline.
- **Status** as a hue on a dark tint of itself: #3fc07a on #172a1d; #44a282 on #1b2828. **When the
  accent is green or yellow-green, `--positive` is the accent** (a lime accent: lime on a dark lime
  tint), or the sign carries the meaning in neutral ink; a mint "+£3.81" beside a lime "Sold" read as
  two greens. The same holds on light screens.
- **Colour share** at or under 3% on all six.

### 9.4 Surfaces, radius, icons, spacing

- **Edges.** A 1px border separates surfaces on 12 of the 17 light screens; three use a fill step
  alone and one a shadow alone. A border or a shadow, never both. The shadows that exist are faint
  (alpha .06 or less at 0 2px 8px; once 0 1px 4px at .12). Real shadows are for what floats: a menu,
  a popover, a tooltip, a composer.
- **Radius is bimodal**: tight, 4-8px (9 screens, plus square cards on one), or soft, 16-24px (10);
  11-12px on only 3. Controls follow the cards: 6px with tight cards, full pills with soft ones.
  Nested radii step down (20, 10, 8, 5, 4). The inspector warns over three panel radii.
- **Group, don't box.** A set of KPIs is one card split by 1px dividers, or a bare strip with 48-52px
  vertical dividers.
- **Icons**: outline on 22 of 23; nav icons 14-20px (median 16) at about 1.5px; inline icons 12-14px;
  about 10px to the label; grey (#454545-#73737f in a light nav, white or #81858a-#999 on dark). Never
  in a saturated circle (0 of 23). A container, if any, is neutral (a #f0f0f0 disc) or codes a node
  type in a builder.
- **Spacing** on a 4px base: card gap 6-24px (median 16); card padding 12-34px (median 20); section
  gap 24-64px; control height 27-40px (median 34).

### 9.5 Default tokens

Each style in `library/app.json` carries its own tokens. These are the study's medians for anything a
style does not set, with the greys moved to pass 4.5:1.

The names match the sheet `draw.mjs --app` prints and `assets/app.css`, a neutral start set to these
defaults (shell, title row, panels, the divided KPI strip, tables, pills, controls, tabs, empty states
and the phone fold). `assets/charts.js` draws the charts of §6 in SVG from your data (line, bars,
diverging columns, ring, bar list, plan, bullet, timeline, cover matrix and time strip), with these
rules built in and its colours read from these tokens.

```css
:root {
  /* light */
  --ground: #f9fafb;  --surface: #ffffff;  --raised: #f9f9f9;  --active: #eeeeee;
  --border: #e8e8e8;  --rule: #f2f2f2;     --control: #d1d5db;
  --text: #111111;    --muted: #5f6368;    --faint: #6b6b6b;    /* placeholders use --faint */
  --primary: #1d1f20;                      /* near-black fill, white label */
  --accent: /* one hue, about 3% of pixels: the data, plus at most one control */;
  --positive: #247b50;  --pill-positive-bg: #dcfae5;  --pill-positive-ink: #04250e;
  --negative: #c4242a;  --pill-negative-bg: #ffedea;  --pill-negative-ink: #831c1e;
  --pill-warning-bg: #fffbeb;  --pill-warning-ink: #92400e;  /* notice border #fde68a */
  --grid: #e5e5e5;  --chart-span: 0.06;  /* the opacity of a shaded span in a chart */

  --radius-card: 8px;  --radius-control: 6px;  --radius-chip: 4px;  /* soft styles: 20 / 14 / 999 */
  --gap: 16px;  --card-pad: 20px;  --pad: 24px;
  --nav-row: 34px;  --control-height: 32px;  --row-height: 48px;
  --font: "Inter", system-ui, sans-serif;                            /* one grotesk */
  --fs-title: 24px;  --fs-section: 16px;  --fs-kpi: 24px;  --fs-body: 14px;  --fs-small: 12px;
}
:root[data-theme="dark"] {
  --ground: #000000;  --surface: #111111;  --raised: #222222;  --active: #222222;
  --border: #1a1a1a;  --rule: #161616;     --control: #444444;  /* on a #111 ground the border is #2e2e2e */
  --text: #ffffff;    --muted: #b4b4b4;    --faint: #949494;  /* two greys that read apart */
  --primary: #ffffff;                      /* inverted: white fill, black label */
  --positive: #3fc07a;  --pill-positive-bg: #172a1d;  --pill-positive-ink: #3fc07a;  /* a green accent replaces these */
  --negative: #e5566f;  --pill-negative-bg: #2c1a20;  --pill-negative-ink: #e5566f;  /* the study's #d4405d, lifted for 4.5:1 */
  --grid: #2b2b2b;  --chart-span: 0.12;
}
.num { font-variant-numeric: tabular-nums; }
td.num, th.num { text-align: right; }
```


## 10. Density

- The studied screens hold 6 to about 120 data points, median about 25.
  - **Sparse** (6-25): homes, settings, a single object. Card padding 20-24px, rows 56-92px, body
    14-16px.
  - **Medium** (25-50): analytics overviews, finance homes, list screens. Rows 44-56px, padding
    16-24px.
  - **Dense** (about 120, one screen): research and monitoring, read in long sessions. A 13px body,
    28px list rows and 42px table rows, framed with generous air: 100px gutters, 64px between bands,
    32px of card padding.
- Density is three settings moved together: row pitch, padding and type size. Do not shrink the type
  and keep the padding.
- **Placed space reads as calm; leftover space reads as unfinished.** In the study, emptiness looks
  deliberate when it comes from a fixed grid and repeated gaps, and accidental when it comes from a
  grid that does not fit the data, a column that is empty in every row (a 300px dead band), a mostly
  empty top bar, or a card stretched to its neighbour's height.
- **Design for the data the account has as well as the data it will have.** Several studied screens
  were built for a busy account and show a new one: a 673x240 plot for a line that sits on zero for
  two thirds of its length. Keep the honest drawing, but size the block to the question, not to the
  data the product hopes for.


## 11. Empty, zero, loading and error states

- **A real zero** is printed in the normal style: "$0", "0", "0%", "0.00%", "0% (0)" (10 screens). A
  zero may be dimmed to grey when the caption beside it becomes the next step ("$0.00", then
  "Automate your savings with up to 3.50% APY").
- **Missing or not applicable** is a grey dash: an em dash, a "-", a 6x2px mark. Never a dash at full
  value size: "--" at 24px reads as loading (flagged).
- **Counts follow the view, and so does the frame.** Counts shown in scope (tabs, KPI tiles, "12
  open") are computed from the rows in the current view or filter and recomputed on every switch. A
  filtered block shrinks to its rows and its row-mate aligns to the top, or the block keeps a fixed
  number of rows with one empty-state sentence; each view's subline is computed for that view.
- **An empty side card fills with the reference data**, not one dashed box in 400px of white: before
  anything has sold out, last Sunday's sell-out times as a quiet list under "Nothing has sold out yet
  today".
- **Red is a signal, not a texture**: one red mark per object at most, on the overdue or failing fact;
  thirteen red strings on one board read as noise, and a list of deals needing attention does not
  repeat the same flags on the board beside it.
- **An empty section keeps its frame and its header** and adds one sentence spanning the block (in a
  row grid, `grid-column: 1 / -1`; a message squeezed into one 34px column broke word by word in
  testing): a 1px dashed box, radius
  8, about 38px tall ("No channel usage in this range."), or a bordered box with an add link
  ("+ Liability account"). In a builder, an empty slot is a dashed 1px box on the canvas colour.
- **An empty chart is drawn**: the zero line, missing bars for empty periods, no padded range, no
  picture.
- **First run** (the whole screen empty): keep the frame and the title, and put the first action where
  the data will appear, with a setup progress at its true percentage if there are steps (one screen
  shows "Complete your setup" at 67%; another a four-cell getting-started strip above its tables).
- **Loading** (house rule; not in the study): the final layout with each value replaced by a flat grey
  bar at its real size (a 24px value gets a 24px-tall bar; rows keep their pitch), labels and headers
  shown at once, no shimmer gradient, and no shift of the layout when the data lands. A refresh of
  data already on screen keeps the old values and updates the freshness stamp.
- **Error** (house rule; not in the study): inside the block that failed, never as a full-screen
  banner. One sentence saying what failed and when the data was last good ("Couldn't load
  deployments. Last updated 09:14."), and a Retry text button. The negative colour only on a small
  icon or in the pill pair.
- **Stale or static data**: a freshness stamp with a refresh button (6 screens). A snapshot that
  cannot refresh says so in one quiet notice (once: #fffbeb, a 1px #fde68a border, 12px #92400e
  text). A notice tint is never a ground; the inspector reads a pale amber ground as cream.
- **Limits and usage**: a bar at the true ratio with both ends labelled ("12.7k of 20.0k").
