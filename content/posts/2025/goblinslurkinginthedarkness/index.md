+++
title = """
  Exploring "Goblins Lurking in the Darkness"
  """
author = ["A J Greengrove"]
date = 2025-04-16T00:00:00+03:00
tags = ["Indugio", "PedalPoint"]
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-16-goblins-lurking-in-the-darkness-feature.webp"
tableofcontents = false
+++

Goblins Lurking in the Darkness:
the most blatant dungeon synth parody of this album.

(Note to reader: these are my earlier blogposts heavy in music theory and meandering in thought. I'll slowly revisit and backlink posts to clarify things.)

This improvisation seems to explore
what other voices can do
while one voice performs 1-7; 7-1 "pendulum" movement.

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your gold coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=648247698/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

The piece opens with the static bass utilizing a pedal point schema.
The 0:4 mark (see player below for playback)
sees a 4-3 movement in the upper voice against the 7-1.
The 0:6 mark sees a 6-5 movement similarly.

The 0:9 mark is more embellished,
but can be reductively said to be a 4-3 movement.
In the 0:16 mark, the three voices utilize a simple faux bourdon -technique.

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative a, { a8 e' a4 gs8 r4. }
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

{{< figure src="/images/2025/04-16-goblins-lurking-in-the-darkness-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"Goblins Lurking in the Darkness\" Motif" >}}

Perhaps more a question to the reader rather than a statement,
can the 0:25 mark be read as an indugio,
that is a suspenseful pedal point schema on scale degree 4?

In the 0:43 mark we hear a ponte,
that is a pedal point schema on scale degree 5.

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/T9e-iHig5oM" allowfullscreen title="YouTube Video"></iframe></div>
