# Motion & Animação: 6. Recipes — Parte 1/4 (Load sequence in 1.2 seconds, Masked line reveal (the classic gallery headline), Reveal on scroll (once)...)

## 6. Recipes

All recipes keep the content visible when JavaScript is off, put every hidden state inside
`prefers-reduced-motion: no-preference`, and use the tokens above. Two notes that apply to several:

- **Scroll timelines need a scroller to watch.** `animation-timeline: view()` takes the nearest scroll
  container, and `overflow: hidden` makes one. A picture inside an `overflow: hidden` frame therefore
  never animates. Use `overflow: clip` on frames, or name the timeline on the section
  (`view-timeline-name: --hero`) and point the children at that name. This also applies to the
  existing "Scroll-linked progress" recipe.
- **Scroll-linked means linear.** The scroll is the easing. 14 of the 18 scrubbing sites in the study
  lock motion to the scrollbar, which is what CSS scroll timelines do.

All recipes keep content visible when JavaScript is off or slow: the hidden state only applies under
`html.js`, which a one-line inline script sets.

```html
<script>document.documentElement.classList.add('js')</script>
```

### Load sequence in 1.2 seconds

Everything is in the HTML and painted on the first frame; the sequence only adds arrival. Nothing
waits for the load event, and nothing in the navigation animates.

```html
<header class="hero">
  <h1 class="display lines">
    <span class="line"><span data-line style="--i:0">Stools for</span></span>
    <span class="line"><span data-line style="--i:1">small kitchens</span></span>
  </h1>
  <p class="lead" data-load style="--d:420ms">…</p>
  <a class="button" data-load style="--d:480ms" href="#stools">See the stools</a>
  <figure class="hero__picture" data-open><img src="stool.jpg" alt="…" fetchpriority="high"></figure>
</header>
```

```css
.hero__picture { overflow: clip; margin: 0; }
@media (prefers-reduced-motion: no-preference) {
  .js .hero [data-line] { transform: translateY(105%); animation: load-line 800ms var(--ease-expo) forwards; animation-delay: calc(100ms + var(--i) * var(--stagger-line)); }
  .js .hero [data-load] { opacity: 0; transform: translateY(12px); animation: load-rise 500ms var(--ease-out) forwards; animation-delay: var(--d); }
  .js .hero [data-open] { clip-path: inset(0 0 100% 0); animation: load-open 1000ms var(--ease-in-out) 150ms forwards; }
  .js .hero [data-open] img { transform: scale(1.08); animation: load-settle 1100ms var(--ease-expo) 100ms forwards; }
}
@keyframes load-line { to { transform: none; } }
@keyframes load-rise { to { opacity: 1; transform: none; } }
@keyframes load-open { to { clip-path: inset(0); } }
@keyframes load-settle { to { transform: none; } }
```

The timeline: the headline's lines rise from 100 to 990 ms, the picture opens from 150 to 1,150 ms,
the sentence and the button arrive from 420 to 980 ms. All settled by 1.2 s, four things at most.
Preload the display font (`<link rel="preload" as="font" type="font/woff2" crossorigin>`) so the lines
rise in the real face, and give the picture `fetchpriority="high"` and a ground colour sampled from it,
so a slow image opens onto its own colour rather than a blank box. Study: 22 of 91 pages were readable
at the first intro frame and 11 more by 1.2 s; the intros the readers called respectful finished in
about 1-1.2 s; a third of the pages were still unreadable at 4.5 s.

### Masked line reveal (the classic gallery headline)

Each line slides up from behind its own baseline. Because headlines are capped at two lines, you set
the line breaks yourself and wrap each line.

```html
<h1 class="lines">
  <span class="line"><span data-line style="--i:0">Stools for</span></span>
  <span class="line"><span data-line style="--i:1">small kitchens</span></span>
</h1>
```

