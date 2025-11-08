+++
title = """
  Exploring "Doppelganger Takes Over"
  """
author = ["A J Greengrove"]
date = 2025-04-06T00:00:00+03:00
lastmod = 2025-10-07T11:12:00+03:00
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-06-doppelganger-takes-over-feature.webp"
tableofcontents = false
+++

Doppelganger Takes Over:
The motif is one of my favorite fantasy tropes,
albeit rare: it sounds quite dark.

(Note to reader: these are my earlier blogposts heavy in music theory and meandering in thought. I'll slowly revisit and backlink posts to clarify things.)

I’ll list some examples of the harmony that come to mind:

-   "Lumina’s Theme" by Naoshi Mizuta &amp; Masashi Hamauzu
    (<a href="#citeproc_bib_item_2">Mizuta and Hamauzu 2013</a>)
-   I think Opeth explores similar in Watershed,
    perhaps Hessian Peel, latter half?
-   Also, even if Lord of the Rings the movie soundtrack
    is not a diminished chord per se,
    but an appogiatura instead,
    that eerie-sounding voice-leading is still there. (TODO hunt down the reference)
-   Prelude to Horror from Demon's Crest (<a href="#citeproc_bib_item_1">Horiyama 2005</a>).
    Although in that one the diminished (&amp; 7th) resolve on a major I, not a minor one.
    It is interesting to also note that at first we have a more "hollower" interval of diminished 5th,
    and the second time a "fuller" diminished-7th chord.

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your gold coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=3883934046/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

Regarding the improvisation of this piece,
the opening lends itself well to the usage of melodic minor sonorities,
which are explored throughout the piece,
along with some phrygian explorations.
But improvisation stylewise I would put this
in the Francesco Spinacino recercare preluding style,
just like I did in the post [Exploring "Chilly Nights, Quiet Winds"]({{< relref "chillynightsquietwinds" >}}) in this same album.

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative e' { e16 df bf a bf4 }
\score {
  <<
    \time 3/4
    \new Staff { \clef "bass" \melody }
    \new TabStaff \with {} <<
      \new TabVoice { \melody }
    >>
  >>
}
```
</div>
</details>

<a id="figure--fig:04-06-doppelganger-takes-over-feature.webp"></a>

{{< figure src="/images/2025/04-06-doppelganger-takes-over-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"Doppelganger Takes Over\" Motif" >}}

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/03E3AJhiW7g" allowfullscreen title="YouTube Video"></iframe></div>

<details>
<summary>References</summary>
<div class="details">

## References

<style>.csl-entry{text-indent: -1.5em; margin-left: 1.5em;}</style><div class="csl-bib-body">
  <div class="csl-entry"><a id="citeproc_bib_item_1"></a>Horiyama, Toshihiko. 2005. “Prelude to Horror.” In <i>Makaimura Ongakutaizen</i>. (Unoff audio URL); SULEPUTER. <a href="https://www.youtube.com/watch?v=jpm8EZcpwI4">https://www.youtube.com/watch?v=jpm8EZcpwI4</a>.</div>
  <div class="csl-entry"><a id="citeproc_bib_item_2"></a>Mizuta, Naoshi, and Masashi Hamauzu. 2013. “Lumina’s Theme.” In <i>Lightning Returns: Final Fantasy XIII Original Soundtrack</i>. Arr. Naoshi Mizuta; SQUARE ENIX CO., LTD. <a href="https://music.youtube.com/watch?v=to6Ki6rltbU">https://music.youtube.com/watch?v=to6Ki6rltbU</a>.</div>
</div>
</div>
</details>
