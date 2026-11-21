# App Screens (Dashboards, Admin & Ferramentas): 6. Charts | 7. Tables and lists

## 6. Charts

### 6.1 Which chart for which question

| Question | Form | In the study |
| --- | --- | --- |
| Is it moving over time? | One line; an area only with a fill of 15% or less | 9 screens |
| How much per period? | Columns with square corners | 3 |
| How is it distributed? | A histogram with equal bins | 1 (its unequal bins are flagged) |
| Who ranks? | A sorted horizontal bar list, or the row's fill as the bar in a one-figure list | 3 |
| What share? | A thin ring, or a 100% stacked bar with 2px seams; five parts at most | 5 |
| How far to the target? | A progress bar, both ends labelled, the fill the true ratio | 4 |
| How much of the plan is used? | A track as long as the plan, the spent part filled, what is already committed as a lighter segment, an overrun past the track's end in the negative colour (`Charts.plan`) | house rule |
| Has it drifted from its target? | One row per part: the current share as a bar with a 1px tick at the target (`Charts.bullet`); never two stacked bars to compare | house rule |
| Where? | A map with a list beside it; the list carries the magnitudes | 1 |
| Per period, and the running total? | The two side by side at equal width, with the same dates | 1 |
| Which way did it flow, and how much? | Columns above and below one zero line on one scale, the axis signed and captioned on each side ("Sold" above, "Bought" below), a marked period in a second tone with its own legend entry (`Charts.diverging`) | house rule |
| Who is away when? | A timeline of people by day, each kind of booking its own mark (`Charts.timeline`) | house rule |
| Is there enough cover? | A team-by-day matrix of slack against the minimum (+2, +1, 0, −1), one hue ramping toward the negative colour, the headcount on hover (`Charts.matrix`) | house rule |
| When in the day, against last time? | One row per item on a shared opening-to-closing axis: a 2px grey track, an ink dot for today, a hollow tick for the comparison day (`Charts.timeStrip`) | house rule |

Three more, from testing:

- **The pair of per-period bars and the running total is used once per screen**, and only when the
  total crosses a line that matters (capacity, a target). Three such pairs in six charts read as one
  pattern stamped out.
- **A series that is flat except for one event** gets at most two-thirds of the width and about 140px of
  height, or a range capped at about twice its reference line with the off-scale peak labelled
  (`Charts.line({ max })`). A full-width plot that is 85% empty was the biggest block on a first
  screen and was marked down.
- **A forecast is not a fact**: after today the line is dashed and the end value is labelled
  (`Charts.line({ today, endLabel })`), with the gap to the target bracketed when there is one.
- **What the brief asks to see over time is drawn on the first screen.** KPI cells may switch the chart
  only between metrics the brief did not name.

When there are only a few numbers, draw no chart: four screens skip it, and the settings page links
to the analytics screen with "View more".

### 6.2 One question, one series

One series per chart is the norm; three is the most any screen draws. To show another metric, switch
it with a control (a segmented control, a dropdown, the KPIs as tabs) instead of overlaying lines.
Plots run 112-264px tall (median about 195) and 316-1136px wide (median about 570), an aspect of 1.8
to 5.2.

### 6.3 Axes and gridlines

- **Gridlines** run horizontally only on 7 of the 12 cartesian charts, both ways on 3, and not at all
  on 2. Use 3-5 (the study runs 3-7, median 4-5): 1px, solid, about #e5e5e5 on light (range
  #cfcfd2-#f2f2f2), #2b2b2b on #111. Dashed lines are allowed in chart grids (4 screens: 3/3, 4/4,
  3/2.5) and nowhere else on the screen.
- **No y-axis line.** The baseline is the one heavier line (2px on two screens, 1px on one); full axes
  on one.
- **Y ticks**: 4-7, median 5, at 11-16px (median 12) in grey (#5f5f5f-#6c6c6c), on the left (8
  screens) or the right (2). Round, even steps (0/5/10/15%; 0-600 by 150), the top tick above the
  maximum, integers for counts, and zero as the baseline for bars and counts.
- **Never without a scale.** Two screens draw no y-scale and show magnitude only on hover; both are
  flagged. So are uneven ticks (0/3/6/10), a 0.8 tick on a count, a top tick equal to the maximum so
  the line hits the plot's edge, and a cumulative axis that starts at 1.
