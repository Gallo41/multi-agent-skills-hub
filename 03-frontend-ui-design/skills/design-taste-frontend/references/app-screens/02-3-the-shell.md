# App Screens (Dashboards, Admin & Ferramentas): 3. The shell | 4. The canvas and the page title | 5. KPIs

## 3. The shell

### 3.1 Five archetypes

| Shell | In the study | What it is |
| --- | --- | --- |
| **Open plane** | 5 screens | A labelled sidebar on the page ground (or within 1-2% of it), separated by nothing or by one 1px hairline. No top bar: the header and the cards sit on the ground. The canvas is fluid with a 24-64px gutter, or a centred column. |
| **Tinted frame, white sheet** | 8 screens | Sidebar and top bar share one tinted ground (#f6f6f6-#f9fbfc) with no rule between them; the page sits on a white sheet inset 8px from the window's right and bottom edges, radius 10-16 (median 16), a 1px #eaeaea-#ededed edge and no shadow. Variants: a flush L-frame, the inset sheet, and floating panels inset 8-12px with a 12px gap. |
| **Ruled T-frame** | 4 screens | A 210-240px sidebar and a 64px top bar on one ground, divided only by 1px rules. The workspace switcher sits at the top bar's right end behind a full-height divider. Three of the four are dark. |
| **Icon rail** | 3 screens | An unlabelled rail 50-60px wide (median 55); 15-18px icons on a 34-49px pitch; the active item marked by colour or by a 2% tint band; groups split by 20px hairlines. It saves about 180px of width. |
| **No sidebar** | 3 screens | A 46-48px top bar over a centred 1088-1208px column with 152-212px gutters; the logo sits on the column's left edge. For reports, viewers and products with few destinations. |

All six dark screens use one ground everywhere, divided by 1px rules of #161616-#232323 or by nothing.
No screen in the study puts a dark or saturated sidebar against a light canvas (0 of 17).

### 3.2 Sidebar

- **Width.** Labelled sidebars run 210-292px; the median is 230 and most sit at 224-240. One floating
  sidebar card appears (280px wide, 40px in from the window edge).
- **Rows.** A 32px hit area on a 34px pitch is the mode (7 screens); the roomy versions run 40-52px on
  a 42-60px pitch. Icons are 14-20px, median 16, outline at about 1.5px stroke on 14 of 16 screens.
  Labels are 14px at 400 on 12 of 16, in ink or in a grey of #4b4d4f-#63666e, about 8-10px after the
  icon, with the label column at x 36-48.
- **Active item.** A neutral grey pill with the label unchanged, on 8 screens: radius 4-16 (median 8),
  inset 8-14px from the sidebar's edges, a fill of about #e9e9e9-#ededed. On dark, brightness alone:
  the label goes from #bbb to #fff (3 screens). Colour alone on the icon or label (3, all of them
  rails or a floating card). A tinted accent fill (3). A left accent bar once in 23. The weight
  changes on 2. Default: the grey pill on light, brightness on dark.
- **Groups.** Sentence-case grey labels at 12-13px, never uppercase (9 screens), with 22-56px of air
  above and 13-33px to the first item; or hairlines instead (4). Utilities such as settings and help
  pushed to the bottom (5).
- **Top and bottom.** The workspace or account switcher at the top of the sidebar (7 screens), at its
  bottom (2), or in the top bar. The bottom holds a user row (8) or one upsell (8); one of those
  upsells is a filled accent button.
- **The product is named** (house rule, from testing). The product's mark and name sit at the top of
  the sidebar or rail, and the scope (workspace, team, project, account) is shown as a switcher or a
  breadcrumb. A screen whose product cannot be named from the screenshot reads as a template.
- **Counts on nav items** (house rule, from testing). A count appears only on a queue that needs
  action, and its noun is clear from the label: "Requests 5", "Price changes 3". A bare "Range and
  prices 9" left the judge asking nine of what.
- **Labels by default.** A labelled sidebar unless the product has five destinations or fewer and the
  screen needs the width (a research or monitoring view); an icon rail always carries the product's
  mark at the top, a tooltip and an accessible name on every icon. Nav items are other screens, never
  anchors into the current page (a sidebar that scroll-spies one long page was marked down twice).

### 3.3 Top bar

14 of 23 screens have one; the default is none. Heights fall into two groups: 44-51px (median about
48) on light chrome, and 64px, usually with a 1px rule. A top bar must hold something real: search,
the workspace switcher, or the page or object name. Search sits centred on the window at 548x32 with
a shortcut hint (2 screens), or at 457-537x36 in a no-sidebar bar. The right cluster is inset 24-46px
from the edge. Two screens leave about 1070px of their top bar blank; both are flagged for it.

### 3.4 Right rail and pinned columns

