+++
title = """
  Exploring "Fireflies Circling in the Rain"
  """
author = ["A J Greengrove"]
date = 2025-04-03T00:00:00+03:00
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-03-fireflies-circling-in-the-rain-feature.webp"
tableofcontents = false
+++

Fireflies Circling in the Rain:
The flourishing motif changes along with the underlying modes or scales.

(Note to reader: these are my earlier blogposts heavy in music theory and meandering in thought. I'll slowly revisit and backlink posts to clarify things.)

As atmospheric as the improvisation may have turned out,
theory-wise I don’t have too much to say on this one.
But since this piece doesn’t rely on early music concepts per se,
I will use modern names for the modes or scales
that the motive cycles through:
first aeolian, followed by phrygian;
then dorian, and finally locrian.

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your gold coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=854855959/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative e' { e8 \tuplet 3/2 8 { d16 e d c d c b c b a b a g a g } fs8 r }
\score {
  <<
    \new Staff { \clef "bass" \melody }
    \new TabStaff \with {} <<
      \new TabVoice { \melody }
    >>
  >>
}
```
</div>
</details>

<a id="figure--fig:04-03-fireflies-circling-in-the-rain-feature.webp"></a>

{{< figure src="/images/2025/04-03-fireflies-circling-in-the-rain-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"Fireflies Circling in the Rain\" Motif" >}}

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/9s0DO9TimpU" allowfullscreen title="YouTube Video"></iframe></div>