- **Axis text no larger than the data.** 15-16px ticks beside 14px values are flagged as louder than
  the numbers.
- **X labels**: 4-8 per chart, flat, never rotated (40 degrees is flagged), the first and last pulled
  inside the plot, on one step all the way: a forced closing label after 14:00 on a 90-minute step
  left a short last gap that a judge measured. Choose a step that lands on the end (hourly from 08:00
  to 15:00) or leave the end unlabelled. Labelling only the two ends hides when things happened. Irregular dates on a
  categorical axis are flagged: time goes on a time scale.

### 6.4 Marks

- **Lines** 1-3px, median 2, in straight segments. Four screens smooth their lines, and one smoothed
  curve invents values between daily totals (flagged), so draw straight segments. No point markers,
  except a hover dot (8px on one screen).
- **Fill**: none on 7 of 10 time charts. At most a flat tint of about 14%, or a fade from the line to
  transparent over 150-200px.
- **Bars** have square corners (4 screens), or at most a 4px top radius with a square bottom on the
  baseline. Stacked segments are split by a 1-2px seam.
- **Colour.** One hue per chart. The accent touches only data on 8 screens, and data ink is under 3%
  of the pixels on most. Neutral series are fine and often better: a near-black line that turns pale
  grey after the cursor; a white line against a red one; signs instead of colour ("+$24,000,000").
  But the one hue, when the style has one, goes on the screen's main data element (today's series,
  the booked bars, the current period, the margin that breaks), not on a secondary chart or a delta:
  in testing, an all-ink screen with no hue on any of its data read as a kit.
  One subject keeps one hue across the screen: the same subscribers drawn pink in one chart and indigo
  in the next is flagged. Unrelated hues on one screen (three, five) are flagged every time. Status
  colours are for status. The inspector warns over four hues and fails over six.
- **Legends.** None for a single series (9 charts): the title or the dropdown names it. Otherwise five
  items at most, as a 5-8px dot with a 12-14px grey label in the card's header, or as a small table
  (dot, name, value, change) that makes the legend carry data. Never list a series that has no data
  (flagged). Every swatch is the mark it explains, scaled down: the legend dot is the line's colour,
  a hatched bar's swatch is hatched. A swatch drawn separately from the mark drifted from it in testing
  (a black outline with a red edge explaining a red outline); the helpers return the legend built from
  the same style object as the marks.
- **Rings** only for three to five parts of a whole that are not already listed beside them (a ring
  redrawing the spent, due and left figures of the tile next to it was marked redundant). Never
  labelled on the slices; the total sits in the centre or beside the ring. The
  screens noted for their rings use thin strokes: 3-5px on a 90-154px ring, 8px on 182px. Two others
  use 28 and 37px.
- **Progress bars** are 4-24px tall (median 8), fully rounded, with both ends labelled ("Skilled 200"
  and "Expert 2,000"); the fill is the true ratio, so 303 on that scale fills 22px of 392. A zero has
  no stub (a 6px stub at zero is flagged).
- **Tooltips** are bare text or a plain box without an arrow: label and value on one line.
- **Annotate the event that matters.** A step or a spike more than about three times the usual change
  gets a 1px marker and a 12px label naming its cause ("Deploy a3f09c1", "Newsletter featured");
  reference lines (a budget, an SLO, a start time) are 1px dashed with their label at the end. In
  testing, an unexplained jump was the first thing a judge asked about. `Charts.line`,
  `Charts.bars` and `Charts.diverging` take `annotations` and `reference`.
- **Labels never collide.** Annotation labels sit in rows above the plot, each beside the top of its
  own leader line, and no leader line runs through another label; the rows are reserved only when a
  label exists, so a chart without one has no dead band above it. The "Now" label of a forecast goes
  on whichever side of its line the series does not cross. Lay labels out after the fonts load, or
  the label set changes between loads (it did in testing). The helpers do all of this; give a label
  that may not fit a `short` form.
- **Use the helper, then extend it.** Draw charts with `assets/charts.js` and add what a chart needs to
  it, rather than writing new axis code: in testing, every chart written from scratch on a phone put
  its y labels on top of its line.