```css
.lines .line { display: block; overflow: hidden; padding-bottom: 0.08em; margin-bottom: -0.08em; }
.lines [data-line] { display: block; }
@media (prefers-reduced-motion: no-preference) {
  .js .lines [data-line] {
    transform: translateY(105%);
    animation: line-up 900ms var(--ease-out) forwards;
    animation-delay: calc(var(--i) * 110ms + 150ms);
  }
}
@keyframes line-up { to { transform: none; } }
```

The `padding-bottom` / negative margin pair stops descenders (g, y, p) being clipped by the mask.
On a narrow phone the two authored lines may each wrap; check the mobile screenshot, and if they do,
author a shorter mobile break with a `<br class="only-wide">` pattern or reduce the size.

### Reveal on scroll (once)

For the two or three sections that deserve it, not for every block.

```css
@media (prefers-reduced-motion: no-preference) {
  .js [data-reveal] { opacity: 0; transform: translateY(24px); transition: opacity 700ms var(--ease-out), transform 900ms var(--ease-out); }
  .js [data-reveal].is-in { opacity: 1; transform: none; }
}
```

```js
const io = new IntersectionObserver((entries) => {
  for (const e of entries) if (e.isIntersecting) { e.target.classList.add('is-in'); io.unobserve(e.target); }
}, { rootMargin: '0px 0px -12% 0px', threshold: 0.1 });
document.querySelectorAll('[data-reveal]').forEach((el) => io.observe(el));
```

Never attach reveals with a scroll listener, never replay them when the element re-enters, and never
leave anything at `opacity: 0` if the observer fails to fire (the `html.js` gate handles no-JS; the
`unobserve` handles replays).

### Image shutter

An image opens from one edge while scaling down slightly inside its frame. Gallery staple; use it for
the one hero or showcase image.

```css
.shutter { overflow: hidden; }
@media (prefers-reduced-motion: no-preference) {
  .js .shutter { clip-path: inset(0 0 100% 0); transition: clip-path 1100ms var(--ease-in-out); }
  .js .shutter img { transform: scale(1.12); transition: transform 1500ms var(--ease-soft); }
  .js .shutter.is-in { clip-path: inset(0); }
  .js .shutter.is-in img { transform: none; }
}
```

### Press and hover

```css
.button { transition: transform var(--t-press) var(--ease-out), background-color var(--t-hover) ease, color var(--t-hover) ease; }
.button:active { transform: scale(0.97); }
.link { text-decoration: underline; text-decoration-color: transparent; text-underline-offset: 0.2em; text-decoration-thickness: 0.07em; transition: text-decoration-color var(--t-hover) ease; }
@media (hover: hover) and (pointer: fine) {
  .button:hover { background-color: var(--accent-strong); }
  .link:hover { text-decoration-color: currentColor; }
}
```

Hover styles go behind `(hover: hover)` because touch devices fire hover on tap and leave it stuck.
Hover should raise contrast, never lower it. Do not change font weight on hover (the text reflows).
Do not lift or scale every card on hover; one consistent, small response is enough.

### Scroll-linked progress without JavaScript

For a wordmark that scales as the hero leaves, an image that drifts a few percent, or a progress bar.
Wrap in `@supports` so browsers without scroll timelines get the static state.

```css
@supports (animation-timeline: view()) {
  @media (prefers-reduced-motion: no-preference) {
    .drift { animation: drift linear both; animation-timeline: view(); animation-range: entry 0% exit 100%; }
    @keyframes drift { from { transform: translateY(-4%); } to { transform: translateY(4%); } }
  }
}
```

Keep the travel small (under 8% of the element). Large parallax makes text hard to read and looks
dated.

### Pinned story

A section whose heading stays put while items pass. Use `position: sticky`; do not hijack scrolling.

```css
.story { display: grid; grid-template-columns: 5fr 7fr; gap: var(--gutter); align-items: start; }
.story__title { position: sticky; top: 18vh; }
@media (max-width: 800px) { .story { grid-template-columns: 1fr; } .story__title { position: static; } }
```
