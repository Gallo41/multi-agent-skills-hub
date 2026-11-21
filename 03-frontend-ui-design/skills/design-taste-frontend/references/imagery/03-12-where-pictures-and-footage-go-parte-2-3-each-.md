# Imagery & Vídeo: 12. Where pictures and footage go — Parte 2/3 (Each placement)

## 12. Where pictures and footage go (cont.: Each placement)
### Each placement

Each entry gives when to use it, the geometry at 1440×900, the phone version and how it fails.

**Split: picture in a half or two-thirds**

- *When.* A claim and the picture that proves it. The commonest way strong pages pair words and a
  picture.
- *Geometry.* The picture takes 42% of the width at the median (middle half 33–49%), up to two-thirds,
  at the full height of its section: 680×850 and 720×900 are typical. 38% of these pictures are
  portrait, mostly 4:5 or 3:4. The text starts on the 50% line (x = 720) or on the line where the
  picture ends, top-aligned or docked low, not centred in its half. Let the picture touch the viewport
  on its outer side: only about 30% do in the study, and the ones with margin on every side read as
  placed by default (section 5). Alternate sides only across three or more rows.
- *Phone.* Picture first at full width (4:5, or 4:3 for a landscape), text under it.
- *Fails.* The same split in three sections running; a picture floating in the middle of its half; a
  text column narrower than about 30 characters.

**Full-bleed band**

- *When.* One picture carries a whole screen between type screens: the place, the work, the object at
  full size. One every three or four screens at most.
- *Geometry.* 100% wide and one to one and a half screens tall (median 900px at 1440×900, middle half
  890–1,170px; ratios 1.4 to 1.9). For a slow parallax the picture is oversized in its frame by 4–10%
  (32–72px a side in the study) and travels no further than that. Text is a headline and one line, or
  nothing, docked 32–64px in from a corner over the calm part of the picture.
- *Phone.* A portrait re-crop that fills the screen, with `object-position` set on the subject; the
  text moves to the bottom quarter.
- *Fails.* 11–14px white text over a bright area; three bands with nothing between them; a band that
  only decorates.

**Picture held while text scrolls**

- *When.* A list, steps or a long paragraph that all belong to one picture. If the picture changes for
  each item, it is the index with a preview, below.
- *Geometry.* A 100vh sticky stage inside a section two to six screens long (runways of 1,800–5,400px
  are typical in the study). The picture holds one half (685×880 is a typical portrait), two-thirds, or
  the whole screen with the text passing over it on a solid panel. Text rows about 150px apart, so two
  or three are in view at once.
- *Phone.* Release the stick: picture first, text under it. If the picture swaps per item, keep it as
  a band in the top 40% of the screen.
- *Fails.* Long runways where the text has faded out and the held picture is all that is left (the
  panel recorded several empty stages on phones); body copy set on the held picture.

**Inset frame that grows**

- *When.* Once per page, for the film or picture the page is about, as the move from type into
  picture.
- *Geometry.* The frame starts centred at 35–50% of the width (549×366, 710×480 and 864×540 in the
  study) or as a 16px inset round a full screen, and grows to the full width and height over
  720–2,700px of scroll. Any corner radius goes to 0 as it reaches the edges. A headline sits above it
  before it starts; nothing else on the screen moves while it grows.
- *Phone.* Start at full width inside the 16px margins and grow to a full-bleed portrait, or skip the
  growth.
- *Fails.* The growth is the only thing on screen for three scrolls; a loading spinner or a blank box
  in the first frame (give it a poster, start loading before it enters); used twice.

**Uneven mosaic**

- *When.* A body of work, or one place seen several ways: five to twelve pictures.
- *Geometry.* Two columns, or rows of three on a 24-column grid. Two or three picture widths (for
  example 32%, 48% and 65% of the width, or 5, 7 and 12 columns), neighbours offset vertically by
  120–190px, 130–450px between rows, one or two ratios, a caption under each.
- *Phone.* One column alternating full width and about 70% width, or two columns of 120–180px tiles
  that keep the offsets.
- *Fails.* Random ratios with random offsets, which read as a stock dump. Captions in 9–12px mono with
  index numbers, the award-site habit: here the caption is one line in the text face at body size, with
  no number.

**Horizontal gallery**

- *When.* A set people browse in any order: products, rooms, events, a team.
- *Geometry.* Cards 25–35% of the width (435×326 with 20px gaps at 1440: three in full and a fourth
  cut by the edge), or a strip at one fixed height with mixed widths (576px tall in the study), or a
  slider whose centre slide is about 73% of the width with 170–180px of each neighbour showing. Always
  cut by the right edge so it reads as more. A marquee of pictures moves slowly: 60–120s per loop.
- *Phone.* One card at 75–80% of the width (290–300px of 390) with the next one showing; swipe.
- *Fails.* Arrows and no drag or swipe; a marquee of things people need to read; a carousel holding the
  page's one important picture.

**Panel sliding over a held picture**

