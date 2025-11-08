+++
title = """
  Exploring "It's Time to Set The Sails"
  """
author = ["A J Greengrove"]
date = 2025-04-11T00:00:00+03:00
tags = ["2Up3Down", "Descending5ths", "Prinner"]
categories = ["WhereverTheWindTakesMe"]
draft = false
featured_image = "/images/2025/04-11-its-time-to-set-the-sails-feature.webp"
tableofcontents = false
+++

It's Time to Set The Sails:
I ripped of an unknown composer’s “Forest Theme” from Terra Incognita,
a Net Yaroze demo game.

(Note to reader: these are my earlier blogposts heavy in music theory and meandering in thought. I'll slowly revisit and backlink posts to clarify things.)

There isn’t really info on the composer
of the soundtrack in Terra Incognita the Net Yaroze demo:
(<a href="#citeproc_bib_item_1">Fatal 1997</a>).
The first half is a descending tetrachord bassline.
This can be found as a ground bass
to be improvised upon in numerous chaconnes and passacaglias.

To peek into this 'audio dungeon exploration'
before shopping it in the Bandcamp market (for name your gold coins):
<div class="org-bandcamp-track"> <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album= 3014684465/size=large/bgcol=ffffff/linkcol=2ebd35/tracklist=false/artwork=small/track=1925270107/transparent=true/" seamless><a href="https://ajgreengrove.bandcamp.com/album/ wherever-the-wind-takes-me"> "Wherever The Wind Takes Me" by A J Greengrove</a></iframe>

More than the descending tetrachord, I wanted to test
specifically the 2-up-3-down moti del basso (sequence)
in the chorus or B-part or latter part of the song;
it is heard in the 0:32 mark.
However, in the second step of the pattern,
the vi scale-degree breaks the sequence (should be IV).

I would call the sequence a bit of a chameleon:
it could easily be replaced by a descending-fifths sequence,
but it is “softer” in its movement, or perceived movement.
In the 0:47 mark, that is the latter repetition of the B-section,
I unfold it as a descending-fifths sequence.
If I may contrast the word “soft” with the word “dynamical”,
this time the bass acts in a more “dynamical” manner.

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative e' { \mark B e1 d d c c b g~ g }
bass = \relative f, { f1 g e a d g, c~ c }
\score {
  <<
    \time 4/4
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

<a id="figure--fig:04-11-its-time-to-set-the-sails-feature.webp"></a>

{{< figure src="/images/2025/04-11-its-time-to-set-the-sails-feature.webp" alt="The piece's motif in musical notation." caption="<span class=\"figure-number\">Figure 1: </span>\"It's Time to Set The Sails\" Motif" >}}

Compare these to the 2-up-3-down sequence heard in the post
[Exploring "Wherever The Wind Takes Me"]({{< relref "01-08-wherever-the-wind-takes-me" >}})
of in this same album,
however, in that instance dorian modal harmony draws attention;
I don’t find it a typical example of the bass movement.

My theory is the sequence works in adventurous sea themes;
prove me wrong! As 1-7-6-3 constitues the galant romanesca,
I wonder what this 6-7-5-1 (in minor key) constitutes.
I'd say it's a recurring schema in Japanese music,
but I need more evidence to back up my claim;
I’ll accumulate it from the seas
and throw it out in the open later on.
It’s time to set the sails.

Here's the recording session video of the piece:
<div class="org-youtube"><iframe src="https://www.youtube.com/embed/fRXWmBxw2w8" allowfullscreen title="YouTube Video"></iframe></div>

<details>
<summary>References</summary>
<div class="details">

## References

<style>.csl-entry{text-indent: -1.5em; margin-left: 1.5em;}</style><div class="csl-bib-body">
  <div class="csl-entry"><a id="citeproc_bib_item_1"></a>Fatal, Team. 1997. “Forest Theme.” In <i>Terra Incognita</i>. Net Yaroze. (Unoff audio URL); Net Yaroze. <a href="https://www.youtube.com/watch?v=YDC44xnR044">https://www.youtube.com/watch?v=YDC44xnR044</a>.</div>
</div>
</div>
</details>
