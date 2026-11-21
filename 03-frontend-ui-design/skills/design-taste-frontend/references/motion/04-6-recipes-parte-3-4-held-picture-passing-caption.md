# Motion & Animação: 6. Recipes — Parte 3/4 (Held picture, passing captions, Sideways gallery, Receding hero...)

## 6. Recipes (cont.: Held picture, passing captions)
### Held picture, passing captions

The pinned story built for photographs: the picture holds on one side while short captions pass on
the other; the caption at the middle of the screen is lit and its picture is shown.

```html
<section class="steps">
  <figure class="steps__media">
    <div class="steps__pictures">
      <img src="seasoning.jpg" alt="Ash boards stacked to season" class="is-on">
      <img src="turning.jpg" alt="A leg being turned on the lathe">
      <img src="finish.jpg" alt="Oil rubbed into a finished seat">
    </div>
    <figcaption class="steps__count" aria-hidden="true"></figcaption>
  </figure>
  <ol class="steps__list">
    <li class="steps__item"><h3>Seasoned for a year</h3><p>…</p></li>
    <li class="steps__item"><h3>Turned by hand</h3><p>…</p></li>
    <li class="steps__item"><h3>Finished with oil</h3><p>…</p></li>
  </ol>
</section>
```

```css
.steps { display: grid; grid-template-columns: 7fr 5fr; column-gap: var(--gutter); }
.steps__media { margin: 0; align-self: start; }           /* a stretched grid item cannot stick */
.steps__pictures img { display: block; width: 100%; height: auto; }
.steps__list { list-style: none; margin: 0; padding: 0; }
.steps__item { min-height: 80svh; display: flex; flex-direction: column; justify-content: center; }
.js .steps__media { position: sticky; top: 0; height: 100svh; display: flex; flex-direction: column; justify-content: center; gap: 0.75rem; }
.js .steps__pictures { position: relative; aspect-ratio: 4 / 5; max-height: 80svh; }
.js .steps__pictures img { position: absolute; inset: 0; height: 100%; object-fit: cover; opacity: 0; transition: opacity 500ms ease; }
.js .steps__pictures img.is-on { opacity: 1; }
.js .steps__item { opacity: 0.4; transition: opacity var(--t-ui) ease; }
.js .steps__item.is-active { opacity: 1; }
@media (max-width: 800px) {
  .steps { display: block; }                               /* the section, not a grid area, contains the sticky picture */
  .js .steps__media { height: auto; z-index: 1; background: var(--bg); padding-block: 0.5rem; }
  .js .steps__pictures { aspect-ratio: 3 / 2; max-height: 42svh; }
  .steps__item { min-height: 60svh; }
}
@media (prefers-reduced-motion: reduce) { .js .steps__pictures img, .js .steps__item { transition: none; } }
```

```js
(() => {
  const root = document.querySelector('.steps');
  if (!root || !('IntersectionObserver' in window)) return;
  const items = [...root.querySelectorAll('.steps__item')];
  const pictures = [...root.querySelectorAll('.steps__pictures img')];
  const count = root.querySelector('.steps__count');
  const show = (i) => {
    items.forEach((el, k) => el.classList.toggle('is-active', k === i));
    pictures.forEach((el, k) => el.classList.toggle('is-on', k === i));
    if (count) count.textContent = `${i + 1} of ${items.length}`;
  };
  const io = new IntersectionObserver((entries) => {
    for (const e of entries) if (e.isIntersecting) show(items.indexOf(e.target));
  }, { rootMargin: '-45% 0px -45% 0px' });                 // a band across the middle of the screen
  items.forEach((el) => io.observe(el));
  show(0);
})();
```

Without JavaScript the pictures and captions are two plain columns. Study: inactive items at 20-40%
(dims of 10-15% read as missing text, so the floor here is 40%), crossfades of 400-600 ms, about one
screen per step; the readers asked for a visible count on any held sequence of more than two steps.
The count is a plain sentence in the body face, not a zero-padded numeral.

### Sideways gallery

A row of pictures that the vertical scroll moves sideways while the stage is held, for a short
collection (eight items or fewer). The native drag row is the base; the pinned version is added only
on wide screens with motion allowed, and only when the row is under three screens long.

```html
<section class="gallery">
  <div class="gallery__stage">
    <h2 class="head">Eight kitchens, one stool</h2>
    <ul class="gallery__track">
      <li class="gallery__item"><a href="/kitchens/leith"><img src="leith.jpg" alt="A narrow galley kitchen in Leith" width="1200" height="1500"><span>Leith</span></a></li>
      <!-- … -->
    </ul>
  </div>
</section>
```

```css
.gallery__track { display: flex; gap: var(--gutter); list-style: none; margin: 0; padding: 0 var(--margin); overflow-x: auto; scroll-snap-type: x mandatory; scroll-padding-inline: var(--margin); }
.gallery__item { flex: 0 0 min(72vw, 28rem); scroll-snap-align: start; }
.gallery__item img { display: block; width: 100%; height: auto; aspect-ratio: 4 / 5; object-fit: cover; }
.gallery.is-pinned .gallery__stage { position: sticky; top: 0; height: 100svh; display: flex; flex-direction: column; justify-content: center; gap: 2rem; overflow: clip; }
.gallery.is-pinned .gallery__track { overflow: visible; scroll-snap-type: none; }
.gallery.is-pinned .gallery__item { flex-basis: calc(62svh * 0.8); }
```

