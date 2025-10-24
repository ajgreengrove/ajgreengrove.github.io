+++
title = """
  Exploring "Prelude (NES Ver. Final Fantasy I)"
  """
author = ["A J Greengrove"]
date = 2025-08-30T00:00:00+03:00
lastmod = 2025-10-24T21:44:00+03:00
tags = ["Romanesca"]
categories = ["FinalFantasyI"]
draft = false
featured_image = "/images/2025/08-29-single-release-prelude-nes-ver-final-fantasy-i-feature.webp"
toc = true
+++

The very original NES prelude way back in 1987
from Final Fantasy (I) behaves differently
from the ones to follow,
as we'll se Nobuo himself demonstrating.
I hear a swirling kaleidoscope in the inverted arpeggios,
so I cover them with the guitar.
Let's peek into the colored glass
and some untapped game music potential.

If you prefer video form,
here's my quick glance into the post:

<div class="org-youtube"><iframe src="https://www.youtube.com/embed/Dhymgetrx-c" allowfullscreen title="YouTube Video"></iframe></div>

When I covered this with the guitar,
for starters, I had to "double-wrap"
the arpeggio to fit it in the fretboard.
Here's a "smart Link"
to peek into this 'audio dungeon exploration'
(apple music must be searched):

<https://snd.click/a-j-greengrove-250825>

You might want to compare this to more canonical versions
(example below):


## The Key is B-flat Major (not C) {#the-key-is-b-flat-major--not-c}

