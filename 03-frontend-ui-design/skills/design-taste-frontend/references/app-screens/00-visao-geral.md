# App screens

Dashboards, admin, analytics, settings, inboxes, wallets and builders: the screens people work in.
Read this file whole before you start one. The page run in `SKILL.md` does not apply to them.

A generated dashboard is the average of every dashboard template: a dark or tinted sidebar with a
coloured pill on the active item, "Welcome back" and a waving hand, four KPI cards each with an icon
in a tinted circle, a green "+12.5%" and a sparkline, a gradient area chart, a zebra table under
uppercase headers. Nothing in it is wrong and none of it was decided.

This chapter is distilled from a study of 23 real product screens chosen by the owner: 17 products,
17 light screens and 6 dark, all at desktop width (1440 or 1512px). Each screen was measured from its
pixels and noted for what works and what fails; the numbers below are those measurements and their
medians. The products are not named. What separates these screens from the generated kind, in order
of how much it shows:

1. **Colour goes on data, not chrome.** The median screen has about 3% coloured pixels; 17 of 23 stay
   at 5% or less. 12 have no filled primary button at all.
2. **KPIs are type, not tiles.** No screen puts an icon in a coloured circle on a KPI, and none draws a
   sparkline on one.
3. **Surfaces are flat.** 17 of 23 give their cards no shadow; separation is a 1px line or one tone
   step.
4. **There is no hero header.** 9 screens have no heading over 16px; where there is one, its median is
   24px.
5. **Charts carry almost no chrome.** A single series has no legend; gridlines are 3-7 faint lines or
   none.
6. **Navigation recedes.** The active item is a neutral grey pill or a change of text colour; a
   coloured left bar appears once.
7. **Tables are rules and alignment.** No zebra striping, no header bands, numbers right-aligned.
8. **Data states are honest.** Zeros print as zeros, missing values as a grey dash, and an empty
   section keeps its frame.

Taking the template's devices away is half the job, as it is on a page. The other half is substance:
the product's real data, a screen that answers its one question first, and a grid whose arithmetic
closes.

**A warning learned in testing.** In the first blind round, screens built with this chapter were
clean, quiet and correct, and they lost to richer screens built without it. The judges' reasons were
the same every time, and each is now a rule below:

- **The first screen was thin.** One large chart of a flat line filled it, and half the blocks the
  brief asked for started below the fold. On a 1440×900 screen, every block the brief names shows its
  header and its first rows (§2.2).
- **The product was missing.** No name, no workspace, no mark: the screen could have belonged to
  anyone. The shell names the product and the scope (§3.2).
- **Restraint hid meaning.** A latency rise and a request rise were the same grey. Colour on a change
  says good or bad, not up or down (§5).
- **There was nothing to do.** No control for the job the screen exists for. The most frequent job is
  one click from the first screen (§2.2).
- **Rows ended ragged** and **a style's move was over-applied** (a tray around every card, an icon
  rail where people needed labels). Keep the move to where it carries meaning.

Quiet is the starting point, not the goal. A screen that a person would trust shows more of the
product than a template does: its people, its objects, its numbers and the one thing to do next.

**Give the product a face.** After four rounds the judges' top complaint was the same on most
screens: "a well-applied kit, not a product with its own identity" (stock Geist or Inter, a #f8f8f8
ground, white 12px cards, lime on black). The style's tokens make a screen correct; these make it
this product's, and choosing them is a step of the run, not a finish (§2.3):

- **One face from the sheet, chosen before you build.** Each style lists two or three ways it takes a
  face from the brief: a ground tinted from the product's world, a figure face with character, the
  brand's hue on the main data element. Choose one, write it in your notes next to the screen's
  question, and check that it shows on the first screenshot.
- **The dealt typeface, really loaded.** A build that fell back to the default face landed on the
  default look; the inspector now fails it.
- **The product's mark and name** at the top of the shell, drawn for this product (a simple
  monogram or symbol in the accent, from its name or its object), never a black square with a letter.
- **One element only this product has**, built from its own things: an energy home's power flow, a
  bakery's sell-out strip, a leave planner's cover against the minimum, the pace groups of a running
  club as a unit chart, the couple as three lanes, a deploy's commit as the hero of the overview. The
  sheet lists the library's signature elements whose words appear in the brief; otherwise invent one.
  Name it in your notes next to the screen's question.
- **The one chart hue on the main data element**: today's line, the booked bars, the current period,
  the margin that breaks. A screen whose only hue is a delta reads as a kit, and the inspector warns
  when a screen with charts carries no hue on its data (`no-data-hue`).
- **Its people and objects as themselves**: each person gets a stable initial and a pale tint of their
  own hue, with people listed next to each other at least 60 degrees apart. These tints are identity,
  not data: they stay pale and out of the chart legends. Products show their thumbnails, cover art
  shows the cover.
- **Words of the trade** in labels and empty states ("Waiting on the customer", "Off sick", "Due
  on the 28th"), never the generic noun of a template ("Items", "Records", "Status").

**Calendars and timelines** (house rule, from testing; the study has none). People down the left on a
fixed 160-220px column, grouped under a team subheader rather than repeating the team on every row;
days across with faint 1px day lines, weekends one tone step darker, and today marked by a 1px line
in the one data hue with its date in ink. Bars are 20-24px tall at radius 4. One-line names sit on a
32px pitch; a name with a subline (team, office) needs 40-44px, or the subline touches the next name.
**Every kind of booking has its own mark**, so sickness reads apart from a holiday at a glance:
holiday a pale fill, off sick a 1px diagonal hatch, long leave a darker grey step, working away an
outline, a pending request a dashed outline. A style with a hue budget may add a 3px left edge in the
hue for the kind the screen is about. Full colour is only for what needs a decision (a request that
breaks cover). A label sits inside its bar; a bar too short for it shows the kind's code inside and
the full label in its tooltip, or the label after the bar's end, never over the days before it.
Holiday markers name their office in a multi-office product. Every swatch in the legend is the mark
itself, scaled down, and lists only kinds on screen: `Charts.timeline(el, rows, kinds)` draws the bars
and returns that legend from the same kinds map.
