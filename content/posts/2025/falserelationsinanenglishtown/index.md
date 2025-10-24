+++
title = """
  Exploring "False Relations in an English Town"
  """
author = ["A J Greengrove"]
date = 2025-04-01T00:00:00+03:00
tags = ["FalseRelation"]
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-01-false-relations-in-an-english-town-feature.webp"
tableofcontents = false
+++

False Relations in an English Town:
"Dalza’s basse danse meets the english cadence".

(Note to reader: these are my earlier blogposts heavy in music theory
and meandering in thought.
I'll slowly revisit and backlink posts to clarify things.)

As far as I remember,
in this improvisation I ripped off one of
Joan Ambrosio Dalza’s basse danses or pivas.
However, the main gist was to test out a final cadence with false relation;
also known as “english cadence” in renaissance music.
Maybe calling the final cadence a "motif" is a bit incorrect, heh.

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=226377492/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

It might make sense in the future to relate this improvisation
with the style of renaissance lute composers such as Luys Milan,
but right now I will leave this post deliberately short.
A few points for the future:

-   techniques by other renaissance composers
    to improvise on top of a drone or single-note bass,
-   Luys Milan and other composers
    utilizing guitar-friendly imitations between bass and upper voices,
-   english cadences by english composers,
    Thomas Tallis comes to mind,
-   and finally, other false relations:
    late renaissance or early baroque France comes to mind.

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative a' { \parenthesize a4 gs8 fs gs4. a8 a1\fermata }
bass = \relative e { e2 f?4 e a,1\fermata }
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

<a id="figure--fig:04-01-false-relations-in-an-english-town-feature.webp"></a>

{{< figure src="/images/2025/04-01-false-relations-in-an-english-town-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"False Relations in an English Town\" Motif" >}}

Here's the recording session video of the piece:

<div class="org-youtube"><iframe src="https://www.youtube.com/embed/yJVGpjqCjLw" allowfullscreen title="YouTube Video"></iframe></div>