- **Short and empty histories are drawn honestly**: a flat zero line with one spike, missing bars for
  empty periods, no padded y-range, no "No data" picture. Do not give one point the screen's largest
  plot, though: a lone dot in a full-size grid reads as barren (flagged once).


## 7. Tables and lists

### 7.1 Rows

- Single-line data rows: 36-53px, median 45.
- Two-line rows with media: 56-92px, median 72. The pitch is the media's height plus 24-32px
  (48 + 24, 48 + 32, 50 + 30).
- Key-value and legend rows inside cards: 21-32px.
- In a two-line cell, line 2 sits about 21px below line 1 (19-23), one size smaller (12-14px) and
  grey. Two-line labels need a 40-44px pitch at least: on a 32px pitch a subline nearly touched the
  next row's name and the list ran together (house rule, from testing).
- Overview lists show 2-5 rows.

### 7.2 Header

- 11-14px, median 12, mostly regular weight, grey, sentence case (9 of the 11 headed tables). The one
  uppercase header in the study is flagged as louder than the data.
- **No fill band** (0 of 11) and **no rule under it** on 8 of 11. Where there is a rule, it is the
  strongest line in the table (#e5e7eb over #f3f4f6 row rules).
- Header row 36-40px.
- Numeric headers are right-aligned and flush with their values; a header that stops 15px short of
  its column is flagged. A header over a control aligns with the control it labels (centred over a
  column of steppers), and a delta beside a stepper gets its own narrow unlabelled column; three
  alignments in one header row were flagged.
- A sort glyph on the active column only.

### 7.3 Dividers

- **No zebra striping** (0 of 23).
- No row dividers on about half the lists; they rely on a 61-92px pitch or on 2-8px gaps between
  filled rows.
- When present: 1px, 3-7% darker than the surface (#ededed-#f4f4f4 on white; #161616 on #000,
  #1b1a1f on #131217).
- Extent: bleeding 8-9px past the text edge; starting at the text column and skipping the media; or
  the full inner width. Pick one per screen.

### 7.4 Figures and alignment

- **Numbers right-aligned**, in tabular figures or a monospace. Every left-aligned numeric column and
  every column of proportional digits in the study is flagged (durations "00:00:12" and "00:00:04"
  that jitter, cents that drift).
- **Fixed decimals per metric**: money 2, percentages 1 or 2, counts none. Thousands separators
  everywhere ("$16,531.54"); abbreviate only in a capacity line ("12.7k of 20.0k"). A sign on every
  change ("-$0.09", "+10,100 (+0.20%)"). No space after the currency sign (one screen's "$ 89.00"
  beside "$15.00" is flagged).
- **The identity column gets the most width**, about a third to a half of the table, and it is never
  the one cut off at desktop width: shorten names editorially first (drop the issuer every row
  shares, the share class, "Ltd") and use the same short name at every width.
- **One right edge per row or card**: every right-aligned figure inside a card or row ends on the same
  padding line (a days-in-stage figure 18px short of the value above it reads as a second edge).
- **Two measures stack in one cell** rather than taking two columns: a count over its 12px grey
  percentage, a date over its time, a money value over the amount in units, both lines on one right
  edge.
- **Dates** in ISO form and right-aligned where rows are compared ("2024-02-15"); in words for
  recency ("Today", "Yesterday", "6 days").
- **IDs** in a monospace at body size, truncated to about 8 characters with an ellipsis and a copy
  icon 12px after.
- Truncate to one line with an ellipsis; never break inside a word.
- **A breakdown in a narrow card** ("Headingley 6 · Chapel Allerton 5 · Meanwood 3") goes in fixed
  mini-columns, or each item is `nowrap` with its separator attached to the next item, so no line ends
  on a dangling "·".
- **An edited cell shows that it changed** (house rule, from testing). In an editable grid a changed
  value carries a mark (a dot, a tinted border), and the column header or a caption names the
  baseline ("vs the usual Monday"); a bare grey "+5" beside a stepper was read as noise.

### 7.5 Ink inside rows

- Only the identity and the key number get the primary ink; everything else is grey ("5" in ink,
  " /10" in grey).
- A missing value is a grey dash; a real zero is printed ("$0", "0.00%", "0% (0)").
- The sign lives in the text, not in the colour: income green with a "+", expenses in ink, no red on
  every negative.
- Link colour on the name cell only, with no underline.

### 7.6 Status pills

- 15-28px tall (median 20), text 9-14px in the study (median 12) at 500; nothing under 11px here. A
  full pill or a 3-5px tag.
- A pale tint with dark text of the same hue, optionally a 1px border one step darker: #dcfae5 with
  #04250e, #ffedea with #831c1e.
- Neutral states are monochrome chips with a glyph ("Public" with a globe).
- A state machine uses one hue at three intensities: grey for off, the full hue for the call to
  action, a dark tint for running. A saturated fill with white text only for that one call to action,
  and only while it is rare: when more than about a fifth of the visible rows carry it, it becomes a
  stripe of black blobs louder than the data (marked down in testing); use the pale pair or a 6px dot
  with an ink label instead.
- **One status mark per row.** A tag and a badge that say the same thing are flagged.
- **A chip is never squeezed.** Tags and pills are `flex: none; white-space: nowrap`: in testing a
  table column collapsed an environment chip to a 12px box with its word spilling out.

### 7.7 Media

16px logos in dense rows; 24-32px avatars; 48-50px in two-line rows. Circles for people, tokens and
companies; a 2-3px radius for artwork and flags; 8px for photographs. One fixed media slot down the
list so the text starts on one edge (a 50px slot with the text 16px after it). Media-to-text gap
10-16px, median 12.

### 7.8 Actions and paging

- **No pagination on an overview** (0 of 23). Cap the rows and link out: "View all" in the section
  header, a 30px outlined button under the list, a full-width 32px bar. State the total ("3 tracks").
- Row actions: none on 9 screens; otherwise one kebab at the far right. Reserve a trailing action
  column only when most rows carry the action; otherwise the action is an ink text action on the
  row's second line and the figures stay flush to the card edge. When a row needs doing
  (a bill to pay, an order to pack, a failed deploy), its action is a visible ghost button or an ink
  text action in one fixed trailing column, at the same pitch for every row; never muted grey text,
  and never stacked under the amount so the rows change height.
- Checkboxes only where bulk actions exist (one screen: 18px, 2px stroke, 3px radius).
- Hover and selected: a 1px outline at 6px radius overhanging the panel by 1px, or a darker border
  with a 1px ring. No hover that changes the fill was seen. In a list that drives a detail pane (an
  inbox, a queue), the selected row takes the `--active` fill of the nav pill instead, so it cannot be
  mistaken for a focus ring or a hover (house rule, from testing).
- Toolbar: one search, 30-36px tall (256x30, 252x36, 316x32).
- **A full list screen** (house rule; the study has none): state the total above the table, keep the
  header row in view while scrolling, and page or load more at the end with the range shown
  ("1-50 of 1,284").

### 7.9 Lists that carry data

- **The row fill is the bar**: the row's rounded background (radius 8) as wide as its share of the
  largest share; 44px rows, 2px gaps. Only in a one-figure ranking list (a label and one value): in a
  row with several columns or two lines, the fill's edge cuts through the words (failed in testing).
  Planned against spent is a separate 6-8px track under the label (`Charts.plan`).
- **Bar list**: a 64px pitch, a label line, then a 10px pill bar with the value 5px after its end; the
  longest bar about 88% of the width; one colour, no track.
- **Inline bars in a list are thin and grey** unless they are the screen's main series: 2-3px at
  most. A ranked list of money in a narrow card carries a 2px proportional bar under each label, grey
  with the top item in ink (`Charts.barList(el, rows, { thin: true })`), so "most costly first" is
  seen and not only read. In testing, six 4px black bars were the loudest marks on the screen.
- **A timeline draws its comparison.** When the brief asks "against last Sunday", the comparison is a
  mark on the same axis (`Charts.timeStrip`: an ink dot for today, a hollow tick for the comparison
  day), not only a line of text.
- **Legend as table**: dot, name, pill, value and change on a 57px pitch.
- **Key-value well**: a tinted well, radius 8, 32px rows, label left, figure right.
- **Feed as row cards**: 63px tall, 8px gaps, radius 14, a fill one step lighter and a border one step
  darker than the panel, a relative date on the right.
- **Tree**: no dividers, 8px of indent per level, ink against grey by level, a pitch of about 30px,
  about 45px between groups.
