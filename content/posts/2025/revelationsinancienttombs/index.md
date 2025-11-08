+++
title = """
  Exploring "Revelations in Ancient Tombs"
  """
author = ["A J Greengrove"]
date = 2025-04-09T00:00:00+03:00
tags = ["Romanesca"]
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-09-revelations-in-ancient-tombs-feature.webp"
tableofcontents = false
+++

Revelations in Ancient Tombs:
what happens when you apply “chroma”,
Gesualdo-style, on a romanesca?

(Note to reader: these are my earlier blogposts heavy in music theory and meandering in thought. I'll slowly revisit and backlink posts to clarify things.)

To be fair, I should be talking more broadly of
the Neapolitan school of composers, not Carlo Gesualdo alone.
But we’re talking a niche within a niche within a... you get the point.
However, this is a romanesca, with “chroma” applied to it:
Elam Rotem describes chroma in his Early Music Sources YouTube video,
and the topic is Carlo Gesualdo
(<a href="#citeproc_bib_item_1">Rotem 2021</a>).

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your gold coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=2252574976/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

Important to clarify, this improvisation is less early music stylistic,
and applies more modern musical language;
it is not a Gesualdo-style pastiche at all.
However, improvisationally, the piece is very straightforward:
it explores quasi-arpeggiating the underlying framework notes.

For the future, I would love to come back regarding
more experiments with the renaissance concepts of chroma
and musica ficta, applied in unconventional places.
I will have more to add here later.

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative ef' { ef1 ds c b af }
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

<a id="figure--fig:04-09-revelations-in-ancient-tombs-feature.webp"></a>

{{< figure src="/images/2025/04-09-revelations-in-ancient-tombs-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"Revelations in Ancient Tombs\" Motif" >}}

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/X-PEnlCeaaw" allowfullscreen title="YouTube Video"></iframe></div>

<details>
<summary>References</summary>
<div class="details">

## References

<style>.csl-entry{text-indent: -1.5em; margin-left: 1.5em;}</style><div class="csl-bib-body">
  <div class="csl-entry"><a id="citeproc_bib_item_1"></a>Rotem, Elam. 2021. “Who’s Afraid of Carlo Gesualdo?” Early Music Sources. [Accessed 2025-04-09]. <a href="https://www.earlymusicsources.com/youtube/gesualdo">https://www.earlymusicsources.com/youtube/gesualdo</a>.</div>
</div>
</div>
</details>
