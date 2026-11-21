# App Screens (Dashboards, Admin & Ferramentas): 1. When this applies | 2. The run for an app screen

## 1. When this applies

An app screen is worked in rather than read. This chapter covers:

- dashboards and overviews: a seller's day, a project's health, a publication's growth;
- admin and back office: members, orders, events, a catalogue;
- analytics and reports, including a generated report with no app around it;
- settings and billing;
- list screens to work through: inboxes, queues, tables with filters;
- wallets and finance homes;
- builders and editors: flow, form and page builders, canvases;
- the detail page of one object: an event, a deployment, a customer.

A product site that shows its interface is a page; the interface fragments on it follow these rules
for their insides (mark each fragment's root with `data-ui`). When a request holds both, build each
with its own run and share one palette and one typeface.

The study is 23 desktop screens. It has no phone screens, no loading or error states, one settings
page, no inbox and no dense operations table (the densest screen shows about 120 data points). Where a
rule below goes past the study, it says **house rule**.


## 2. The run for an app screen

Do these in order. The first three steps decide whether the screen is any good.

### 2.1 Inventory the data and the jobs

The page run inventories the subject's world; an app screen inventories its data. Write in your notes,
in 8 to 12 lines:

- **the objects** the screen shows (deployments, invoices, members, events, conversations) and their
  fields, with units;
- **realistic magnitudes**: how many objects, a typical amount, the range of a rate, how values move
  over a day, a month, a year, and for a new account how small they really are;
- **the people**: who opens this screen, how often (a glance once a day, or an eight-hour session),
  on what device;
- **the jobs**: what they do next from here (approve, reply, pay, ship, invite), and which job comes
  up most;
- **the product's own things**: its name and mark, the workspace or account it is scoped to, the people
  in it (two partners, a team of six, the club's members), and the objects people recognise by sight
  (product photographs in a shop, cover art in a media tool, a map of the route). These are what make
  a screen belong to this product instead of to a template; plan where each one appears.

Then write the data itself: a small dataset in a JSON or JS file that the screen renders from, with
believable names, amounts that add up to their totals, dates in order and a unit on every figure.
Totals are computed from the rows, never typed in separately. Small numbers stay small: the studied
screens show new accounts with 1, 6 or 9 of something, drawn honestly at their real size. Write the
figures that must agree as assertions in the data file (`console.assert(sold - cancelled === rsvps)`,
the bins sum to the total, the parts to the whole) and read the console: in testing, a ticket table
that did not reconcile with its own KPI cost a judge's trust in the whole screen. Checks that need
computed values (allowance after a request, cover per day) go in the script that computes them.

**Data that tells the truth** (house rules, from testing; judges checked every one of these):

- **A fact shown twice is one variable.** A time window, a total or a state that appears in two cards
  (the battery full 13:30-16:30 in the KPI label, the shaded span and the battery card) is one value in
  the data file, and the copy and the chart annotation are both built from it. Two cards that
  disagree by half an hour cost more trust than a missing card.
- **Totals and deltas come from the parts as shown.** Sum the rounded pennies the screen displays,
  never round the unrounded total separately: £21.68 + £8.34 − £3.81 is £26.21, and a screen that
  says £26.22 is caught. A change is the difference of the two values on screen (£5.28 against
  £5.22 is +£0.06, not +£0.07).
- **Every relative figure names its baseline** in the same phrase: "3 h 40 m before close", "45 m
  earlier than last Sunday", "+5 on the usual Monday". "Early", "up" or a bare "+5" next to another
  time or figure reads as measured against that one.
- **One name per time.** Shops close at 15:00 and the tills are cashed up at 15:12; the header and
  the card use the same words for the same moment, and an error state rewrites the status line.
- **If a caption has to say which bars are which, encode it in the chart instead**: a marked period in
  a second tone with its own legend entry, a signed axis, a label on the mark.

### 2.2 Name the screen's one question

Every screen answers one question first: "Did today's sales come in?", "Which deploy broke?", "Who is
waiting for a reply?", "How much of this month's plan is left?". Write it in one line. It decides
three things:

- **what is biggest.** In the study the largest block is always the one that carries the screen's
  question, whatever form it takes (a chart, a plan, a ring, a list). The same holds for figures:
  the largest figure on the screen answers the question the title row's sentence answers. In testing,
  an 88% sun ratio at 32px out-shouted the 24px charging window the title led with;
- **what comes first** in the reading order;
- **what is left out.** The studied settings page shows three usage numbers and links to the
  analytics screen instead of drawing a chart; four screens draw no chart at all because a few
  numbers say it.

Then name the screen's **one finding**: the fact in today's data that most needs attention ("9 no-shows
while 8 people waited for a place", "the 23:28 deploy doubled the error rate", "eating out is £36 over").
Put it where it is read first, as the line under the title or the subline of the headline figure,
next to the action it drives. In testing, the finding that mattered sat in a 14px caption at the
bottom of a card and the screen read as flat.

**Do not rebuild a studied screen.** When the product is of the same kind as a screen in the study (a
finance home, a deploy overview), its arrangement is the trap: judges recognised the copies at once.
Take the structure from the product's own things instead: for a couple's budget, Mia, Joint and Tom
as three columns running through accounts, plan and bills; for a running club, the pace groups.

Then list the screen's blocks as the answers to its next questions, one line each, the way the page
run lists claims. A block with no question is deleted. This is how you avoid the stock order of KPI
row, big chart, two small charts, table.

Three more lines, each tested:

- **Everything the brief names is on the first screen.** At 1440×900, every block the brief asks for
  shows its header and its first rows or its figure. Size the headline block to the question (about
  200-360px tall), cap long lists at 4-6 rows with "View all", and put time-sensitive blocks (bills
  due, SLAs running out, a failed deploy) before long tables. A chart whose line is flat for most of
  the window does not get the full width: give it two-thirds and put the next answer beside it.
- **The most frequent job is one click away.** Name it ("pack the orders due today", "reply to the
  oldest breach", "redeploy the failed build") and put its control where the answer shows: a primary
  button in the title row, an action on the row that needs it, a "View logs" on the failed item. A
  screen with no control for its main job reads as a report, not as a tool.
- **Show the evidence beside the answer.** A judge trusts "Error rate 0.28%" more with its spike
  annotated ("peaked at 3.9% after the 23:28 deploy, reverted") than with the number alone. One line
  of explanation on the event that matters is worth more than a second chart.

### 2.3 Choose a style

```bash
node <skill>/scripts/draw.mjs --app --kind <kind> --brief "<one line about the product>" \
  --screens <screens> [--theme light|dark] [--keep palette,type] --options 3
```

This deals up to three styles from `library/app.json` (fewer when only two suit the kind and the
theme). `draw.mjs --app --list kinds` (or `styles`, `screens` or `signatures`) prints the choices; the
screens are `overview`, `analytics`, `list`, `detail`, `settings`, `wallet`,
`builder`, `inbox`, `home` and `report`. The library holds seven styles, each distilled from the
studied screens that share its move:

| Style | Theme | For | The move |
| --- | --- | --- | --- |
| `achromatic-ledger` | light | money homes, reports, settings with usage | No colour in the chrome; charts in ink; one small signal where a figure changed |
| `framed-sheet` | light | B2B analytics, developer platforms, builders | One tinted L-frame; the page on a white sheet inset 8px, no shadow |
| `accent-ladder` | light | creator and small-business admin with plans | The full hue on small marks only; its pale tints on every area |
| `editorial-greeting` | light | team and personal homes | The greeting as the h1 in a centred 12-column column; every figure at regular weight |
| `pastel-consumer` | light | wallets, budgeting | Pale same-hue tiles under one large radius; quiet money polarity |
| `true-black-flat` | dark | community, events, media | Elevation by lightness alone; colour only on data |
| `data-terminal` | dark | markets, monitoring | Every selection is the same 1px accent line; signs, not colour, on numbers |

Choose by how the product is used (long sessions or a quick look, money or media, a team or one
person, day or night), not by what is most familiar, and write one line on why. Then deal the sheet:

```bash
node <skill>/scripts/draw.mjs --app <the same arguments, without --options> --style <id>
```

The sheet gives the style's tokens and type, its shell and one pattern for each screen you named.
Keep the style's one move intact and take every other value from the defaults in this file. Redraw
(`--redraw style | shell | screen:<name>`) only for a reason you can state: it contradicts the brand,
or the product is used in a way the style does not suit. With an existing brand, pass
`--keep palette,type`, map its colours onto the roles in §9 and keep the style's colour budget.

**Then choose its face, before any markup.** The sheet's "Its face" list gives two or three ways this
style takes a face from the brief, and "Signature elements" lists the library's elements whose words
appear in the brief (a power flow for an energy home, a sell-out strip for a bakery, a cover matrix
and a kind-encoded timeline for a leave planner). Write in your notes, next to the screen's question:
the face you chose, the signature element (from the sheet, or your own built from the product's
things), and where each appears on the first screen. A style dealt to two products must not give them
the same face: in four rounds, the screens that skipped this step were scored as the same kit.

### 2.4 Build the shell

Build the frame first, empty: the sidebar or rail, the top bar if the shell has one, the canvas with
its gutters, the title row (§3 and §4). `<skill>/assets/app.css` is a neutral start for all of it:
copy it into the project and put the sheet's tokens in its `:root`. Look at it at 1440 and at 390 before any data goes in. Do the
grid arithmetic now and write it in a comment: the column count, the gutter, and the sum that proves
the cards land on the canvas edges.

### 2.5 Put in the data

Render every block from the dataset; draw the charts from it too, with `<skill>/assets/charts.js`
(`Charts.line`, `Charts.bars`, `Charts.diverging`, `Charts.ring`, `Charts.barList`, `Charts.plan`,
`Charts.bullet`, `Charts.timeline`, `Charts.matrix`, `Charts.timeStrip`; the file's header lists their
options) or your own SVG to the rules of §6, never a chart library's defaults and never a picture of a
chart. The newer helpers return `{ svg, legend }`: put that legend in the card's header rather than
drawing your own, so each swatch is the mark it explains. Format every figure by §7.4: separators, fixed decimals per
metric, a sign on every change, units as smaller grey suffixes, tabular figures, right alignment in
columns. Use the product's own words for labels. No placeholder data: the inspector fails lorem ipsum,
Acme, John Doe and their kind. Proof is not invented here either: no vanity totals, no "+12%" on an
account that is a week old.

### 2.6 Build the states

For every block, build its empty, zero, loading and error state (§11); for every row and control, its
hover, selected, focus and disabled state. Look at each one in the browser. A screen that only works
with full data is half built.

### 2.7 The check

```bash
node <skill>/scripts/lint.mjs --app <source files or folder>
node <skill>/scripts/inspect.mjs --app <url or path/to/index.html>
```

A sheet dealt with `--app` switches both tools to the app rules by itself. The inspector opens the
screen at 1440, 768 and 390 and measures what this chapter asks for: an h1 (and reports it as the
screen's hero); a sidebar that folds on the phone; the canvas used to its right edge; panel shadows
and borders; the number of corner radii; cards in one row that end apart, where a column of cards
stacked with the gutter counts as one block (`ragged-row`); a blank band inside a card of over 40px,
or over 64px before a new section's heading (`panel-void`); icons in tinted squares; numeric alignment and tabular figures; chart hues; colour
share, and a screen with charts but no hue on its data (`no-data-hue`); placeholder data; text under
11px; and the page rules that still hold (contrast, gradients, the banned palettes, emoji). Fix every
`FAIL`. Treat each `WARN` as wrong unless you can defend it to a designer in one sentence.

Then look at the screenshots, every width, and answer these in writing. This is the critique for an
app screen: the caps in `critique.md` for pictures, motion and the page's live element are page rules
and do not apply here.

1. Is the screen's question answered by the biggest thing on it, and is that read first? Is the
   largest figure the one that answers the title row's sentence?
2. Does every block share the screen's edges? Is there a dead strip on one side, a card stopping
   short, an orphan cell, a stretched card with a blank band (a legend pinned to its foot, four rows
   in a card kept at its neighbour's height)?
3. Is colour only on data, on status and on the one primary action, and does the main data element
   carry the one hue? Does the face you chose show on the first screen?
4. Do the numbers add up, and do they line up digit for digit? List every fact that appears twice
   and check that the copies agree; recompute each total and change from the values as displayed;
   check that every relative figure names what it is against.
5. Does every zero look like a zero and every missing value like a dash? Does every count badge sit
   on a queue that needs action, with its noun clear from the label?
6. Does every legend swatch match the mark it explains, and does any caption have to say which bars
   are which (then encode it in the chart)? Does any label collide with a line or another label?
7. On the phone, is the navigation folded away, and does each block still answer its question?

Fix the worst three, inspect again, look again. Three rounds at most. Judge the pictures: if a problem
shows in a screenshot, it is real, whatever the code says.

### 2.8 Report

Tell the user, briefly: the style dealt (name and seed) and any redraws with their reasons; the face
you chose and the signature element; each screen's one question; any check you allowed and why (for example `--allow icon-chips` for node-type
tiles in a builder); and the sample data that must be replaced with real data, listed so it can be
found.

App screens have no motion floor. Motion is feedback: press, hover, focus, a menu or a sheet opening,
a row arriving. Nothing on the screen performs an entrance (house rule).