```js
(() => {
  const root = document.querySelector('.gallery');
  if (!root) return;
  const track = root.querySelector('.gallery__track');
  const wide = matchMedia('(min-width: 900px) and (prefers-reduced-motion: no-preference)');
  let dx = 0, queued = false;
  const place = () => {
    queued = false;
    if (!root.classList.contains('is-pinned')) return;
    const p = Math.min(1, Math.max(0, -root.getBoundingClientRect().top / dx));
    track.style.transform = `translate3d(${(-p * dx).toFixed(1)}px, 0, 0)`;
  };
  const measure = () => {
    root.classList.add('is-pinned');                     // measure the row as it would be when pinned
    track.style.transform = '';
    dx = track.scrollWidth - track.clientWidth;
    const pin = wide.matches && dx > 0 && dx < innerHeight * 3;
    root.classList.toggle('is-pinned', pin);
    root.style.height = pin ? `${innerHeight + dx}px` : ''; // one pixel of scroll moves the row one pixel
    place();
  };
  track.addEventListener('focusin', (e) => {             // keyboard: bring the focused item into view
    if (!root.classList.contains('is-pinned')) return;
    const item = e.target.closest('.gallery__item');
    const x = Math.min(dx, Math.max(0, item.offsetLeft - parseFloat(getComputedStyle(track).paddingLeft)));
    scrollTo({ top: root.getBoundingClientRect().top + scrollY + x, behavior: 'instant' });
  });
  addEventListener('scroll', () => { if (!queued) { queued = true; requestAnimationFrame(place); } }, { passive: true });
  addEventListener('resize', measure);
  addEventListener('load', measure);
  wide.addEventListener('change', measure);
  measure();
})();
```

Study: 8 pages pinned a horizontal track; their pages ran a median 25 screens, and the readers' worst
cases spent 9 screens on three cards and 10,000-23,000 px of wheel on one track. Here the speed is 1:1
and the hold ends when the last picture reaches the margin. Phones, narrow windows, reduced motion and
long rows all get the native row with snapping, which also works with touch, trackpads and the
keyboard. Never put the only copy of a call to action inside the moving row.

### Receding hero

As the first screen leaves, its picture sinks a little and darkens while the words lift away a little
faster, so the hero recedes instead of simply scrolling off.

```html
<header class="hero">
  <img class="hero__picture" src="kitchen.jpg" alt="…" width="2400" height="1600" fetchpriority="high">
  <div class="hero__copy"><h1 class="display">…</h1><p class="lead">…</p></div>
</header>
```

```css
.hero { position: relative; min-height: 100svh; overflow: clip; display: grid; align-items: end; view-timeline-name: --hero; }
.hero__picture { position: absolute; inset: 0; width: 100%; height: 100%; object-fit: cover; }
.hero::after { content: ''; position: absolute; inset: 0; background: var(--ink); opacity: 0; pointer-events: none; }
.hero__copy { position: relative; z-index: 1; padding: var(--margin); }
@supports (animation-timeline: view()) {
  @media (prefers-reduced-motion: no-preference) {
    .hero__picture { animation: hero-sink linear both; animation-timeline: --hero; animation-range: exit 0% exit 100%; }
    .hero::after { animation: hero-dim linear both; animation-timeline: --hero; animation-range: exit 0% exit 100%; }
    .hero__copy { animation: hero-lift linear both; animation-timeline: --hero; animation-range: exit 0% exit 70%; }
  }
}
@keyframes hero-sink { to { transform: translateY(8%) scale(1.06); } }
@keyframes hero-dim { to { opacity: 0.35; } }
@keyframes hero-lift { to { transform: translateY(-6%); opacity: 0; } }
```

The `exit` range runs from the moment the hero's top meets the top of the screen until its bottom
does, which for a first screen is the first screen of scroll. Study: hero pictures that sink and dim as
they leave, a heading scrubbed from 140 to 60 px, a title card that scales down on the phone; the
readers called it quiet and the page "one sheet". Travel stays under 8%; the overlay is a flat ink at
up to 35%, not a gradient. Static where unsupported or reduced.





### Page to page

Navigation between pages of the site with the browser's own view transitions: the old page fades
quickly, the new one rises in, and the picture the visitor clicked travels into place as the new
page's hero. No library, no full-screen curtain.

```css
/* on every page */
@view-transition { navigation: auto; }
@media (prefers-reduced-motion: reduce) { @view-transition { navigation: none; } }
::view-transition-old(root) { animation: vt-leave 200ms var(--ease-exit) both; }
::view-transition-new(root) { animation: vt-arrive 380ms var(--ease-out) 60ms both; }
::view-transition-group(*) { animation-duration: 480ms; animation-timing-function: var(--ease-in-out); }
::view-transition-image-pair(*.picture) { overflow: clip; }
::view-transition-old(*.picture), ::view-transition-new(*.picture) { height: 100%; object-fit: cover; }
@keyframes vt-leave { to { opacity: 0; } }
@keyframes vt-arrive { from { opacity: 0; transform: translateY(16px); } }
```

```html
<!-- on the index: the card picture of one project -->
<img src="/img/leith.jpg" alt="…" style="view-transition-name: kitchen-leith; view-transition-class: picture">
<!-- on that project's page: its hero picture -->
<img src="/img/leith-wide.jpg" alt="…" style="view-transition-name: kitchen-leith; view-transition-class: picture">
```

Each name may appear once per page. Browsers without cross-document view transitions simply navigate.
Study: 16 pages load a page-transition library and run full-screen curtains of 0.7-2.4 s; 6 use view
transitions. The new page should be readable within half a second.
