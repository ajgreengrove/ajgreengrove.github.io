+++
title = """
  Exploring "Crystalline Chaotic Caves"
  """
author = ["A J Greengrove"]
date = 2025-04-14T00:00:00+03:00
tags = ["PedalPoint"]
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-14-crystalline-chaotic-caves-feature.webp"
tableofcontents = false
+++

Crystalline Chaotic Caves:
textural exploration,
F.Sor etouffez,
perhaps a dungeon synth parody
or a game cave theme.

(Note to reader: these are my earlier blogposts heavy in music theory and meandering in thought. I'll slowly revisit and backlink posts to clarify things.)

The pop world calls the opening chord 9no3,
or maybe less correctly sus2,
but I’d call it a 424 interval pile or something similar.
Anyway, I hear the opening chord as rather neutral,
or not stating an obvious affect in baroque speak,
befitting the possibilities of mystery awaiting in a cave,
if you allow a little dungeon synth parody humour.
This piece utilizes mostly a root pedal point; or drone if you will.

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=683129298/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

In the 0:10 mark
we hear Ferdinando Sor’s etouffez -technique,
which this piece makes heavy use of as a device for timbral variety
(<a href="#citeproc_bib_item_1">Sor 1830</a>).
Etouffez isn’t the only technique instantiated here:
save for the timbral change,
this is an echo-like repetition of the arpeggio chord just heard.

According to my intuitive knowledge,
many game soundtrack cave themes utilizes echo-like compositional devices,
but to prove this I will have to go through corpus and lay out the evidence.
If I say I might be back, will we hear an echo back?

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative b { r8 b e b' fs }
\score {
  <<
    \time 2/4
    \new Staff { \clef "treble" \melody }
    \new TabStaff \with {} <<
      \new TabVoice { \melody }
    >>
  >>
}
```
</div>
</details>

<a id="figure--fig:04-14-crystalline-chaotic-caves-feature.webp"></a>

{{< figure src="/images/2025/04-14-crystalline-chaotic-caves-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"Crystalline Chaotic Caves\" Motif" >}}

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/xxoNCziFx78" allowfullscreen title="YouTube Video"></iframe></div>

<details>
<summary>References</summary>
<div class="details">

## References

<style>.csl-entry{text-indent: -1.5em; margin-left: 1.5em;}</style><div class="csl-bib-body">
  <div class="csl-entry"><a id="citeproc_bib_item_1"></a>Sor, Fernando. 1830. <i>Méthode Complète Pour La Guitare</i>. Paris: L’auteur. <a href="https://imslp.org/wiki/M%C3%A9thode_Compl%C3%A8te_pour_la_Guitare_(Sor,_Fernando)">https://imslp.org/wiki/M%C3%A9thode_Compl%C3%A8te_pour_la_Guitare_(Sor,_Fernando)</a>.</div>
</div>
</div>
</details>