One screen has a right rail: a fixed 384px column in a `1fr 384px` grid with a 24px gap, starting
level with the first card rather than with the title, its section headings outside the cards and 8px
above each. Use one only for a stable secondary stream: recent items, the details of the selected
object, share links. A pinned left column appears once: a 306px accounts card at the viewport height
minus 72px, so net worth stays in view while the rest of the screen scrolls.

Five screens float a button (24-56px), and one of those buttons covers the content it sits on and is
flagged. House rule: no floating button unless it is the screen's one primary action and covers
nothing at any width.


## 4. The canvas and the page title

### 4.1 Width and gutters

- **Fluid** (14 screens): side padding 17-64px, median 29, with 24 and 36-40 the common values;
  content 1120-1312px wide, median about 1204.
- **Centred** (8 screens): 624, 864, 1088, 1100, 1152, about 1190 and 1208px; median about 1126.
  Data pages land at 1100-1250 either way. Only two personal homes go narrow (624 and 864), and both
  are flagged for wasting the width.
- **Top offset**, from the canvas top to the title: 20-88px, median about 36. Tools sit at 20-36;
  greeting homes at 50-88.
- **One gutter.** Use one gap value horizontally and vertically. Mixed gutters (12 against 16, 20
  against 24, 16 against 12) are flagged on 8 screens.

### 4.2 One left edge, one right edge

The strongest screens run a single left edge from the header to the last row. One indents its page
header by the cards' 24px padding, so the title, the card titles, the numbers and the chart all start
on one line. Row rules may bleed 7-8px past the text column while the text stays on it.

The grid's arithmetic closes: 3 x 372 + 2 x 17 = 2 x 568 + 16 = 1152; 12 x 77 + 11 x 16 = 1100;
4 x 144 + 3 x 16 = 624; a second-row card exactly as wide as the two cards above it
(251 + 24 + 515). Write your sum down.

Failures to avoid, all from the study: cards stopping 120px short of the sheet's right edge; a 0px
right gutter against a 40px left one; a column centred on the window instead of on the area beside
the sidebar (204px on its left, 444px on its right); a medallion 108px off the column's axis. The
inspector warns when the content stops well short of the right edge.

**Dead space from a grid that does not fit the data** is the commonest failure in the study (10
screens): four KPI tiles in a three-column grid, orphaning the fourth; one card alone in a
three-column row beside 810px of nothing; a card stretched to its neighbour's height with 250px of
blank under its legend. Choose the column count from the number of items, let a lone card span, and
do not stretch a card's frame over empty space.

**Cards that share a row share a bottom edge.** In testing, rows whose cards stopped 26-190px apart
were marked down every time, by judges and by the inspector (`ragged-row`). Balance the row by its
content first: move a list's rows so the two columns hold the same number, cap both lists at the same
count, or pair blocks of similar height. Two cards stacked in one column beside a tall card count as
one block: they balance when the column ends level. Only when the contents cannot balance, stack the
two blocks, or let the shorter card fill the row height with its content top-aligned and the footer
action (a "View all", a total) pinned to its bottom so the extra height is not a hole.

**A stretched card stretches only when it has content to fill.** Only an action or a total may be
pinned to a stretched card's foot; a legend or a note stays directly under its chart. In testing, a
cover card stretched to its neighbour with its legend pinned to the bottom left 60px of blank under
the last row, and a sell-out card left 45px above its links. When the content is short, let the card
keep its own height (`align-items: start` on the row), move its footer link into its header, or give
the row a block of similar height. A filtered block shrinks to its rows, or keeps a fixed number of
rows with one sentence in the empty ones; four rows over 270px of empty card is a hole. The inspector
warns on a blank band of over 40px inside a card (`panel-void`).

**Narrow blocks do not span the canvas.** A table of five columns or fewer, or a list of six rows or
fewer, runs to about 760px at 1440 and pairs with the next block; stretched to 1300px it leaves
400-600px voids between a name and its first figure.

### 4.3 The title

- **Every screen has one h1**; the inspector fails a screen without one. 14 screens set it in the
  canvas at 18-48px, median and mode 24, at 600-700 (700 on 8). The rest have nothing over 16px: a
  breadcrumb or the top bar names the page. Then the breadcrumb's last item is the h1, at 16px, and
  the screen's name is still the first thing read.
- **A noun, not a greeting**: "Analytics", "Overview", the project's or the object's name. 3 of 23
  greet, and one adds an emoji, which goes. A greeting suits a personal or team home only.
