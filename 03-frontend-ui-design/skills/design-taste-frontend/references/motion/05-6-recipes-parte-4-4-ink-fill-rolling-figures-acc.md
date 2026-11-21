# Motion & Animação: 6. Recipes — Parte 4/4 (Ink fill, Rolling figures, Accordion...) | 7. Signature moves | 8. Reduced motion and performance | 9. What gives generated motion away

## 6. Recipes (cont.: Ink fill)
### Ink fill

One statement that fills from part-ink to full ink as it rises through the screen, line by line. It is
readable before it fills; the fill only sets the pace.

```html
<p class="statement head" data-fill>Nine people, one workshop, no catalogue: every stool is made for the kitchen it goes to.</p>
```

```css
[data-fill] { --fill: var(--ink); color: var(--fill); }
@supports (animation-timeline: view()) {
  @media (prefers-reduced-motion: no-preference) {
    .is-filling > span { display: inline-block; color: color-mix(in oklab, var(--fill) 45%, transparent); animation: ink-fill linear both; animation-timeline: view(); animation-range: cover 20% cover 45%; }
  }
}
@keyframes ink-fill { to { color: var(--fill); } }
```

```js
(() => {
  if (!CSS.supports('animation-timeline: view()') || matchMedia('(prefers-reduced-motion: reduce)').matches) return;
  document.querySelectorAll('[data-fill]').forEach((el) => {
    const words = el.textContent.trim().split(/\s+/);
    el.textContent = '';
    words.forEach((word, i) => {
      const s = document.createElement('span');
      s.textContent = word;
      el.append(s, i < words.length - 1 ? ' ' : '');
    });
    el.classList.add('is-filling');
  });
})();
```

Each word watches its own position, so the words of a line fill together as the line moves from three
quarters of the way down the screen to just past half way. Set `--fill` on a dark chapter to its ink.
Study: 14 pages scrub a statement from grey to ink; unread words started at about 25-30% and settled
frames still caught statements half pale, which reads as disabled text. Here: one statement per page,
three to five lines, 32px or larger, starting at 45% (about 3:1 against the ground, enough for large
text). Full ink without scroll timelines or under reduced motion.

### Rolling figures

For pages whose case is a handful of numbers: each digit rolls up to its value once, the columns a
beat apart. The real number stays in the text for screen readers and search.

```html
<p class="figure"><span class="display" data-roll>1987</span> the year the first stool was sold</p>
```

```css
.roll__digits { display: inline-flex; font-variant-numeric: tabular-nums; line-height: 1; }
.roll__col { display: inline-block; height: 1em; overflow: clip; }
.roll__strip { display: flex; flex-direction: column; transform: translateY(calc(var(--d) * -1em)); }
.roll__strip > span { height: 1em; }
@media (prefers-reduced-motion: no-preference) {
  .roll:not(.is-in) .roll__strip { transform: none; }
  .roll.is-in .roll__strip { transition: transform 1100ms var(--ease-expo) calc(var(--i) * var(--stagger-item)); }
}
```

```js
(() => {
  const els = [...document.querySelectorAll('[data-roll]')];
  if (!els.length) return;
  els.forEach((el) => {
    const value = el.textContent.trim();
    const said = Object.assign(document.createElement('span'), { className: 'sr-only', textContent: value });
    const shown = Object.assign(document.createElement('span'), { className: 'roll__digits' });
    shown.setAttribute('aria-hidden', 'true');
    let i = 0;
    for (const ch of value) {
      if (!/\d/.test(ch)) { shown.append(ch); continue; }
      const col = Object.assign(document.createElement('span'), { className: 'roll__col' });
      const strip = Object.assign(document.createElement('span'), { className: 'roll__strip' });
      strip.style.setProperty('--d', ch);
      strip.style.setProperty('--i', i++);
      for (let n = 0; n < 10; n++) strip.append(Object.assign(document.createElement('span'), { textContent: n }));
      col.append(strip);
      shown.append(col);
    }
    el.classList.add('roll');
    el.replaceChildren(said, shown);
  });
  if (!('IntersectionObserver' in window)) { els.forEach((el) => el.classList.add('is-in')); return; }
  const io = new IntersectionObserver((entries) => {
    for (const e of entries) if (e.isIntersecting) { e.target.classList.add('is-in'); io.unobserve(e.target); }
  }, { rootMargin: '0px 0px -15% 0px' });
  els.forEach((el) => io.observe(el));
})();
```

