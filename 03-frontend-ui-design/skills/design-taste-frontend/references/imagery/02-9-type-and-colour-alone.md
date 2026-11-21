# Imagery & Vídeo: 9. Type and colour alone | 10. Markup and credits | 11. Video | 12. Where pictures and footage go — Parte 1/3 (How much of each screen is picture, How many, The placements, ranked)

## 9. Type and colour alone

This is a legitimate design, not a gap to disguise. Only 7 of the studied sites use no imagery at all,
and they hold their own: a median panel score of 7.5 against 7.2 for the whole set.

- Make the typography the image: one statement at 10–14vw, a list set at 5vw, numerals at display size.
- Use colour at scale: a full field, an inverted section, a two-field split.
- Use the subject's own shape as one flat motif if the direction calls for it (a circle, an arc, a
  notch), drawn in CSS, cropped by the viewport.
- Do not add: icons in squares, abstract gradients, dot grids, wave dividers, floating shapes, emoji,
  generic line illustrations, or an empty box where a picture "will go".


## 10. Markup and credits

A found picture, downloaded into the project with `--get`, used as the hero:

```html
<img src="assets/fig-engraving.jpg" width="1920" height="2807" fetchpriority="high" decoding="async"
     alt="Hand-coloured engraving of a fig cut open, with its flowers and seeds, in black, pink and green">
```

A dealt photograph further down the page:

```html
<img src="https://picsum.photos/id/626/2400/1500" width="2400" height="1500"
     alt="Red and white lighthouse in a turquoise sea below a chalk cliff" loading="lazy" decoding="async">
```

The credits, as `--credits` prints them, in the footer:

```html
<p class="credits">Pictures: <a href="https://commons.wikimedia.org/wiki/File:Fig_(Ficus_carica_L.);_57_segments_of_flowers_and_fruits_at_Wellcome_V0043000.jpg">“Fig (Ficus carica L.): 57 segments of flowers and fruits”</a>, <a href="https://creativecommons.org/publicdomain/mark/1.0/">public domain</a>, via Wikimedia Commons.</p>
```

- Always `width` and `height` (or `aspect-ratio` in CSS) so nothing jumps while loading.
- `loading="lazy"` on everything except the hero image, which gets `fetchpriority="high"`.
- `alt` describes the picture in plain words. Decorative repeats get `alt=""`. The script's suggested
  alt is the archive's title; rewrite it to say what the picture shows.
- A coloured `background-color` on the image container (the ground or surface tone) so the layout is
  whole before the image arrives.
- The credit line is part of the footer's design, at full contrast, with its links. Set it at the body
  size; one step smaller only on a page with plenty of running text, because a long credit line in
  small type can become the page's most common text size and fail the inspector's body-size check.
  One line for all pictures; no credit captions laid over the pictures themselves. Credit only the
  pictures the page still uses.
- A broken image fails the inspector. Check every picture in the screenshots.


## 11. Video

A moving picture of the subject's world can carry a section the way a photograph does: the river at
the end of the street, the roaster's drum turning, a timber frame going up. `assets.mjs --video`
searches real footage without keys: Wikimedia Commons (every video there comes with web-sized
transcodes; the best source for short clips), the Internet Archive's Prelinger Archives (industrial,
educational, city and home films from the 1920s to the 1970s, mostly public domain and mostly long)
and NASA (the Earth from orbit, launches, aircraft, laboratories). The rest of the Internet Archive is
left out: anyone can upload there, and the licence claims are unchecked.

```bash
node <skill>/scripts/assets.mjs "coffee roasting" --video
node <skill>/scripts/assets.mjs "river" --video --source commons,nasa --orientation landscape
node <skill>/scripts/assets.mjs --get commons:49769620        # the clip, a poster frame, the credit
```