- *When.* A change of chapter: the picture holds, and the next section rises over it.
- *Geometry.* The picture is sticky at 100vh; the next section's ground slides up over it at full width,
  its top edge straight or shaped from the subject (the study has the arch of a building's windows).
  Here it is a solid panel with square corners: no rounded sheet tops, no frosted glass.
- *Phone.* Unchanged.
- *Fails.* Decks of five or six cards whose earlier cards linger as slivers; stacking for its own sake.

**Even grid**

- *When.* An archive only (layout.md §5): a shop range, the team, a menu, the full list of work.
- *Geometry.* Two, three or four across, equal cells, 8–16px gaps, one ratio (4:5 is the commonest),
  the caption under each picture.
- *Phone.* Two across for products, one for work and people.
- *Fails.* Three equal cards as "features". Cards with a dark gradient at the foot so the label can sit
  on the picture, common in the study: here the label goes under the picture.

**Index with hover preview**

- *When.* A list of eight or more projects or clients where the names matter as much as the pictures.
- *Geometry.* Rows on a 45–80px pitch, names at 30–60px. One picture at a time, about a third of the
  width at 16:9 or a portrait 300–450px tall, at a fixed place (the right half from the 50% line, or
  the centre), swapped within 0.3s. A version that needs no mouse: the names scroll across a picture
  fixed at the centre and the picture shows whichever name is crossing it. In the study the picture
  sits on top of the names; here nothing lies on top of large type, so the names pass in front of it.
- *Phone.* No hover. Give each row a thumbnail about 100px wide, or use the scroll version.
- *Fails.* Pictures that never appear on a touch screen. Rows divided by hairlines, the award-site
  habit: here rows are separated by space, and the active row by ink or a change of ground.

**One picture on a field, or one small picture beside a statement**

- *When.* A pause in the page: a single portrait or object. Or a small picture that gives a statement
  a face.
- *Geometry.* A single centred picture at 3:4 and 75% of the viewport height, on a ground taken from
  the picture. Or a small picture 7–26% of the width (108–374px) beside, above or between the lines
  of a 48–136px statement, aligned to one of its lines.
- *Phone.* The picture above the statement at 60–100% of the width.
- *Fails.* Used as the default for every picture: a picture with equal margins on all sides reads as
  placed by default (section 5).

**Small pictures between words**

- *When.* A statement about the things themselves (materials, people, products), on a screen of its
  own.
- *Geometry.* Two to four chips in the statement, from the cap height to three-quarters of the type
  size tall and one to one and a half times as wide (50×46px in a 60px line; 113×75px between the two
  words of a 150px name), all from one shoot, square corners. Give them a width and height so the lines
  do not jump while they load.
- *Phone.* Keep them inline at the height of the text.
- *Fails.* More than four; chips from different shoots; a chip that carries information the words do
  not.

**Picture inside or behind display type**

- *When.* The object is the subject: a product, a building, a person.
- *Geometry.* A small picture window sits inside a block of 150–200px display type and later opens
  into the next screen; or the object stands behind the type, showing between and around the letters;
  or it touches the edge of the word without covering a letter. In the study the object more often
  stands in front and covers one or two letters, or a line of type runs behind a square picture; here
  nothing lies on top of a headline (the inspector fails large text a fifth or more hidden), so the
  type stays in front.
- *Phone.* Keep it, with the type at about 15vw, and check the word still reads.
- *Fails.* An object over the letters; type displaced or glitched by the picture.

**Cut-out object on a flat field**

- *When.* Products and objects. The highest mean score in the table, on 7 of the 36 top sites.
- *Geometry.* The object at 35–60% of the width on a flat ground taken from its own colours, standing
  on the bottom edge or running off one side, with the type behind or beside it.
- *Phone.* The object at 80–90% of the width under the headline.
- *Fails.* A render floating in a void with no ground; a drop shadow added to a cut-out (no resting
  shadows here; keep a contact shadow only if it was photographed).

**Scattered collage**

- *When.* Archives, ephemera, a festival of many small things. Sparingly: it is about as common on the
  lowest pages as on the top ones.
- *Geometry.* Six to sixteen pictures of 100–300px at a few sizes around a centred heading, never over
  it.
- *Phone.* Re-stack as overlapping pairs in one column.
- *Fails.* Tilted prints and stickers with offset shadows, common in the study and not a treatment
  here (section 6); pictures crossing the text.

**Small card docked in a corner**

- *When.* A standing pointer to the reel or to the next thing.
- *Geometry.* About 216×144 to 240×140, 30–43px from the corner; one per page.
- *Phone.* Drop it, or move it into the flow.
- *Fails.* Content scrolling under it; a second one.

**3D gallery**

- *What.* Pictures on a ring, sphere, helix or tunnel in a WebGL scene, turned by the wheel or by
  dragging.
- *In the study.* 12 sites, 4 of them among the 16 lowest; mean score 7.30 against 7.44, usability 5.9
  against 6.35.
- *Here.* Do not build one. Show the same pictures as an index with previews or a horizontal gallery.
