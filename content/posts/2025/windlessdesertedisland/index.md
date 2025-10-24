+++
title = """
  Exploring "Windless Deserted Island"
  """
author = ["A J Greengrove"]
date = 2025-04-13T00:00:00+03:00
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-13-windless-deserted-island-feature.webp"
tableofcontents = false
+++

Windless Deserted Island:
"a first inversion harmony, or a phrygian clausula tenorizans?"

(Note to reader: these are my earlier blogposts heavy in music theory and meandering in thought. I'll slowly revisit and backlink posts to clarify things.)

I see this improvisation very much as a study
into the subtle sonority differences choosing inversions,
root chords and such.
I’ll try bite into the nitty-gritty details for once.

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=1987743916/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

After the opening minor chord,
we hear first inversion sonorities,
or 36-chords if you will.
This is contrasted in the 0:08 mark,
with the harmony led by parallel 7th chords.

In the 0:14 mark the melodic contour of the flourish
draws an open 11th or perhaps a 13th chord without a third:
to my ears, that omission is the most important detail in the flavor.
The 0:20 mark starts with the beginning material,
thus revealing a small-form period structure.

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative g { g8 ef'4 g,8 af bf2 af4 g4 ef'2 d8 c d1 }
\score {
  <<
    \time 4/4
    \new Staff { \clef "bass" \melody }
    \new TabStaff \with {} <<
      \new TabVoice { \melody }
    >>
  >>
}
```
</div>
</details>

<a id="figure--fig:04-13-windless-deserted-island-feature.webp"></a>

{{< figure src="/images/2025/04-13-windless-deserted-island-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"Windless Deserted Island\" Motif" >}}

The 0:28 mark, in contrast to the earlier material,
closes the period in first inversion chord,
with the bass taking the melodic motive.
Notice how phrygian this moment sounds:
one could interpret this as a tenorizans or tenor clausula,
but perhaps not a cadence,
since the moment is quite instabile.

Afterwards the improvisation leans on the shift to the upper register.
One could analyze further the harmonies occurring here,
but in my opinion it suffices to say that
previous material is assembled according to the taste of the improviser.

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/lkvI1gsmTf8" allowfullscreen title="YouTube Video"></iframe></div>
