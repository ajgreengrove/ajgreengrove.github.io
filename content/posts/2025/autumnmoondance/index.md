+++
title = """
  Exploring "Autumn Moon Dance"
  """
author = ["A J Greengrove"]
date = 2025-04-07T00:00:00+03:00
tags = ["ConvergingCadence", "Descending5ths", "FalseRelation", "Prinner", "Romanesca"]
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-07-autumn-moon-dance-feature.webp"
tableofcontents = false
+++

Autumn Moon Dance:
This dance-like motive unfolds
in a "minor-variant romanesca".

(Note to reader: these are my earlier blogposts heavy in music theory and meandering in thought. I'll slowly revisit and backlink posts to clarify things.)

I’ll now list building-blocks / schemata / improvisation-related stuff.
The metrically stronger steps of the opening minor romanesca,
that would be the first, third and fifths steps,
or i, VI and iv -harmonies, receive a fifth leap,
which would function as applied dominants had they leading tones.
This reminds me of Elam Rotem’s Early Music Sources Video
showing how to insert material in between the framework notes,
or pillars of a renaissance romanesca
(<a href="#citeproc_bib_item_1">Rotem 2018</a>).

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your gold coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=811887296/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

The 0:10 mark
resembles a converging cadence somewhat,
although the bass differs in its direction of approach.
In the 0:27 mark we hear so-called commas;
or cadential gestures if you will.
In the 0:51 mark we hear a false relation (yay!).
For some reason to my ears I don’t get converging cadence vibes
as much as I did in the 0:10 mark.
Might be the yet another way the bass approaches the target notes.
The piece, bizarrely, ends in an out-of-the-blue plagal cadence
in the 01:03 mark.

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative g' { g4 fs8 e fs4 g fs d b c8 d e4 }
\score {
  <<
    \time 4/4
    \new Staff { \clef "treble" \melody }
    \new TabStaff \with {} <<
      \new TabVoice { \melody }
    >>
  >>
}
```
</div>
</details>

<a id="figure--fig:04-07-autumn-moon-dance-feature.webp"></a>

{{< figure src="/images/2025/04-07-autumn-moon-dance-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"Autumn Moon Dance\" Motif" >}}

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/Oo9s60DvxiU" allowfullscreen title="YouTube Video"></iframe></div>

<details>
<summary>References</summary>
<div class="details">

## References

<style>.csl-entry{text-indent: -1.5em; margin-left: 1.5em;}</style><div class="csl-bib-body">
  <div class="csl-entry"><a id="citeproc_bib_item_1"></a>Rotem, Elam. 2018. “The Romanesca.” Early Music Sources. [Accessed 2025-05-07]. <a href="https://www.earlymusicsources.com/youtube/romanesca">https://www.earlymusicsources.com/youtube/romanesca</a>.</div>
</div>
</div>
</details>
