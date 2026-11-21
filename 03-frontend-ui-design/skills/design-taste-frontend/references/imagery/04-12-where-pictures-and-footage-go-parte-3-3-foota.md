# Imagery & Vídeo: 12. Where pictures and footage go — Parte 3/3 (Footage, Crops and treatment, Text over pictures...)

## 12. Where pictures and footage go (cont.: Footage)
### Footage

**What the study measured.**

- Footage on 38 of 91 sites (42%): 18 of the 36 top sites, 19 of the 39 in the middle, 1 of the 16
  lowest. A site with footage carries a median of three or four clips (middle half 1–8).
- Footage covers at least half of the first screen on about a quarter of the sites, and is full-bleed
  on nearly all of them.
- Clips are short: median 10s, middle half 5–14s; 61% run 10s or less and 88% 20s or less.
- Every decorative clip is muted, loops, plays inline and has no controls. The autoplay attribute is on
  44% of clips; the rest are started by script, mostly as they come into view.
- Only 31% of clips have a poster (13 of the 38 sites). The rest show a blank or grey box until they
  play, and the panel recorded those as blank first paints. Here a poster is required (section 11).
- Sources: 1920×1080 is the commonest, then 1280×720; tall clips at 450×800 or 540×960 for phones and
  portrait tiles. Median source width 1,080px.
- On the page: 16:9 41%, square 19%, portrait (4:5 to 9:16) 25%, 4:3 or 3:2 12%. Corners square on 75%
  (the rest 8px or less, or 20–32px). `object-fit: cover` on 84%, contain on 16% (product strips, letterboxed
  films).

**Where it goes.**

- **Hero background:** full-bleed, cover, often oversized by 1–25% so a drift or zoom never shows an
  edge. Either one slow take or a montage cutting every second or two.
- **Inline, as a picture:** in splits, tiles and cards, at about a third of the width (median 33%,
  middle half 24–45%); a third of these clips are under a quarter of the width and fewer than one in
  ten is full width. Slow, near-still subjects (water, skin, light, a turning object) read as living
  photographs and sit well among stills.
- **The frame that grows** (above), for a reel.
- **A docked card** (above): one small clip in a corner.
- **On hover:** only two or three sites play clips on hover, all of them in an index or list. Nothing
  that matters should play on hover only; phones have no hover.
- **Full films:** about ten sites offer a full film behind a play button that opens a player with
  controls. None autoplays it.
- **Sound:** six sites offer sound behind a toggle; no clip starts with sound.

**How text sits on it.**

- Of about 30 sites with a full-bleed picture or film behind text on the first screen, about 14 set the
  type straight on it and rely on the footage being graded dark where the type sits; about 10 dim it
  (to half brightness, under a 30–40% dark layer, or with a dark fade along the bottom 180–590px);
  about 6 keep the text off the picture, above it or on a solid card.
- What goes on footage in the study is the name or a headline at 47–136px and one short line, docked
  bottom-left or centred. Where body text at 11–14px went on footage or a busy photograph, the panel
  named it as a fault, on top-scored sites too.
- Here: one headline, one line and one action on footage at most, and never body text. Check contrast
  where the type sits across the whole loop, not only on the poster; if any frame drops below 4.5:1
  (3:1 for type of 24px and up), use the scrim in section 6 or a solid band.

**On the phone.** Footage re-crops to a full-screen portrait (a separate tall source, or
`object-position` on the subject); inset frames go full-bleed. One site in the study adds a 40% scrim
on the phone only, where the type covers more of the picture.

### Crops and treatment

- **Ratios.** Of 1,356 pictures and clips measured: 4:5 21%, 16:9 19%, 1:1 16%, 16:10 10%, 3:2 7%, 2:3
  5%, 4:3 5%, 5:4 4%, 3:4 3%, wider than 2:1 6%, 9:16 or taller 3%. Landscape 52%, portrait 33%,
  square 15%.
- **Two ratios do most of the work.** On sites with four pictures or more, the two commonest ratios
  hold 76% of the pictures. The others (five ratios in all at the median) are exceptions with a reason:
  one tall portrait in a run of landscapes, one wide band.
