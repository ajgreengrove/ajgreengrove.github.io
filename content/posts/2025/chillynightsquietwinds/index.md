+++
title = """
  Exploring "Chilly Nights, Quiet Winds"
  """
author = ["A J Greengrove"]
date = 2025-04-02T00:00:00+03:00
tags = ["Descending5ths", "Prinner", "Romanesca"]
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-02-chilly-nights-quiet-winds-feature.webp"
tableofcontents = false
+++

Chilly Nights, Quiet Winds:
a meandering motive searchs out and seeks,
perhaps for a warmer breeze.

(Note to reader: these are my earlier blogposts heavy in music theory and meandering in thought. I'll slowly revisit and backlink posts to clarify things.)

If the previous piece of this album,
"False Relations in an English Town" more obviously refer
to renaissance musical styles, this one does it much more subtly.
Not only the motif but the underlying harmonies
are perhaps reminiscent of soundtrack music.

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=1851901797/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

In the 0:06 mark,
and then again 0:11 mark both initiate a descending-fifths sequence,
the latter instance going farther.
Of note is that from the relative major key perspective
they are the ubiquitous ii-V-I -progressions, familiar from jazz.

If we call the "motif" the cover of the book,
then the way the motif is weaved,
or the text inside the book,
reminds me more of Francisco Spinacino’s recercares;
which literally means "to search out; to seek".

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative cs' { cs4 d cs d fs e d cs a b a b fs'1 }
bass = \relative b, { b1~ b g1~ g }
\score {
  <<
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

<a id="figure--fig:04-02-chilly-nights-quiet-winds-feature.webp"></a>

{{< figure src="/images/2025/04-02-chilly-nights-quiet-winds-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"Chilly Nights, Quiet Winds\" Motif" >}}

Even if the bass-melody building blocks of this piece
do not follow textbook examples of schemata,
I will list what I perceive to happen and might aid
in future improvisations:
the opening i-VI-IV would be what I’ve sometimes called
a modern romanesca, minor variant.
I think so because wikipedia page for I-vi-IV
unknowingly lists romanescas in its classical examples.

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/8TyT7nQjC4Y" allowfullscreen title="YouTube Video"></iframe></div>
