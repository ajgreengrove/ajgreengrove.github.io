+++
title = """
  Exploring "Goodbye Faraway Peaceful Town"
  """
author = ["A J Greengrove"]
date = 2025-04-10T00:00:00+03:00
tags = ["Romanesca"]
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-10-goodbye-faraway-peaceful-town-feature.webp"
tableofcontents = false
+++

Goodbye Faraway Peaceful Town:
instead of a shepherd in Arcadia,
I associate romanesca with town themes.

(Note to reader: these are my earlier blogposts heavy in music theory and meandering in thought. I'll slowly revisit and backlink posts to clarify things.)

The first half is stepwise romanesca,
the latter half if in many repetitions the same as in Pachelbel’s canon.
Later in the piece these latter halves tend
to ride the descending-fifths sequence rollercoaster.

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=835945168/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

In the 0:30 mark
the texture starts to sound quite galant.
However, I do not understand what the hell
is the purpose of the major 7th sonority
in the 01:00 mark and the subsequent 7th chords?
It does saturate and sweeten things a bit,
but incongruently so.
Well, perhaps the cool ending minor-major7th sonority
permits the use of such oversaturated harmonies.

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative ef' { e1 d c b a }
bass = \relative c { c1 b a g f }
\score {
  <<
    \time 4/4
    \new Staff { \clef "treble" \melody }
    \new Staff { \clef "bass" \bass }
    \new TabStaff \with {} <<
      \new TabVoice { \melody }
      \new TabVoice { \bass }
    >>
  >>
}
```
</div>
</details>

<a id="figure--fig:04-10-goodbye-faraway-peaceful-town-feature.webp"></a>

{{< figure src="/images/2025/04-10-goodbye-faraway-peaceful-town-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"Goodbye Faraway Peaceful Town\" Motif" >}}

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/g3rUl50uCdY" allowfullscreen title="YouTube Video"></iframe></div>