- **Square corners** on 94% of pictures; 62 of the 68 sites with pictures in the page keep at least 80%
  of them square. Where corners are rounded, it is 5px or less on two-thirds of them, or 20–32px on
  card interfaces, one value per site.
- **Cover.** `object-fit: cover` on 78%, contain on 10% (a product on a tile, a letterboxed film).
- **Untouched.** CSS filters touch pictures on only 9 sites, mostly for hover states. A handful use
  black-and-white photography as a set; two multiply scanned paper onto the ground. Several keep the
  interface black, white and grey and let the photographs carry all the colour.
- **Common in the study, not treatments here** (section 6): a fixed grain layer over the whole page
  (about a third of the sites), duotone or tinted photographs, blurred copies behind a picture as a
  glow, tilted prints and stickers with offset shadows.
- **Oversize only by the distance it moves.** 22 sites move pictures with the scroll, oversizing them by
  1–25%. Oversize by the travel and no more, on one picture per screen.
- **Resolution.** The study serves pictures at a median 1.9 times their CSS width, but 17% are served
  smaller than they are shown and full-width pictures at a median of only 1,440px. Here: twice the CSS
  width, capped at about 2,400px (section 4).

### Text over pictures

- In the study, text sits on pictures often and is checked rarely: about 28 notes record text set
  straight on a picture with no scrim, and the faults of 16 sites include text lost over pictures: 8–14px
  labels and body over photographs, and navigation in a difference blend or with no backing passing
  over them.
- Where it works, the text is display size and sits over the calm part (sky, a dark wall, the shadow
  side), docked in a corner or along one edge. Two other forms in the study: a solid card in the
  ground colour inset over the photograph and carrying the heading, and text on the white of a picture
  that fades into the page.
- Here: on a picture put only display text, one short line and one action. Body text, captions and
  labels go beside or under it. Measure contrast at the text's own position (4.5:1, or 3:1 for 24px and
  up). If it fails, move the text to a calmer part, put it on a solid card in the ground colour, or use
  the scrim in section 6. A fixed navigation that passes over pictures gets a solid band, or hides
  while scrolling down.

### Rules for a generator

1. **About a third of the page is picture.** Across the scrolled screens, pictures fill 30–40% of the
   area, and at least one screen in four carries no picture (top sites: 30% and 28%).
2. **A picture leads its screen or stays small.** A leading picture takes at least 60% of its screen;
   an accent stays under 10% of it. Avoid screen after screen of pictures at 20–40%: in the study 42% of
   screens are 0% and 19% are 90% or more.
3. **Three to five placements per page,** and no two neighbouring sections with the same one. Sites
   with two or fewer average 7.31, sites with three or more about 7.5.
4. **Six to twelve pictures, never fewer than four.** Study median 7; top sites 4–27; lowest 2.
5. **Two ratios for at least 75% of the pictures** (76% in the study), a third only for a deliberate
   exception. Defaults: 4:5 for portraits, 16:9 or 3:2 for landscapes.
6. **Square corners on every picture** (94% in the study). If the direction rounds them, one radius of
   4px for every picture and clip.
7. **Split pictures take 42–50% of the width, or two-thirds,** at the full height of the section and
   touching the viewport on their outer side; the text starts on the 50% line. On the phone the
   picture goes first, full width.
8. **Full-bleed bands are 100% wide and 100–150vh tall,** one every three or four screens, oversized by
   10% at most for parallax, with text only in one corner at least 32px in. On the phone, re-crop to a
   full-screen portrait.
9. **One inset frame that grows per page,** from 35–50% of the width to the full screen over
   720–2,700px of scroll, with nothing else moving on that screen.
10. **Horizontal galleries show three cards and a cut fourth:** cards 25–35% of the width with 16–20px
    gaps; on the phone one card at 75–80% of the width with the next one showing.
11. **One moving picture per screen.** Clips of 5–15s (median 10s), muted, looped, inline, with a
    poster, paused out of view; a hero source of 1920×1080 under 10MB, inline clips at 1280×720 or
    smaller under 5MB.
12. **Only display text on a picture:** a headline, one line and one action at most, with contrast
    measured at the text's position across the whole loop. Body text, 16px or more, goes beside or
    under the picture, never on it.
