# Motion & Animação: 1. The budget | 2. What strong pages do with motion | 3. Four questions before any animation | 4. Tokens | 5. Scroll behaviours, ranked

## 1. The budget

A page that does not move reads as a mock-up; the inspector counts what moves while the page loads and
scrolls, and fails it under eight elements. The motion layer has five parts:

- **Two or three scroll scenes:** the big, scroll-driven moments award sites are remembered for (a
  camera flying through a field of pictures, a picture that grows from a window to the whole screen,
  type that crosses a held stage, cards that deal out and stack). The direction sheet deals them from
  `library/scenes.json` when the library has scenes for the brief; `references/scenes.md` says how to
  fill and fit them. They are where the page is bold; everything else stays quiet so they land.

- **One signature moment:** the thing a visitor would describe an hour later: the headline that rises
  out of a mask, the image that opens like a shutter, the wordmark that scales with the scroll. The
  direction sheet from `draw.mjs` names one. Build that one well; it is the only move allowed to be
  loud.
- **Section entrances, choreographed per section:** the parts of each section arrive in reading order
  (heading, text, picture, details), staggered 60–90ms, rising 16–32px with opacity, once. Vary the
  manner with the content instead of stamping one preset everywhere: a list arrives row by row, a
  picture opens from a mask or settles from a slight scale, a figure counts up once, a statement rises
  line by line.
- **Feedback under the hand:** buttons that give on press, links that answer the pointer, cards and
  pictures that respond on hover, a menu that opens from where it was clicked.
- **One moving picture:** a found clip as a muted loop with a poster frame, a slow drift or scale on
  a large photograph, or a scroll-linked move on the hero picture.

What is still banned: the same fade-and-slide-up with the same timing on every block, which is the most
cited motion tell of generated pages; motion that hides content until a script runs, with no fallback;
bounce and elastic easing; anything that animates layout properties. Uniform motion says nobody decided
anything; choreographed motion with one protected moment says somebody did.


## 2. What strong pages do with motion

Measured on the latest 99 Awwwards Sites of the Day (July to October 2026), at 1440 and 390, with
the transitions, tweens and scroll triggers recorded while each page loaded and was scrolled. Where
the gallery does something the house rules ban, the house version follows.

- **The stack.** Two in three use a smooth-scroll library and three in five ship Three.js; GSAP is
  named on 56. The quiet layer below (reveals, line rises, the ink fill) needs none of it: CSS scroll
  timelines and view transitions do that work, though only 3 and 6 of the sites use them. The big
  scroll scenes are built on GSAP ScrollTrigger, as on the award sites, through the shared stage in
  `assets/scenes/` (`references/scenes.md`).
- **Curves.** The curves that really ran are strong ease-outs: expo out (`.16,1,.3,1` and
  `.19,1,.22,1`) ran on 14 sites, cubic out on 13, quint out on 7, and by number of transitions the
  quint and expo outs lead every chosen curve. In-out curves are kept for wipes and things that
  travel (cubic and quart in-out, about 15 sites each). Ease-in appears only for exits, short, before
  a slow arrival. Colour changes use plain `ease` (46 sites). Overshoot sits in 19 stylesheets and
  ran on 2.
- **Durations.** Hover colour 200-300 ms; small interface moves 300-450 ms; reveals and line rises
  600-1,000 ms; picture openings and wipes 1,100-1,600 ms. The median of everything that ran on a
  site is 420 ms.
- **Staggers.** 20-40 ms between characters, 75-120 ms between lines, 50-100 ms between list items.
- **Scroll-linked motion is locked to the scrollbar.** Of the sites that scrub, 14 of 18 lock it with
  no smoothing; the other four smooth it by 0.1-3 s. Reveals fire when the element's top is 80-95% of the way
  down the viewport, once.
- **How much moves.** A median of 130 elements are moved by script on a page, but they come from a
  few gestures: one split heading is 20-60 elements. The inspector's floor (8, warning under 16) is a
  floor, not a target.
- **Waiting is the most common cost.** 60 of 99 open on a loading screen, 26 of them with a counter.
  Half the usable pages were still unreadable 2.5 s after the browser said the page had loaded, a
  third at 4.5 s. The preloaders were not covering slow pages (their documents loaded faster than the
  rest) and the readers' design marks were the same whatever the wait; only usability fell. House
  version: no preloader, the message readable on the first frame, the load sequence over by 1.2 s.
- **Pins cost length.** Two in three scrolling pages hold something sticky or pinned. Those pages
  are twice as long (a median 16.6 screens against 7.5) for fewer words per screen (27 against 46).
  House version: at most two held stages, about one screen per step, three screens per stage.
- **Reduced motion is mostly missing.** 35 of 99 have any `prefers-reduced-motion` rule, 16 have
  three or more; 5 of 26 scroll-scrubbed scenes have one. Every recipe here keeps the finished state
  as the reduced state.


## 3. Four questions before any animation

1. **How often will someone see it?** Once per visit (hero load, a section reveal): it can take its
   time. Many times per visit (hover, menu, accordion): fast and small. Hundreds of times (keyboard
   actions, typing): no animation.
2. **What is it for?** Valid answers: it shows where something came from, it confirms an action, it
   keeps a change from being jarring, it explains how the product works, it is the signature moment.
   "It looks nice" is only valid for the signature moment.
3. **Which easing?** Entering or leaving: ease-out, so movement starts the instant the eye arrives.
   Moving between two places on screen: ease-in-out. Colour and opacity on hover: `ease`. Constant
   travel (marquee, progress): `linear`. `ease-in` makes interfaces feel slow because the first frames
   barely move; do not use it. The CSS keyword curves are weak, so use the tokens below.
