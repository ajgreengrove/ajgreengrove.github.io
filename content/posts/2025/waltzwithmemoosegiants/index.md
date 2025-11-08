+++
title = """
  Exploring "Waltz with Me Moose Giants"
  """
author = ["A J Greengrove"]
date = 2025-04-04T00:00:00+03:00
tags = ["Descending5ths", "7-6SuspensionChain", "Indugio", "Prinner"]
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-04-waltz-with-me-moose-giants-feature.webp"
tableofcontents = false
+++

Waltz with Me Moose Giants:
a chameleon motive, very useful for weaving counterpoint.

(Note to reader: these are my earlier blogposts heavy in music theory and meandering in thought. I'll slowly revisit and backlink posts to clarify things.)

Where’s all the 3/4 pieces in the music of our time?
Thematically this piece is an obvious dungeon synth parody.
Let's list some schemata for future improvisations.
in the 0:06 mark
we have a 7-6 suspension chain.
The bass follows a prinner,
and the melody could easily be replaced to follow one too.

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your gold coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=4025779485/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

The 0:18 mark lingers on a predominant harmony,
but doesn’t quite fit a stereotypical indugio.
I’ll still tag this piece with “indugio” for later comparisons.
The 0:35 mark begins a descending-fifths sequence,
however, in the first step the bass start from the inversion,
whereas in the continuation it starts from the root
of the underlying harmony.

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative c { c4. d8 c4 e }
\score {
  <<
    \time 3/4
    \new Staff { \clef "bass" \melody }
    \new TabStaff \with {} <<
      \new TabVoice { \melody }
    >>
  >>
}
```
</div>
</details>

<a id="figure--fig:04-04-waltz-with-me-moose-giants-feature.webp"></a>

{{< figure src="/images/2025/04-04-waltz-with-me-moose-giants-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"Waltz with Me Moose Giants\" Motif" >}}

The 0:42 mark chains another descending-fifths sequence,
this time with proper fifth leaps in the bass,
and the harmonic rhythm has doubled.
The 1:02 mark doesn’t quite initiate a fonte:
it should be read as a descending-fifths sequence
with inversions to my ear.

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/MRBYgu4i4-s" allowfullscreen title="YouTube Video"></iframe></div>
