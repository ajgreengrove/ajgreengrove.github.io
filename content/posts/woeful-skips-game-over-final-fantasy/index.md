+++
title = """
  The Woeful Skips in "Game Over" from "Final Fantasy I"
  """
author = ["A J Greengrove"]
date = 2025-11-08T02:56:00+02:00
tags = ["Descending5ths"]
categories = ["FinalFantasyI"]
draft = false
featured_image = "/images/2025/08-29-single-release-prelude-nes-ver-final-fantasy-i-feature.webp"
toc = true
+++

How is "Game Over" from "Final Fantasy I"
able to evoke a sense of losing and game being over
using a generic descending-fifths sequence?


## Prologue: The Guitar Cover Video {#prologue-the-guitar-cover-video}

To listen while we decrypt the music theory behind the soundtrack,
here's my guitar cover video:
<div class="org-youtube"><iframe width="560" height="315" src="https://www.youtube.com/embed/G1lJSlKqi4A" title=Game Over - Final Fantasy I Pixel Remaster Ver - Guitar Cover - Music Theory frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></div>
Here's timestamps to explore this audio dungeon:
(numbers denote scale degrees in D minor):

-   0:00 Dominant with counterpoint
-   0:03 The descending-fifths sequence begins
-   0:04 The 1st melodic leap down, then minor second up (5 6)
-   0:06 The melody uses minor seconds (2 3 2), then leap down
-   0:10 After a leap down, minor seconds (3 2) in the lower octave
-   0:12 Half cadence
-   0:14 The second half begins: it is more ornamented (I made guitaristic choices, mind you).
-   0:22 This is the cadence they changed later into VI V i what I play here.
-   0:31 I loop the piece as typical in game soundtracks.

Deeper floors with more details await in the blogpost down below.


## Differences in NES, PS1 &amp; Pixel Remaster Versions {#differences-in-nes-ps1-and-pixel-remaster-versions}

The composition of "Game Over" in the PS1 version of "Final Fantasy Origins" (2003)
differs from the NES (1987) and the Pixel Remaster version (2021),
the latter which are more alike to each other.
Save for the dominant chord in measure 1,
and last cadence, the piece follows a descending-fifths sequence.
Regarding the last cadence, in the PS1 version,
we have bVI V7 i cadence,
whereas the NES and Pixel Remaster versions sport a more contrapuntal
or voice-leading based #vi-half-dim7 V7 i.

Having said that, here's the differences as a comparative list:

-   NES (1987)
    -   instruments: NES sounds
    -   register: comparatively high
    -   final cadence: #vi-half-diminished-7th, V, i
-   PS1 (2003)
    -   instruments: low strings, double bass and cello taking reign
    -   register: comparatively lower
    -   final cadence: (b)VI, V, i