- **An optional second line**: one 14-16px grey sentence about the data or the object (the finding,
  the period, the scope), never about the interface ("the filters narrow every block…", "this page
  shows…" read as instructions, not a product), or a 12px line
  naming the data's source.
- **Right of the title**: actions only when they are real (10 screens); otherwise nothing. A freshness
  stamp ("Updated Jul 27, 4:09 PM", with a refresh button) on 6.
- **The primary action.** 12 of 23 have no filled primary button; 5 make it near-black (#1d1f20,
  #1f2937) or inverted white on dark; 4 fill it with the brand hue. One primary per screen.

### 4.4 Tabs, filters and the date range

- **The date range** at page level (7 screens) or on each card (7), never both. A card that states its
  own period puts it in its header, right-aligned, in grey.
- **Underline tabs** (8 screens) always sit on a full-width 1px rule; the indicator is 1-4px (median
  2), as wide as the label or running 8-11px past it.
- **A segmented track** once: 48px, #f3f4f6, a white 36px active pill, and the date select inside its
  right end, so tabs and range read as one row. A segmented control is as wide as its options, and full
  width only below about 480px: three options spread across a 680px tablet card read as a progress bar.
- **Control height** in title and filter rows: 28-40px, median 34, clustering at 32 and 36.
- **Order**: scope on the left (the date first, then the filters), utility and refresh on the right.
- **Compound filters** that read as a sentence ("Date | Jun 14 - Jul 13 | Daily"), 28px tall and 8px
  apart, once.
- **To the first card**: 13-64px, median 24.


## 5. KPIs

- **No tile of its own.** 11 of the 20 screens with headline numbers give a KPI no tile: bare text on
  the page or on a card (5), or one container split by 1px hairlines (6). 9 use one card per KPI,
  61-147px tall (median about 108). The default is one container split by 1px dividers into equal
  columns. 7 screens have no KPI row at all and put each headline number in the card that explains
  it, which is often better.
- **Count.** 1-6 per row, median 3-4. The count matches the grid: four KPIs get four columns.
- **Size.** Values 16-40px, median 26, mode 24. Values in their own tile run larger (median 30) than
  in a shared strip (median 24). Nothing at 48px or over. Labels 12-16px, median 14; the value is
  about 1.7 times the label.
- **Weight.** An even split: 400 on 8 screens, 600 on 6, 700-800 on 6. A large number at regular
  weight under a semibold label is the common pattern. Bold for money only.
- **Order.** Label above the value on 14 screens; labels grey (#6b6b6b-#aaa) on 13; sentence case.
- **Nothing else.** No icon in a coloured circle (0 of 23), no sparkline (0 of 23), no tinted tile.
  An info icon beside the label is fine (5 screens). Units are a smaller grey suffix: "5 mins" at 24
  over 14, "2 m 24 s", "5 /10".
- **The answer figure leads.** When one figure is the screen's answer (a balance, net worth, the
  portfolio's value), it is 30-36px and at least 1.3 times its sibling figures (those at 18-24px). In
  testing, a 24px portfolio value beside two 24px figures left the screen without a lead. No other
  figure on the screen is larger: the biggest number answers the title row's sentence, so a
  secondary ratio in another card stays at the siblings' size.
- **One figure, one place.** A figure shown in the strip is not repeated in a legend beside it, and a
  KPI strip whose every cell names a panel below (RSVPs, then an RSVPs panel) is dropped: lead each
  panel with its own number instead.
- **A second job.** KPIs may be the chart's series tabs or the list's type filter (the selected card
  takes a 1.5px border). As tabs, the selected one carries a 2px rule or the active fill and an ink
  label; the others keep a grey label and their value in ink, at 400 against the selected one's 500.
  A grey value reads as disabled: in testing, three shops' takings set in grey because they were tabs
  read as secondary, though they were the brief's first ask. When the tabs are the per-entity
  breakdown the brief asks for, grey nothing and let the rule alone mark the selection. On a phone the
  tabs become a 2-up grid with the selected cell filled, or a row that scrolls sideways; never an
  underline floating inside the grid (`app.css` does both).

### Deltas

- Optional: 9 of the 20 KPI screens show one; 11 do not.
- 10-15px (median 14), never larger than the label. Text or a small glyph on 6 screens; a pale pill
  on 3.
- **The window in words**: "vs prior 30 days", "in the last 90 days", "from 0 (last 4 weeks)" (7 of
  the 9).
- **Colour only the number**, or set the whole delta in grey.
- **Colour says good or bad, not up or down** (house rule, from testing). Every metric has a good
  direction: latency, error rate, cost, churn and time-to-reply are better when they fall. A change
  in the bad direction puts `--negative` on the number (or a small down-pointing glyph in that
  colour); a change in the good direction is `--positive` or grey. A judge read a 2.5× rise in errors
  set in the same grey as a rise in visits as hiding the screen's only bad news.
- **Zero or undefined change is grey.** The study's commonest KPI failure is a zero or undefined change
  shown as a signal: three identical green "up 100%" pills grown from zero, a ">999%", a bold red
  "0.00%", a green "+0". When the prior period was zero, write "+4 (new)"; when there is nothing to
  compare, a short grey dash where the delta would be.
