+++
title = """
  Exploring "When Shadows Take Over"
  """
author = ["A J Greengrove"]
date = 2025-04-17T00:00:00+03:00
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-17-when-shadows-take-over-feature.webp"
tableofcontents = false
+++

When Shadows Take Over:
the final
"let’s explore dark, minor modal mixture"
of this album.

(Note to reader: these are my earlier blogposts heavy in music theory and meandering in thought. I'll slowly revisit and backlink posts to clarify things.)

I already listed the other pieces exploring similar concepts,
this one included, in the post
[Exploring "Strong Currents in the Unknown Waters"]({{< relref "strongcurrentsintheunknownwaters" >}}).
Now I will list some peculiarities for this piece.

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your gold coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=2124982864/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

The 0:33 mark flirts with a minor7th harmony,
which will permeate the rest of this improvisation.
By opening the seventh sonorities,
I like to think of an analogy of applying more saturation
to the harmonic palette.

Referring to the many pieces of this album
"exploring dark, minor modal mixture":
interestingly,
the minor seventh sweetens the bvi:m7 in the 00:38 mark somewhat.
The subsequent passages remind me of Nobuo Uematsu’s middle period style,
something like Final Fantasy VI or VII soundtracks,
to be honest.

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative a { <a c e>1 <af c f> }
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

<a id="figure--fig:04-17-when-shadows-take-over-feature.webp"></a>

{{< figure src="/images/2025/04-17-when-shadows-take-over-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"When Shadows Take Over\" Motif" >}}

FinallyFantasylly,
I didn’t anticipate the 13 &amp; +9 chords in the 1:02 mark?
In the 1:33 mark an arpeggiated dominant
introduces an allusion to augmented harmony,
which is unheard of elsewhere in this piece;
however, since we’re in the middle of repeating the opening material,
this does provide some variance.

The 1:50 mark introduces a half-diminished harmony:
however, in my thinking,
it actually acts as a
"dominant for the natural phrygian closure",
or in other words the final harmony in the 1:54 mark.

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/Qt2TmBskB4U" allowfullscreen title="YouTube Video"></iframe></div>
