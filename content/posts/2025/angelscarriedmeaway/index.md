+++
title = """
  Exploring "Angels Carried Me Away"
  """
author = ["A J Greengrove"]
date = 2025-04-15T00:00:00+03:00
tags = ["7-6SuspensionChain", "ConvergingCadence", "Fonte"]
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-15-angels-carried-me-away-feature.webp"
tableofcontents = false
+++

Angels Carried Me Away:
choral style improvisation with the guitar = PITA.

(Note to reader: these are my earlier blogposts heavy in music theory and meandering in thought. I'll slowly revisit and backlink posts to clarify things.)

This was the first improvisation,
that "started it all".
As if all this "early music improvisation" concept
hasn’t been years in the making...
When it comes to more specific improvisation technique,
this piece relies both on scale-degree schemata (or partimento)
building blocks, but equally on weaving counterpoint.

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your gold coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=2580527851/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

After the motif descends in the melody,
which I’ll now call the soprano voice,
the bass hops in to create an implied 7-6 suspension chain,
as the middle voice fills in the harmony.
In the 0:10 mark,
it is bass voice’s turn to state the (soprano) motif.

As upon the motif in the bass starting,
the dyad leaves open whether the harmony
is a predominant ii or a dominant V43 already,
but becomes a dominant thereforth.
In the 0:16 mark we hear a converging cadence.

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative e' { e4 d c b a }
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

<a id="figure--fig:04-15-angels-carried-me-away-feature.webp"></a>

{{< figure src="/images/2025/04-15-angels-carried-me-away-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"Angels Carried Me Away\" Motif" >}}

In the 0:37 mark we hear a fonte,
albeit to my ear in a rather sly or sleek,
unobvious manner.

The 1:03 mark,
instead of closing the piece,
introduces a quiescenza or final fall,
depending on the reading.
Admittedly, since I take the bass to scale degree 4,
it dilutes the schema a bit. Whatever.

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/rFTrItd_dQU" allowfullscreen title="YouTube Video"></iframe></div>
