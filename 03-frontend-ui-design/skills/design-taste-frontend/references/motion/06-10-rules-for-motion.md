# Motion & Animação: 10. Rules for motion

## 10. Rules for motion

1. **First frame.** The headline, the sentence and the picture are in the HTML and painted on the first
   frame. The load sequence starts without waiting for the load event and is settled by 1.2 s, with
   four elements at most.
2. **No preloader, no counter, no gate, no custom cursor, no wheel capture.** Smoothing only through
   `Stage.smooth()` (Lenis at lerp 0.1-0.14, off for touch and reduced motion): weight, never a page
   that keeps sliding after the hand stops.
3. **Curves.** `--ease-out` for anything under 600ms; `--ease-expo` for reveals of 800ms or more;
   `--ease-in-out` for wipes and things that travel; `--ease-exit` only for things leaving for good;
   `linear` for scroll-linked motion and loops; plain `ease` for colour. No overshoot.
4. **Durations.** Press 140ms; hover colour 180-200ms; hover that moves 300-400ms; menus 240ms; reveals
   700-900ms; picture openings 1,100-1,300ms; exits 60-70% of the matching entrance.
5. **Staggers.** Lines 80-110ms; list items 50-90ms; characters 20-40ms and only in a heading of one to
   three words; four steps at most in any one sequence.
6. **Reveals.** Fire once, when the element's top is 85-90% of the way down the viewport; rise 12-32px
   or from a line mask; nothing in view stays hidden for more than 900ms; nothing above the fold waits
   for scroll.
7. **Scroll scenes are where the page is bold.** The big moves come from the scene library
   (`references/scenes.md`): the direction sheet deals two or three per page, each built on
   `assets/scenes/stage.js`, each held for one to four screens, each with a phone version and a
   finished composition. Inside a scene the scene's own numbers apply (a picture may grow from a
   window to the whole screen, type may cross the stage, a camera may fly through a field of
   pictures); rules 8 and 10 still hold for the text a visitor is reading.
8. **Outside the scenes, scroll-linked travel stays quiet.** Linear and locked to the scrollbar;
   parallax under 8% of the element; scale between 0.94 and 1.15; built with scroll timelines inside
   `@supports`, static without them. Other held stages: sticky, about one screen per step, three
   screens at most, a line of text on every held screen.
9. **One of each.** One signature move (a dealt scene can be it); one moving picture; one marquee at
   most. A quiet section between two scenes, so each one lands.
10. **Text stays readable.** Fills start at 45% ink; dims no lower than 40%; blur at most 8px and gone
    once settled; nothing moves across text being read.
11. **Colour by chapter** as hard cuts at section edges; the fixed header's ink follows in 300ms.
12. **Horizontal motion.** The native drag row first; the pinned sideways gallery only for rows under
    three screens long, with keyboard support.
13. **Page to page.** View transitions, 480ms at most, off under reduced motion.
14. **Reduced motion.** Every hidden state lives inside `prefers-reduced-motion: no-preference`; the
    reduced page is the finished page; loops stop. Two in three award pages skip this, which is a
    reason to do it, not a licence to skip it.
