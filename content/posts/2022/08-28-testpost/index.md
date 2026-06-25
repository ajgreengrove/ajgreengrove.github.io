+++
title = "Debug Dungeon"
author = ["A J Greengrove"]
date = 2022-08-28T01:34:00+03:00
draft = false
featured_image = "/images/2022/08-28-testpost-feature.webp"
tableofcontents = false
+++

This post tests some functionalities and technical aspects of the site.

Let's test citation cite (<a href="#citeproc_bib_item_1">Sor 1830</a>).
The bibliography should be at the end of this blog post;
it's wrapped in a "details" element,
most probably press an arrow symbol and it should collapse to view.
Let's next test some LilyPond (music engraving) stuff.

<details>
<summary>(LilyPond code)</summary>
<div class="details">

```lilypond
#(ly:set-option 'resolution 100)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
testMelody = \relative c' {
  c8 d e f g a b c
  c,8 d e f g a b c
  c,8 d e f g a b c
  c,8 d e f g a b c
  c,8 d e f g a b c
  c,8 d e f g a b c
  c,8 d e f g a b c
  c,8 d e f g a b c
  c,8 d e f g a b c
}
\score {
  <<
    \new Staff \with { instrumentName = "Some instr." } { \testMelody }
    \new Staff \with { instrumentName = "Some instr." } { \testMelody }
  >>
}
```
</div>
</details>

<a id="figure--fig:08-28-testpost-feature.webp"></a>

{{< figure src="/images/2022/08-28-testpost-feature.webp" alt="A rising scale in musical notation to test code into rendered picture." caption="<span class=\"figure-number\">Figure 1: </span>Lilypond Babel Test" >}}

A lilypond code block (emacs babel via ox-hugo) is rendered into musical notation.
The figure is just a normal picture in the static -directory
(so that other blogposts can use it easily, if needed)
but the LilyPond code used to generate is wrapped in a details -element:

Some notes for myself and the most curious readers:

-   I now use ox-hugo's default csl export
    (and don't provide csl file, but in the future possibly apa or chicago)
-   The documentation of supported types and fields is finicky.
    Here's how I'm able to cite songs etc in a rather sane way:
-   @incollection{keynameFromPapisRef
    -   author = {Composer one and Contrapuntist two},
    -   origauthor = {Fenrir},
    -   title = {Méthode complète pour la musictheorist},
    -   booktitle = {My favourite album!},
    -   series = {Website name; in a pinch, Arr. Firstname Lastname here.},
    -   date = {1830-11-27},
    -   origdate = {1777-01-13},
    -   publisher = {Greengrove Dungeons},
    -   howpublished = {Arr. Pernando Horra. Lyr. Jane Doe. Tr. John Smith. [URL Accessed 1999]. Any additional details.},
    -   url = "gopher.bogusurl.document"
-   }

<details>
<summary>References</summary>
<div class="details">

## References

<style>.csl-entry{text-indent: -1.5em; margin-left: 1.5em;}</style><div class="csl-bib-body">
  <div class="csl-entry"><a id="citeproc_bib_item_1"></a>Sor, Fernando. 1830. <i>Méthode Complète Pour La Guitare</i>. Paris: L’auteur. <a href="https://imslp.org/wiki/M%C3%A9thode_Compl%C3%A8te_pour_la_Guitare_(Sor,_Fernando)">https://imslp.org/wiki/M%C3%A9thode_Compl%C3%A8te_pour_la_Guitare_(Sor,_Fernando)</a>.</div>
</div>
</div>
</details>
