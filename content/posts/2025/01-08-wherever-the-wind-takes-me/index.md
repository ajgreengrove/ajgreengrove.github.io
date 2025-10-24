+++
title = """
  Exploring "Wherever The Wind Takes Me"
  """
author = ["A J Greengrove"]
date = 2025-01-08T22:32:00+02:00
tags = ["2Up3Down", "ConvergingCadence", "Fonte", "Romanesca"]
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/01-08-wherever-the-wind-takes-me-feature.webp"
tableofcontents = false
+++

Arpeggiating a single motive
results in a deceptively simple prelude.
Let's delve into this audio dungeon -
timestamps as a map, motif as a compass.

(Note to reader: these are my earlier blogposts heavy in music theory
and meandering in thought.
I'll slowly revisit and backlink posts to clarify things.)

I came up with this piece after getting fed up
with the nigh impossible choral-style anti-guitarisms in the post
[Exploring "Angels Carried Me Away"]({{< relref "angelscarriedmeaway" >}})
in this same album.
To those familiar with early music improvisation concepts,
here I list the scale-degree schemata (or partimento concepts)
that I think might be useful for future improvisations.

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=3985105932/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

In the 0:14 mark begins a "moti del basso" of a 2-up-3-down sequence,
which ends at 0:23 mark. Moti del basso is a partimento term,
literally "movement of the bass", basically sequences.
The modal addition that gives the harmony a dorian sound steals the show:
I wouldn't call it a conventional 2-up-3-down sequence;
or perhaps it speaks of the chameleon nature of the bass movement.

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative c { c8 g' c d e d c g }
\score {
  <<
    \new Staff {
      \clef "bass"
      \melody
    }
    \new TabStaff \with {} { \melody }
  >>
}
```
</div>
</details>

<a id="figure--fig:01-08-wherever-the-wind-takes-me-feature.webp"></a>

{{< figure src="/images/2025/01-08-wherever-the-wind-takes-me-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"Wherever The Wind Takes Me\" Motif" >}}

The 0:28 mark begins a large-scale fonte,
where each step lasts for four bass steps.
The fonte ends on the 0:41 mark.
Although I wouldn't read this as a proper Fonte Prinner,
the harmonies still cycle through a descending-fifths sequence.
The 0:41 mark begins a romanesca with the falling bassline,
but continues practically through the entire scale.
In the 1:00 mark occurs a converging cadence.

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/t-HdAvsmOeM" allowfullscreen title="YouTube Video"></iframe></div>