It takes a rendition of 720p or smaller (`--res` changes that), lists short clips first, prints each
clip's length and file size, and flags anything over 25 MB or longer than a minute. `--get` refuses a
clip over 25 MB unless you pass `--max-mb`, and saves the source's still frame beside it as the
poster (Commons and NASA; the archive's own stills are too small). An archive film of ten minutes is
too heavy as it stands: trim a few seconds from it with ffmpeg if it is installed, or choose a
shorter clip. Licences, credits and honesty work exactly as for pictures (section 3).

**Choosing a clip.**

- **Short:** 5 to 20 seconds that loop without a visible jump: water, smoke, a turning drum, traffic,
  leaves, a crowd from far away. Watch it to the end before choosing.
- **Light:** under about 5 MB for a section and 10 MB for a hero. In the study sources are 1920×1080
  (the commonest) or 1280×720, median length 10 s; 720p is plenty behind type. For a full-bleed hero,
  cut a tall 720×1280 version for the phone, or set `object-position` on the subject.
- **Clean:** no slate, title card, logo, watermark or burned-in caption. NASA and archive films often
  open with a slate, and the source's poster frame may be that slate. No recognisable person who could
  be taken for the client's staff or customers.
- **Never the client's own:** a found clip of a roastery is not this roastery.
- **Found clips: one per page, two at most.** A found clip shows the world around the client; a
  third makes a theme of it. The project's own footage can carry more: in the study a site with
  footage carries a median of three or four clips. Either way, **one moving picture per screen**;
  two loops running side by side are noise.

**On the page.**

- Muted, looping, inline, with a poster and a fixed size, as `--get` prints it:
  `<video autoplay muted loop playsinline preload="metadata" poster="assets/river-poster.jpg"
  width="854" height="480" aria-hidden="true"><source src="assets/river.webm" type="video/webm"></video>`.
  No sound and no controls on a decorative loop. `aria-hidden` because it is decoration: whatever the
  clip says that matters belongs in the text beside it.
- The poster shows before the clip plays, on slow connections and under reduced motion, so it must
  work as a picture on its own. If the source's still is a slate or a blur, take a frame from the clip
  yourself or use a found picture.
- In the study only 31% of clips had a poster, and the panel recorded the blank and grey boxes
  before they played as faults. Here every clip has one.
- Play a clip only while it is in view, and none under `prefers-reduced-motion: reduce`, where the
  poster shows instead:

  ```html
  <script>
    const calm = matchMedia('(prefers-reduced-motion: reduce)');
    const clips = [...document.querySelectorAll('video[autoplay]')];
    const inView = new Set();
    const sync = (v) => {
      if (calm.matches) return;
      if (inView.has(v)) v.play().catch(() => {}); else v.pause();
    };
    const settle = () => {
      for (const v of clips) {
        if (calm.matches) { v.removeAttribute('autoplay'); v.pause(); v.load(); }
        else if (inView.has(v)) v.play().catch(() => {});
      }
    };
    const watch = new IntersectionObserver((entries) => {
      for (const e of entries) {
        if (e.isIntersecting) inView.add(e.target); else inView.delete(e.target);
        sync(e.target);
      }
    }, { threshold: 0.2 });
    clips.forEach((v) => watch.observe(v));
    settle();
    calm.addEventListener('change', settle);
  </script>
  ```

- Crop and place it like a photograph (sections 5 and 6): `object-fit: cover`, one ratio, square
  corners, no frame, a ground-coloured `background-color` while it loads.
- Never under body text. On a clip put a headline, one line and one action at most, and check the
  contrast where they sit across the whole loop, not only on the poster: footage that is dark at
  one second can be bright at the next. If any frame drops below 4.5:1 (3:1 for 24px and up), use the
  scrim in section 6 or move the text off the clip. Nothing lies on top of a headline or a statement.
- It is motion: let it be the page's one moving thing, or sit in a section where nothing else moves.
- Credit it with the pictures: `--credits` prints one footer line for both ("Pictures and footage:")
  and the list for the report, with each clip's length.
- Where footage goes (hero background, inline loop, the frame that grows, a docked card), and what
  the study measured about it: section 12. Nothing that matters plays on hover only, and a full film
  with sound sits behind a play button that opens a player with controls.


## 12. Where pictures and footage go

What strong pages do with their pictures, measured on the latest 100 Awwwards Sites of the Day
(10 July to 17 October 2026, captured at 1440×900 and 390×844). 91 were usable. A panel described where
every picture sat and scored each site the Awwwards way, and a script measured how much of each screen
is picture. "Top" means a panel score of 7.5 or more (36 sites), "lowest" under 7.3 (16 sites). The
scores sit close together (6.7 to 7.9) and a single score carries about half a point of noise, so read
the links between a placement and the score as leanings, not laws.

### How much of each screen is picture

- **All or nothing.** Counting photographs, footage and picture backgrounds (not canvases), the median
  scrolled screen in the study is 16% picture, but few screens sit near it: 42% hold no picture and
  19% are 90% picture or more. Only 19% fall between 20% and 60%. A picture either leads its screen or
  stays out of it.
- **About a third, with rests.** On the 67 sites that put pictures in the page, the average screen is
  36% picture (middle half 18–69%). Top sites sit at 30% and leave 28% of their screens with no picture
  at all: screens of type are the rests between picture screens.
- **The first screen.** A picture covers at least half of it on 41% of the sites and nearly all of it
  on 32%. A full-bleed photograph or film is the whole first screen on 29%; footage is the main hero
  picture on about a quarter.
- **A scene is not a picture.** 66 of the 91 keep a WebGL canvas over at least 30% of the screen, so
  counting canvases the median screen is entirely covered. On the lowest-scored sites that canvas is
  often all there is: the five lowest usable sites (6.7 to 7.0) draw everything in it and put two
  pictures at most in the page.
- **Text is small in area.** The median screen is 8% text. Type is set large and sparse around the
  pictures, not packed beside them.
- **Off-centre.** Measured per section across the crawled sites, pictures sit to the left or right
  939 times, centred 273 times, and full-bleed or behind text 269 times.
- **The phone carries more picture,** not less: 19% of a phone screen at the median, and 27% of the
  first phone screen against 17% on desktop. Full-bleed pictures re-crop to portrait and fill the
  screen; splits put the picture first at full width.

### How many

- **Seven pictures per page** at the median (middle half 1–25). Top sites 8 (middle half 4–27), lowest
  2 (0–4). The floor in SKILL.md step 6, four and usually six to twelve, is the strong half of the
  study.
- **Footage on 42% of sites:** on half of the top sites and half of the middle band, and on one of the
  16 lowest. A site with footage carries a median of three or four clips.
- **Three to five placements.** Sites that use two or fewer of the placements below average 7.31;
  sites that use three or more average about 7.5. The median top site uses four, the median lowest
  site one. Where the pictures go changes from section to section on a designed page.

### The placements, ranked

| Placement | Sites (of 91) | Top (of 36) | Lowest (of 16) | Mean score with / without |
| --- | --- | --- | --- | --- |
| Split: picture in a half or two-thirds | 32 | 17 | 2 | 7.50 / 7.38 |
| Horizontal gallery | 32 | 13 | 4 | 7.44 / 7.41 |
| Full-bleed band between sections | 31 | 14 | 3 | 7.48 / 7.40 |
| Full-bleed picture or film as the first screen | 26 | 10 | 3 | 7.45 / 7.41 |
| Uneven mosaic | 25 | 11 | 1 | 7.49 / 7.40 |
| Picture held while text scrolls | 23 | 12 | 1 | 7.52 / 7.39 |
| Footage behind text | 22 | 8 | 2 | 7.46 / 7.41 |
| Even grid | 20 | 11 | 2 | 7.48 / 7.41 |
| Scattered collage | 19 | 6 | 3 | 7.47 / 7.41 |
| Panel sliding over a held picture | 19 | 8 | 2 | 7.48 / 7.41 |
| Inset frame that grows | 17 | 7 | 1 | 7.52 / 7.40 |
| One picture centred on a field | 14 | 5 | 3 | 7.38 / 7.43 |
| Cut-out object on a flat field | 13 | 7 | 1 | 7.57 / 7.40 |
| Index with hover preview | 12 | 6 | 1 | 7.49 / 7.41 |
| 3D gallery | 12 | 4 | 4 | 7.30 / 7.44 |
| Small card docked in a corner | 11 | 5 | 1 | 7.47 / 7.42 |
| Picture inside or in front of display type | 11 | 7 | 1 | 7.50 / 7.41 |
| One small picture beside a statement | 8 | 5 | 0 | 7.56 / 7.41 |
| Small pictures between words | 6 | 4 | 0 | 7.52 / 7.42 |

- Found on top pages more than their share and almost never on the lowest: the split, the picture held
  while text scrolls, the uneven mosaic, the inset frame that grows, the cut-out on a flat field, and
  pictures set with the type (the last three rows together: 24 sites, 16 of them top, 1 lowest).
- The horizontal gallery is common in every band and lifts nothing. Use it where browsing is the point.
- The 3D gallery is the one placement that goes with lower scores, and with the lowest usability in the
  table (5.9 against 6.35 for all sites).
