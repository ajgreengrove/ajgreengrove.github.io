+++
title = """
  Exploring "To the Land of No Return"
  """
author = ["A J Greengrove"]
date = 2025-04-18T00:00:00+03:00
tags = ["Romanesca"]
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-18-to-the-land-of-no-return-feature.webp"
tableofcontents = false
+++

To the Land of No Return:
A postlude that opens with a minor romanesca
and reflects on the opening track.

(Note to reader: these are my earlier blogposts heavy in music theory and meandering in thought. I'll slowly revisit and backlink posts to clarify things.)

The piece opens with a minor romanesca, and perhaps one anticipates a minor prinner in the 0:9 mark.
However, what could also be thought of is the descending upper tetrachord.
Heard this way, in that same 0:9 mark,
we can hear the descending lower tetrachord.

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=1523599948/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

What is nice is the analogy between the VI chord in the 0:7 mark
and the bII chord in the 0:14 mark,
and how the latter transmutes into the half-diminished harmony.
The aforementioned bII or phrygian chord leaves its mark:
in 0:24 the arpeggio motif is heard in bII (or its inversion,
if that’s relevant).

The 0:28 mark doesn’t exactly have
a chromatically descending tetrachord schema,
since it occurs in the middle voice instead of the bass.
Interestingly, even if the bass lingers on scale degree 5,
I can’t hear a ponte in it:
rather, I hear roaming or seeking quality in the harmonies.
In the 1:07 mark, the bII or phrygian occurs once more,
affecting the descending lower tetrachord.

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative fs' { fs4 g fs g a g fs g e }
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

<a id="figure--fig:04-18-to-the-land-of-no-return-feature.webp"></a>

{{< figure src="/images/2025/04-18-to-the-land-of-no-return-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"To the Land of No Return\" Motif" >}}

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/jGtOdWo97tQ" allowfullscreen title="YouTube Video"></iframe></div>