4. **How long?** Press feedback 100–160ms. Hover 150–200ms. Menus and popovers 150–250ms. Dialogs and
   drawers 250–450ms. Section and hero reveals 500–900ms. Leaving is quicker than arriving (about 70%).


## 4. Tokens

```css
:root {
  --ease-out: cubic-bezier(0.22, 1, 0.36, 1);        /* entrances, moving hovers, UI under 600ms */
  --ease-expo: cubic-bezier(0.16, 1, 0.3, 1);        /* new: reveals of 800ms and longer, line rises, openings */
  --ease-in-out: cubic-bezier(0.76, 0, 0.24, 1);     /* wipes, panels, things that travel while visible */
  --ease-soft: cubic-bezier(0.33, 1, 0.68, 1);       /* slow scale and drift on photographs */
  --ease-exit: cubic-bezier(0.55, 0.055, 0.675, 0.19); /* new: something leaving for good, short */
  --t-press: 140ms;
  --t-hover: 180ms;
  --t-ui: 240ms;
  --t-reveal: 800ms;
  --t-open: 1200ms;                                  /* new: picture openings and clip wipes */
  --stagger-line: 90ms;                              /* new */
  --stagger-item: 70ms;                              /* new */
}
```

How the study bears on each:

- `--ease-out` (quint out) is in 28 stylesheets with its near twin and is the single most frequent
  chosen curve among transitions that ran. Keep it.
- `--ease-expo` is new. Expo out (`.16,1,.3,1` and `.19,1,.22,1`) is in 28 stylesheets and ran on 14
  sites, more than any other chosen family, and it is the curve the long reveals use: line rises,
  picture openings, card entrances of 0.9-1.6 s. Use it for anything at `--t-reveal` or longer; it
  replaces `--ease-out` in the masked headline and the reveal-on-scroll recipes.
- `--ease-in-out` (quart in-out) matches its family (14 stylesheets, 7 ran). Keep it for wipes,
  shutters, menus and page transitions.
- `--ease-soft` (cubic out) matches the cubic-out family (21 stylesheets, 13 ran), but the study uses it
  for interface moves of 0.3-0.8 s, where `--ease-out` already serves. Narrow it to slow scale and
  drift on photographs.
- `--ease-exit` is new. Ease-in is right for exactly one job: something that leaves for good (an
  outgoing caption, a replaced slide, a closing panel), short, at about 60-70% of the matching
  entrance. Never for anything the visitor is waiting to see.
- Not adopted: `.4,0,.2,1` (38 stylesheets) is a framework default, and overshoot curves (19) stay
  banned on interface elements.
- `--t-hover` stays at 180ms. The study's colour hovers run 200-300ms; a little quicker reads as
  more exact. A hover that moves something (a label roll, an arrow) takes `--t-ui` to 400ms.


## 5. Scroll behaviours, ranked

| Behaviour | Pages of 99 | What it serves | House version |
| --- | --- | --- | --- |
| Smooth-scroll library | 67 | A feeling of weight; makes scrubbed scenes easier to build | Optional, through `Stage.smooth()`: Lenis at lerp 0.1-0.14, off for touch and reduced motion |
| Held (sticky or pinned) stage | 44 | One picture or object carries several claims; chapters | Yes: the scroll scenes (`references/scenes.md`), two or three per page, one to four screens each; other sticky stages three screens at most |
| Split text | 40 | Lines and words arriving as they are read; hover rolls | Lines for headings and statements; words only for the ink fill; characters only for a heading of one to three words |
| Colour by chapter | 34 | Tells chapters apart without padding bands | Yes, as hard cuts at section edges; the header ink follows in 300ms |
| Scroll-scrubbed scene (camera, object, image sequence) | 26 | Explains a product by moving it | Yes, from the scene library, built on the shared stage with a finished composition for reduced motion |
| Parallax depth | 24 | Depth in collages; pictures drifting inside oversized frames | Travel under 8% of the element, pictures held at 106-110% in their frames |
| Marquee | 21 | Life on a static band | Existing "Edge-to-edge marquee": one per page, pausable |
| Masked line or word rise | 18 | Headings that arrive like set type | Yes: "Masked line reveal" on load, "Lines that rise on scroll" below the fold |
| Wheel drives a scene, no page scroll | 16 | Browsing one object | Not used (see 2.6) |
| Blur-in | 15 | Soft arrival | At most 8px of blur, 600ms, gone once settled; never on body text |
| Picture from inset frame to full-bleed | 14 | The hand-over from a type screen to the big picture | Yes: "Opening window", about one screen of scroll |
| Grey-to-ink text fill | 14 | Paces one statement | Yes, once per page, starting at 45% ink: "Ink fill" |
| Sheet slides over a held layer | 11 | Page-turn rhythm between chapters | Yes: new move "Sheet over a held picture" |
| Scramble or decode | 11 | A "code" voice | Not used (see 2.6) |
| Header ink by chapter | 10 | The fixed header stays legible | Yes, with colour by chapter |
| Horizontal track pinned to vertical scroll | 8 | Walking through rooms or a collection | Native drag row first; pinned only when the row is under three screens long, with keyboard support: "Sideways gallery" |
| Curtain footer | 8 | The page ends as a scene | Existing move |
| Rolling digits | 6 | Figures that arrive | Yes, for pages whose case is a handful of numbers: "Rolling figures" |
| Index with hover preview | 5 | Navigating work by name | Existing move, upgraded recipe |

Text, split by unit: characters on about 20 pages, lines on about 14, words on about 11. Character
splits serve short headings and button rolls; on long statements they leave fragments mid-scroll.