Study: 6 pages roll digit columns (stats, a year, coordinates), about 0.9-1.1 s per column on an
expo-out, staggered by column. Use it for three or four figures at display size, never in running text
and never for a value that changes after load. Reduced motion: the figure is set at its value.

### Accordion

```css
.acc__panel { display: grid; grid-template-rows: 0fr; transition: grid-template-rows 320ms var(--ease-out); }
.acc__panel > div { overflow: hidden; }
.acc[open] .acc__panel, .acc__item.is-open .acc__panel { grid-template-rows: 1fr; }
```

Animating `grid-template-rows` from `0fr` to `1fr` opens to the content's real height without measuring
it in JavaScript.

### Menu or dialog

```css
.menu { transform-origin: top right; transition: opacity var(--t-ui) var(--ease-out), transform var(--t-ui) var(--ease-out); }
.menu[hidden], .menu.is-closed { opacity: 0; transform: scale(0.97) translateY(-6px); pointer-events: none; }
```

Things open from where they were triggered (`transform-origin` at the trigger). Nothing enters from
`scale(0)`; start at 0.95–0.98. A centred dialog is the one case that scales from its centre.


## 7. Signature moves

The direction sheet names one. Each of these was seen repeatedly on the studied gallery sites.

| Move | What happens | Build with |
| --- | --- | --- |
| Masked headline | Lines rise from behind their baselines on load | Masked line reveal recipe |
| Shutter image | Hero or showcase image opens from an edge, settling from 1.12 scale | Image shutter recipe |
| Scaling wordmark | A giant wordmark shrinks or grows a few percent as the hero scrolls out | Scroll-linked recipe on `scale` |
| Pinned story | A heading holds while its items scroll past | Sticky recipe |
| Index with preview | Text rows; the hovered row shows its image | Index with preview, anchored to the row |
| Curtain footer | The last section is revealed from under the page as you reach the end | `position: sticky; bottom: 0` footer under a main with a background and `z-index` |
| Slow crossfade | Hero image crossfades through 3–4 photographs, 5–6s each | Stacked images, opacity keyframes, pause when the tab is hidden |
| Edge-to-edge marquee | One line of very large type travels sideways, slowly | Duplicate the content, `translateX(-50%)` linear loop, pause on hover and under reduced motion |
| Drag row | A horizontally scrollable row of large images with scroll snapping | `overflow-x: auto; scroll-snap-type: x mandatory`, no library |
| Colour by chapter | Each chapter is its own full-bleed colour field, so the ground changes at section edges; a fixed header takes the ink of the chapter beneath | Section backgrounds in CSS; `base.js` sets `--header-ink` from `data-ink`. Never recolour the whole page from an observer |
| Opening window | A type screen hands over to the big picture: a window in the middle of a held stage opens to full-bleed over about one screen | Opening window recipe |
| Ink-fill statement | One statement fills from 45% to full ink as it rises through the screen | Ink fill recipe |
| Sheet over a held picture | A full-bleed photograph holds for one screen; the next chapter slides up over it as an opaque sheet | A 100svh `position: sticky; top: 0` figure followed by a section with its own background and a higher `z-index`; no script |
| Sideways gallery | A short row of pictures moves sideways while the vertical scroll holds the stage | Sideways gallery recipe |
| Pushed line | One line of very large type is pushed sideways by the scroll, reading whole at the middle of its run | `animation-timeline: view()` on the line, `translateX` from 12% to -12%, linear; static where unsupported |
| Rolling figures | The few figures that make the case roll up to their values once | Rolling figures recipe |
| Carried picture | The picture clicked in a list travels into place as the next page's hero | Page to page recipe |

Pick by subject. A portfolio wants the index with preview; a restaurant wants the slow crossfade; a
product wants the shutter on its hero object. If the move says nothing about the subject, it is
decoration and the page is better without it.

Pick by subject, as before: the opening window for a product or a place with one great photograph; the
sheet for chapters that each own a picture; the sideways gallery for a short set of rooms, kitchens or
pieces; the pushed line for a brand whose claim is a word; rolling figures for a report, a fund or a
practice that leads with numbers; the carried picture for a portfolio whose index and case pages are
both built.


