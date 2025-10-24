+++
title = """
  Exploring "Prelude to a Foreboding"
  """
author = ["A J Greengrove"]
date = 2025-04-08T00:00:00+03:00
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-08-prelude-to-a-foreboding-feature.webp"
tableofcontents = false
+++

Prelude to a Foreboding:
The static use of the arpeggio motive creates tension;
"trailer music" vibes.

(Note to reader: these are my earlier blogposts heavy in music theory and meandering in thought. I'll slowly revisit and backlink posts to clarify things.)

This could be called an etude or exercise for creating tension
with slow voice leading.
The harmonies could perhaps be traced to Opeth or Bossa Nova.
In other words, the tropes are more reminiscent
of more modern music than I usually focus on in this blog.

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=2934217668/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

I might be able to come back and dissect this better
after writing on Gabriel Faure’s use of Rule of The Octave.
If you got curious, I recommend an article named
Reimagining Fauré’s Harmony
(<a href="#citeproc_bib_item_1">Rabinovitch 2023</a>)

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative e' { e8 a, b c e c b a }
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

<a id="figure--fig:04-08-prelude-to-a-foreboding-feature.webp"></a>

{{< figure src="/images/2025/04-08-prelude-to-a-foreboding-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"Prelude to a Foreboding\" Motif" >}}

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/OucfE7l1D3s" allowfullscreen title="YouTube Video"></iframe></div>

<details>
<summary>References</summary>
<div class="details">

## References

<style>.csl-entry{text-indent: -1.5em; margin-left: 1.5em;}</style><div class="csl-bib-body">
  <div class="csl-entry"><a id="citeproc_bib_item_1"></a>Rabinovitch, Gilad. 2023. “Reimagining Fauré’s Harmony.” <i>Intégral: The Journal of Applied Musical Thought</i> 36. <a href="https://www.esm.rochester.edu/integral/36-2023/rabinovitch/">https://www.esm.rochester.edu/integral/36-2023/rabinovitch/</a>.</div>
</div>
</div>
</details>
