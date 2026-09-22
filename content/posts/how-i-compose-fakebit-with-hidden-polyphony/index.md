+++
title = "How I Compose Fakebit with Hidden Polyphony"
author = ["A J Greengrove"]
date = 2026-01-06T13:25:00+02:00
draft = false
featured_image = "/images/how-i-compose-fakebit-with-hidden-polyphony-feature.webp"
tableofcontents = true
[build]
  list = "never"
  render = "always"
+++

At first we put hidden polyphony, arpeggios etc into simple terms.
Then we compose broken-chord or "arpeggiated" music with it.
I compose with fakebit sounds (think chiptune but freer)
and start by whipping up a triangle wave pluck synth instrument for this.


## Explanations {#explanations}

What are arpeggios or broken chords?
: Instead of playing all the notes
    or keys or strings simultaneously as a "block chord,"
    we play **one note at a time,** thus "breaking the chord."
    Arpeggio comes from arpa, Italian for harp; referring to playing harp-like.


What is polyphony?
: When, say, a soprano girl and a bass guy sing distinct melodies simultaneously.


Now, what is hidden polyphony?
: Imagine a soprano girl and a bass guy
    singing their **distinct melodies.**
    Now imagine instrumentating these melodies for a bassoon
    or whatever instrument unable to play many notes simultaneously.
    Even if there's just one instrument,
    the music of the bass &amp; soprano voices can **still alternate.**
    Or, it's like the soprano &amp; bass have to sing in turns
    within the limitations of the chosen instrument.


And fakebit or chiptune?
: To simplify, chiptune is a musical genre
    which uses early computer chipset sounds, think **computer "bleeps and bloops".**
    To satisfy purists, **fakebit takes inspiration** from those sounds but you don't
    have to dig up your chipsets from the 80s/90s to be cool:
    faking with modern software is enough.


## Instrumentation plan {#instrumentation-plan}

The hidden polyphony could be done with any instruments,
but I thought a "soft"-sounding pluck,
possibly with a delay/echo effect,
would work well with the arpeggiated texture.

-   **Triangle wave pluck** synth instrument
    -   sound generation
        -   triangle wave oscillator. **Idea:** this is a rather **soft** sound,
            nice for continuous arpeggios
    -   envelope, values in seconds
        -   attack: almost 0
        -   decay: to taste. **Idea:** the **decay is fast** in real world plucked instruments.
            So for a natural envelope, decay should be faster than release.
            But for a no-fuss approach, experiment or remove altogether by setting to 0.
        -   sustain: 0
        -   release: to taste
    -   **Note:** plucks tend to work really nice with a simple **delay / echo** effect,
        as long as you get the resulting rhythm to sound nice


## Composition idea {#composition-idea}

Here's the composition idea and explanations.

<details>
<summary>(LilyPond composition idea code details)</summary>
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
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
\layout { \context { \Voice \consists \Ez_numbers_engraver } }
#(set-global-staff-size 40)
global = { \key d \minor \time 4/4 }
melody = \relative bf {
  bf8 a'-"|v1" g fs g bf,-"|v2" a g
  a8 g'-"|v1" f e f a,-"|v2" g f
  g8
}
\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = "Instr1" } <<
      \clef "treble_8"
      \new Voice { \global \oneVoice \easyHeadsOn \melody }
    >>
    \new TabStaff \with { instrumentName = \markup { \column { "With" "Guitar" }}} <<
      \new TabVoice { \melody }
    >>
  >>
}
\paper { system-separator-markup = \slashSeparator }
```
</div>
</details>

<a id="figure--fig:how-i-compose-fakebit-with-hidden-polyphony-feature.webp"></a>

{{< figure src="/images/how-i-compose-fakebit-with-hidden-polyphony-feature.webp" alt="Displays the main compositional idea in musical notation" caption="<span class=\"figure-number\">Figure 1: </span>Main compositional idea: hidden polyphony" >}}

Figure explanation:

-   key = d minor (d=1)
    -   note head shows its scale degree number in current key/mode
-   **melody has hidden polyphony** and alternates between the hidden voices:
    -   v1 = voice one
    -   v2 = voice two


## Todo-list {#todo-list}

-   haiku
-   calculate noOfMeas from tempo: wanted song length
-   change empty workspace &amp;&amp; record guitar
-   listen to song w recd guitar: becomes proof (of [] promise plan formula)
-   "Please share if you found this helpful. Until next time."
