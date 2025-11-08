+++
title = """
  Exploring "Strong Currents in the Unknown Waters"
  """
author = ["A J Greengrove"]
date = 2025-04-12T00:00:00+03:00
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-12-strong-currents-in-the-unknown-waters-feature.webp"
tableofcontents = false
+++

Strong Currents in the Unknown Waters:
an arpeggio interlude, this time with dark, minor modal mixture.

(Note to reader: these are my earlier blogposts heavy in music theory and meandering in thought. I'll slowly revisit and backlink posts to clarify things.)

I stated pretty much everything,
even regarding improvisation,
in the above:
I’ve also stated something similar
in past blog posts
regarding the pieces in this album.

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your gold coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=1549624496/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

Examples of darker harmonies
or modal mixture in this album in the posts:
[Exploring "Twilight in the Marshlands"]({{< relref "twilightinthemarshlands" >}}),
[Exploring "Doppelganger Takes Over"]({{< relref "doppelgangertakesover" >}}),
[Exploring "Revelations in Ancient Tombs"]({{< relref "revelationsinancienttombs" >}})
and [Exploring "When Shadows Take Over"]({{< relref "whenshadowstakeover" >}}).

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative e {
  \repeat unfold 2 { e,8 b' e fs g fs e b }
  \repeat unfold 2 { g c ef f g f ef c }
}
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

<a id="figure--fig:04-12-strong-currents-in-the-unknown-waters-feature.webp"></a>

{{< figure src="/images/2025/04-12-strong-currents-in-the-unknown-waters-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"Strong Currents in the Unknown Waters\" Motif" >}}

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/bpFnglIh8cs" allowfullscreen title="YouTube Video"></iframe></div>