## 8. Reduced motion and performance

- `prefers-reduced-motion: reduce` means fewer and gentler, not none: keep opacity and colour changes,
  drop travel, scale, parallax and autoplay. All recipes above are written inside
  `no-preference` blocks so the reduced state is simply the finished state.
- Animate `transform`, `opacity` and `clip-path`. Animating `width`, `height`, `top`, `left`, `margin`
  or `padding` forces layout on every frame. `grid-template-rows` for accordions is the accepted
  exception because it is short and rare.
- Do not drive many children from one changing CSS variable on a parent; set the transform on the
  element that moves.
- `will-change` only on an element that is about to animate, removed afterwards.
- Pause loops when off screen or when the tab is hidden.
- No scroll hijacking and no custom cursor. They cost usability, which is 30% of an Awwwards score and
  the line most winners score lowest on. Smoothing only through `Stage.smooth()`, which stays off for
  touch and reduced motion.


## 9. What gives generated motion away

- The same fade-up on every block.
- A dozen staggered entrances in the hero.
- Hover lift or zoom on every card and image.
- Bounce or elastic easing on interface elements.
- Infinite loops that mean nothing: pulsing dots, floating shapes, shimmering text, rotating badges.
- A reveal that never fires and leaves a blank band in the page. Run `inspect.mjs` after the motion
  pass and look at every screenshot for missing content.

### Seen in the latest Sites of the Day

Seen in the study, with how often, and what the house does instead.

- **Preloaders and counters (60 of 99; 26 with a counter).** Half the usable pages were unreadable
  2.5 s after load, a third at 4.5 s; the preloaders sat mostly on pages that had already loaded, and
  25 of the 29 that loaded in under 3 s still showed nothing readable at 4.5 s. Counters stalled,
  outlasted the load or were tweens with nothing behind them. House: no preloader. If a scene must
  load, the HTML first screen (headline, picture, action) is there at once and the scene fades in
  behind it when ready.
- **Gates (10 of 99): enter, sound, age or gesture before any content.** House: none. Sound is a
  control on the page, off by default.
- **Scroll hijacking (16 wheel-driven scenes, 9 of them endless, plus 14 single screens where the wheel
  does nothing).** The visitor cannot tell where they are, how much is left or how to get out, and the
  keyboard and screen readers get nothing. Usability 6.01 against 6.50 for pages that scroll. House:
  native scroll; any scene is driven by scroll position on a sticky stage that ends, with a count.
- **Smooth-scroll libraries (67 of 99).** They make the scrubbed scenes feel weighted, and they also
  put a delay between the hand and the page; with a long ease the page keeps sliding after the wheel
  stops.
- **Custom cursors (28 of 99).** Followers, image trails, a lens that smears the headline it sits on,
  labels that only exist on hover; 10 of the 28 have any reduced-motion rule. House: the system cursor;
  labels are on the page.
- **Scramble and typewriter text (11 and 5).** The headline unreadable for four seconds, body copy
  garbled mid-scroll, actions held back until the typing ends. House: not used. Real words arrive whole.
- **Long held runways.** Pages with pins average twice the length for fewer words per screen; 17 pages
  are 20 screens or longer, some with whole screens that hold only a slow rotation. House: about one
  screen per step, three per stage, every held screen carries a line of text.
- **Content held at zero opacity.** Reveals that keep text invisible until the scroll settles, inactive
  items dimmed to 10-15%, statements left half pale. House: reveals only below the fold, once, never
  longer than 900 ms in view; dims no lower than 40%; fills start at 45%.
- **Motion over words.** Marquees and drifting objects that cross statements, a sliding line that crops
  its own words, blur left on text mid-move. House: nothing moves across text the visitor is reading;
  a moving line must read whole at some point of its run.
- **Overshoot and bounce (19 stylesheets).** House: still banned on interface elements.
- **Endless loops with no off switch.** Grain, pulsing dots, equalisers, spinning badges, running with no
  reduced-motion rule on most pages. House: loops pause off screen and stop under reduced motion.

Where the study's work does something the house bans, the house version: hairline progress bars and
tick rails on held stages become a plain count in the body face ("2 of 4"); zero-padded counters
("01/08") become a plain count or nothing; crossfading gradient grounds become flat chapter colours with
hard cuts; monospace HUD labels become small text in the text face.