-   Pixel Remaster (2021)
    -   instruments: reeds, being a lamentative oboe and possibly clarinet
        and in the second "loop" we have additionally flute
    -   register: in the first half, like NES;
        in the second, in a (shriekingly) high register
        typical of second halves in the Pixel Remaster arrangements
        (as in Matoya's Cave; Town Theme etc).
    -   final cadence: #vi-half-diminished-7th, V, i


## The Woeful Downward Leaps &amp; Minor 2nds {#the-woeful-downward-leaps-and-minor-2nds}

In my opinion, it's actually the woeful melodic leaps that do the trick here.
There's leaps down and there's minor seconds:
in the following figure, the downward lines between notes
(typically used for glissandi) denote melodic skips down,
whereas the brackets denote stepwise minor second interval movement.

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(define Ez_numbers_engraver
  (make-engraver
   (acknowledgers
    ((note-head-interface engraver grob source-engraver)
     (let* ((context (ly:translator-context engraver))
            (tonic-pitch (ly:context-property context 'tonic))
            (tonic-name (ly:pitch-notename tonic-pitch))
            (grob-pitch
             (ly:event-property (event-cause grob) 'pitch))
            (grob-name (ly:pitch-notename grob-pitch))
            (delta (modulo (- grob-name tonic-name) 7))
            (note-names
             (make-vector 7 (number->string (1+ delta)))))
      (ly:grob-set-property! grob 'note-names note-names))))))

\layout {
  indent = 1.2\cm
  short-indent = 0.6\cm
  %% ragged-right = ##t
  \context {
    \Voice
    \consists \Ez_numbers_engraver
    \consists Horizontal_bracket_engraver
  }
}

\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }

#(set-global-staff-size 40)

global = {
  \key d \minor
  \time 4/4
  %% s1*2 \break s1*2
}
seer = \relative f' {
  \easyHeadsOn
  \voiceTwoStyle %% \voiceOneStyle
  f4.\glissando a,8\startGroup bf4\stopGroup g'8 f
  e8\startGroup f e\stopGroup\glissando g, a2
  d4.\glissando f,8\startGroup e2\stopGroup b'8 d
  d8\startGroup cs\stopGroup e2
}
alchemist = \relative a' { \easyHeadsOn \voiceThreeStyle s2 }
thief = \relative f { \easyHeadsOn \voiceFourStyle s2 }
barbarian = \relative f {\easyHeadsOn \voiceTwoStyle s2 }
\score {
  <<
    \new PianoStaff <<
      \new Staff \with {
        instrumentName = \markup{\center-column{ "Seer" }} %% { "Seer" "Alchemist"}}
        shortInstrumentName = \markup{\center-column{"S"}} %%{"S" "A"}}
      } <<
        \clef "treble_8"
        \global
        \new Voice { \voiceOne \seer }
        %% \new Voice { \voiceTwo \alchemist }
      >>
      %% \new Staff \with {
      %%   instrumentName = \markup{\center-column{"Thief" "Barbarian"}}
      %%   shortInstrumentName = \markup{\center-column{"T" "B"}}
      %% } <<
      %%   \clef "bass"
      %%   \global
      %%   \new Voice { \voiceOne \thief }
      %%   \new Voice { \voiceTwo \barbarian }
      %% >>
      \new TabStaff \with {
        instrumentName = "Gtr"
        shortInstrumentName = "G"
        \override Glissando.style = #'none
      } <<
        \new TabVoice { \seer }
        %% \new TabVoice { \alchemist }
        %% \new TabVoice { \thief }
        %% \new TabVoice { \barbarian }
      >>
    >>
  >>
}
\paper {
  system-separator-markup = \slashSeparator
}
```
</div>
</details>

<a id="figure--fig:game-over-final-fantasy-i-melody.webp"></a>

{{< figure src="/images/game-over-final-fantasy-i-melody.webp" alt="Displays the melody, especially leaps & minor 2nds under discussion in musical notation + tablature." caption="<span class=\"figure-number\">Figure 1: </span>Final Fantasy I Game Over Melody: Leaps &amp; Minor 2nds" >}}

I find it fascinating how the register,
especially when comparing the low rumbling strings of the PS1 version,
affects the atmosphere compared to the higher registers
of the NES and Pixel Remaster versions.
The latter could be called more airy, softer, lighter.
The PS1 one more lamentful, mournful, "pressing" &amp; heavy.
I haven't written extensively on game over themes,
but intuitively I'd say there's a myriad of approaches
to compose an effective one.
In Final Fantasy's case, since the party has been wiped out,
it perhaps evokes imagery of "a story came to an end".

As always, I will be composing my own test compositions based on this.
Perhaps woeful skips utilizing the descending-fifths sequence as in
my previous composition of which I wrote in [Exploring "It's Time to Set The Sails"]({{< relref "itstimetosetthesails" >}}),
which in itself utilized Forest Theme from "Terra Incognita",
a PS1 Net Yaroze project game (<a href="#citeproc_bib_item_1">Fatal 1997</a>).


## Links {#links}

Here's "Final Fantasy I Complete (Game Guitar Covers)", an updating playlist:
<div class="org-youtube-playlist"><iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLN2kCRRlVZAupp1wDVnDj6CrMik4xyPlp" title=Final Fantasy I Complete - Game Guitar Covers frameborder="0"  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></div>

<details>
<summary>References</summary>
<div class="details">

## References

<style>.csl-entry{text-indent: -1.5em; margin-left: 1.5em;}</style><div class="csl-bib-body">
  <div class="csl-entry"><a id="citeproc_bib_item_1"></a>Fatal, Team. 1997. “Forest Theme.” In <i>Terra Incognita</i>. Net Yaroze. (Unoff audio URL); Net Yaroze. <a href="https://www.youtube.com/watch?v=YDC44xnR044">https://www.youtube.com/watch?v=YDC44xnR044</a>.</div>
</div>
</div>
</details>