[Harpsibored](https://linktr.ee/harpsibored) did a nice-sounding harp cover in the original key,
albeit didn't introduce the weird arpeggio "skips"
I'll soon discuss in more depth:
for an audio link see cited URL (<a href="#citeproc_bib_item_8">Uematsu 2022</a>).
Most of the comments do not discuss the skip,
only one does. However, it seems that they
perceive the key signature of B-flat major
dramatically differently from C.
I'm sure it's different, but since it is so subjective
and doesn't really lend itself to further discussion
relating to compositional quirks, I digress.


## Arpeggio: a Mistake or a Happy Accident? {#arpeggio-a-mistake-or-a-happy-accident}

In the PS1 (2002) and Pixel Remaster (2021) versions of Final Fantasy I
the prelude doesn't differ notably, but the NES (1987) is a curious case.

This excellent review discussing Final Fantasy I soundtrack
is baffled whether Nobuo knew it would later be for the harp
and why it's "choppier" and whether it had to do with the NES (<a href="#citeproc_bib_item_6">Jaime squareenixmusic.com, n.d.</a>).

An [X/Tweet by Genki](https://x.com/Genki_JPN/status/1957479487555403805) links to a videoclip of a series called
"Nobuo Uematsu special talk show vol.2" and the clip seems
to have originated from a twitch livestream (<a href="#citeproc_bib_item_2">@Genki_JPN 2025</a>).
In the clip Nobuo demonstrates with the piano how the arpeggio should start
from the lowest note, but starts with an immediate skip instead, as follows:

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
melody = \relative bf, { bf_"should be" c d f \bar"||" bf_"is instead" c, d f }
\score {
  <<
    \time 4/4
    \new Staff { \clef "treble_8" \melody }
    \new TabStaff \with {} <<
      \new TabVoice { \melody }
    >>
  >>
}
```
</div>
</details>

<a id="figure--fig:08-29-final-fantasy-i-prelude-arpeggio.webp"></a>

{{< figure src="/images/2025/08-29-final-fantasy-i-prelude-arpeggio.webp" alt="Displays the first arpeggio under discussion in musical notation + tablature." caption="<span class=\"figure-number\">Figure 1: </span>Final Fantasy I Prelude Arpeggio: Intended vs. Outcome" >}}

The tweet is phrased so that there's a "wrong note" in the NES Prelude.
In the replies, people get confused hunting for the wrong note
but not finding any: they don't "understand what the error is".
Or "can't place the wrong not at all".

Now I think, a correct phrasing of said error is difficult,
it would be something like "wrong octave shifts in the arpeggio"
or "the arpeggio direction changes happen in the wrong places".

Gabriel Vieira (@ghcvtunikko) helpfully replied with a translated english spoken audio.
According to Nobuo's way of phrasing I understand that the lowest
note/sound(s?) were missing from the program (of the prelude):
"this is what ends up playing" and thus the arpeggios begin from the higher notes.

What he actually wanted was what would be corrected for later instances,
from Final Fantasy II onwards.

If you prefer video,
here's again my "double-wrapped" arpeggio version for listening:

<div class="org-youtube"><iframe src="https://www.youtube.com/embed/8dz8EhveGHM" allowfullscreen title="YouTube Video"></iframe></div>

He calls it a very unnatural arpeggio,
and I would agree to an extent that it is musically challenging.
Then he says it has a strangely unique flavor,
and the interviewer/host proceeds to say "it's a happy accident, one could say".
But I would also see it as a refreshing compositional challenge:
I got so inspired by this I live streamed composing a vgm piece
filled with wrong notes and arpeggios with erroneous octave shift placements.

Also, TooMuchCoffeeDrunk ⩗ (@much_drunk) says
"It sounds better with the wrong note.";
I would say, it sounds more interesting,
or as Nobuo and the interviewer/host discuss,
J (@Zeppelin041) provides an ultimatum:
"lol, there’s a wrong note in all music, that’s what makes it music.",
so true, I'd add.

Before demonstrating with piano,
Nobuo mentions that the programmer Nasir Gebelli
works constructing block of flats or something.
Now I have to say, whether mistake or not,
in my book it's a musically genius one.

I wouldn't had found this delicious easter egg
without the excellent
[Final Fantasy Fandom / Wiki](https://finalfantasy.fandom.com/wiki/Prelude_(theme)#Behind_the_scenes).


## Harmony: How Similar is The '50s Progression to The Romanesca? {#harmony-how-similar-is-the-50s-progression-to-the-romanesca}

I found an interesting hearing of the harmony
(<a href="#citeproc_bib_item_1">Dudley 2018</a>):

> Prelude is written in the key of Bb major
> and mostly consists of a set of arpeggiated chords
> known collectively as the ’50s progression
> (ubiquitous in ’50s/’60s pop music,
> but also pops up in classical music as far back
> as the 17th century)

Dudley didn't cite this one,
but it didn't take me long to find
that it is the '50s progression wikipedia article
that cites the 17th-century classical music,
I was sad to find it heavily lacking in proper citations.
And no further clarification for Pachelbel's Canon,
which would had help me tremendously in my further
Final Fantasy I soundtrack discussions. ; )

I removed the wikipedia 17th-18th century examples here but
do argue that there's a clear link between

-   the Romanesca,
-   Pachelbel's canon,
-   the fashion in harmonic progression of the 1950s-60s,
-   and Nobuo Uematsu's Final Fantasy I soundtrack.

The Romanesca is a beast - spanning centuries -
so it deserves an article of its own.
However, in case you're wondering,
Gjerdingen's
[Music in the Galant Style (Chapter 2: Romanesca) PDF](https://music.arts.uci.edu/abauer/5.2/readings/Gjerdingen%20_Music_in_the_Galant_Style_Ch_2.pdf)
is actually publicly available from his monumental book,
also featuring Pachelbel's Canon as an example
(<a href="#citeproc_bib_item_3">Gjerdingen 2007</a>).

I have explored Romanesca plenty (in my compositions too),
as can be browsed in my [Posts tagged as Romanesca](https://www.ajgreengrove.com/tags/romanesca/),
but be warned, I'm referring to the Romanesca family of schemata,
not Galant-flavored instances in particular.

There's another aspect to be discussed, though:
it is the placement of the harmonies that gives
this Prelude musical depth, I argue.

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 200)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
chordprog = \chordmode { bf1 g:m bf g:m ef/g f/a af:maj7 bf:maj7 }
bassline = \relative c {
  bf1_"(in C-major)" | g |
    bf_"* 1950s Progression" |
  g | g | a_"* (ends)"
  gf | af |
}
\score {
  <<
    \time 4/4
    \new ChordNames { \chordprog }
    \new Staff { \clef "bass" \bassline }
    \new TabStaff \with {} <<
      \new TabVoice { \bassline }
    >>
  >>
}
```
</div>
</details>

<a id="figure--fig:08-29-final-fantasy-i-prelude-50s-progression.webp"></a>

{{< figure src="/images/2025/08-29-final-fantasy-i-prelude-50s-progression.webp" alt="Displays the bass notes (reduction) under discussion in musical notation + tablature." caption="<span class=\"figure-number\">Figure 2: </span>Final Fantasy I (intended) Prelude Arpeggios: 50s Progression?" >}}

Isn't the 50s progression a schema
where the I vi IV V starts on a hypermetrically stronger placement?
To clarify, either it would start at measure 1 as an "opening gambit",
or then start at measure 5, the F and G would function cadentially stronger?

The of Prelude ends with the last two measures having bVI and bVII,
and our dear friend has many nicknames, at least
the Mario Cadence for game composers
and the double backdoor cadence for pop/jazz, I'd imagine.

But in academic circles
it is known as the victory topos.
Let me paraphrase on video game toposes,
translated to english:
"the essential feature is
major chords rising in three sequential whole steps:
thus, IV V VI#3 uses the victorial topos,
as heard in the Main Theme of Genshin Impact.
The difference is the goal: in Mario it's the tonic (I),
in Genshin Impact the topos takes us away from the tonic
(<a href="#citeproc_bib_item_5">He 2024, 21</a>).


## The "Story" of The Prelude in The Character Creation Screen {#the-story-of-the-prelude-in-the-character-creation-screen}

I have, for a long time, planned to write a blogpost,
could be named something like
"the mandatorily sad menu music".
Point being, many good game menu themes have a sad,
melancholic, or perhaps nostalgic feel to it.
Think Dearly Beloved from Kingdom Hearts (<a href="#citeproc_bib_item_7">Shimomura 2002</a>)
or The Promise from Final Fantasy XIII (<a href="#citeproc_bib_item_4">Hamauzu 2010</a>).

Instead of the 50s progression,
I hear the first half as (in roman numeral harmonic notation)
I vi I vi, and second as IV/6 V/6 bVImaj7 bVIImaj7.
The ingenuine part is that the IV-V movement is,
for a lack of better term, "symmetrical" to the bVI bVII part.
A music theorist familiar with Neo-Riemannian way of thinking
could probably describe it as a transformation in algebraic terms.
Feels like alchemy to me.

<a id="figure--fig:08-29-final-fantasy-renaissance-party-creation.webp"></a>

{{< figure src="/images/2025/final-fantasy-renaissance-party-creation.webp" alt="Displays the character creation screen from Final Fantasy Renaissance: Lancer (Renaissance-exclusive!), Thief, Monk and Red Mage." caption="<span class=\"figure-number\">Figure 3: </span>Final Fantasy Renaissance - Party Creation Screen" >}}

But in simple terms, the first half, in a way, descends; and after the IV/6
the second half ascends. It's like a statement pretending to be a blank canvas;
just like the character creation screen gives the illusion of a blank state,
but in reality the character creation can be a playable experience
or a miniature adventure in itself.
Especially in Final Fantasy I (and [Final Fantasy Renaissance](https://www.rengames.us/ffr)!).

On how the compositional choices affect the game,
this "Review by Jaime" from Square Enix Music Online
makes good points: at first he mentions that
the pieces do **not end on a strong cadence,**
so as to make the loop seamless
(<a href="#citeproc_bib_item_6">Jaime squareenixmusic.com, n.d.</a>).
It might seem obvious,
but the reason I wanted to point this out is that
Eric Heberling's Elder Scrolls II: Daggerfall soundtrack
is the most obvious use of this technique,
since in many of the tracks
the final dominant harmony remains for multiple measures.
In Nobuo's case, he would vary the techniques
as the Final Fantasy series would go on.

There's something I would like to quote now,
to keep in mind for future writings (emphasis mine):

> From the basic foundation laid by these two soundtracks,
> the main evolution would come from increasing
> the particularization of the themes —
> different themes for important areas, characters, etc. which,
> although **not present here,**
> will slowly appear beginning already with the third game on the franchise
> (but that's another story which must be told in another time...)
> --- Jaime (squareenixmusic.com)

This, dear readers, continues to baffle me and is
a topic worthy of later discussions.

The review makes many other good points about Final Fantasy II
and the Nintendo era of the series,
but I focus strictly on the first installment.

In my first live stream,
I use this technique to twist and turn
my arpeggios down and up like in this original NES prelude
to compose my own game soundtrack.

<details>
<summary>References</summary>
<div class="details">

## References

<style>.csl-entry{text-indent: -1.5em; margin-left: 1.5em;}</style><div class="csl-bib-body">
  <div class="csl-entry"><a id="citeproc_bib_item_1"></a>Dudley, Sam. 2018. “Evolution of a Theme: Final Fantasy’s Prelude.” The Sound Architect. [Accessed 2025-08-30]. <a href="https://www.thesoundarchitect.co.uk/evolution-theme-final-fantasys-prelude/">https://www.thesoundarchitect.co.uk/evolution-theme-final-fantasys-prelude/</a>.</div>
  <div class="csl-entry"><a id="citeproc_bib_item_2"></a>@Genki_JPN, Genki. 2025. “Nobuo Uematsu Revealed That There Is Actually a Wrong Note in the Original Final Fantasy Prelude Song!” X/Twitter. [Accessed 2025-10-20]. <a href="https://x.com/Genki_JPN/status/1957479487555403805">https://x.com/Genki_JPN/status/1957479487555403805</a>.</div>
  <div class="csl-entry"><a id="citeproc_bib_item_3"></a>Gjerdingen, Robert O. 2007. <i>Music in the Galant Style</i>. Oxford University PressNew York, NY. <a href="https://doi.org/10.1093/oso/9780195313710.001.0001">https://doi.org/10.1093/oso/9780195313710.001.0001</a>.</div>
  <div class="csl-entry"><a id="citeproc_bib_item_4"></a>Hamauzu, Masashi. 2010. “Final Fantasy XIII - the Promise.” In <i>Final Fantasy XIII Original Soundtrack</i>. SQUARE ENIX CO., LTD. <a href="https://soundcloud.com/ff13_soundtrack/102-final-fantasy-xiii-the">https://soundcloud.com/ff13_soundtrack/102-final-fantasy-xiii-the</a>.</div>
  <div class="csl-entry"><a id="citeproc_bib_item_5"></a>He, Josef. 2024. “Topiikka Videopelimusiikissa: Bardi-Topos Genshin Impact -Pelin Musiikissa Kerronnallisena Lähtökohtana.” Taideyliopiston Sibelius-Akatemia. <a href="https://urn.fi/URN:NBN:fi-fe2024061955523">https://urn.fi/URN:NBN:fi-fe2024061955523</a>.</div>
  <div class="csl-entry"><a id="citeproc_bib_item_6"></a>Jaime squareenixmusic.com. n.d. “All Sounds of Final Fantasy I &#38; Ii: Review by Jaime.” Square Enix Music Online: Reviews. <a href="https://www.squareenixmusic.com/reviews/jaime/ff1_2aso.shtml">https://www.squareenixmusic.com/reviews/jaime/ff1_2aso.shtml</a>.</div>
  <div class="csl-entry"><a id="citeproc_bib_item_7"></a>Shimomura, Yoko. 2002. “Dearly Beloved.” In <i>Kingdom Hearts Original Soundtrack</i>. EASTWORLD, Virgin. <a href="https://soundcloud.com/ericopter/kingdom-hearts-dearly-beloved">https://soundcloud.com/ericopter/kingdom-hearts-dearly-beloved</a>.</div>
  <div class="csl-entry"><a id="citeproc_bib_item_8"></a>Uematsu, Nobuo. 2022. “Prelude (from ‘Final Fantasy I’).” In <i>Prelude (from “Final Fantasy I”) - Single</i>. Arr. Harpsibored; Harpsibored. <a href="https://music.youtube.com/watch?v=u4wKOYWGJZs">https://music.youtube.com/watch?v=u4wKOYWGJZs</a>.</div>
</div>
</div>
</details>
