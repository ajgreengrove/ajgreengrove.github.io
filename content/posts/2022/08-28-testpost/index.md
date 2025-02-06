+++
title = "A Test Post. - For Blog Functionalities"
author = ["A. J. Greengrove"]
date = 2022-08-28T01:34:00+03:00
lastmod = 2025-01-15T18:12:00+02:00
draft = false
featured_image = "org-babel-lilypond-exports/feature-cover-thumbnail-2022-08-28.png"
+++

This is the content of the test post.
That's how it originally read.
However, I later thought,
it is better suited to demonstrate some functionalities
and technical aspects of the site.
Here I rendered a lilypond code block
(emacs babel) into musical notation:

<a id="figure--some-notes-a-lilypond-babel-test"></a>

{{< figure src="org-babel-lilypond-exports/feature-cover-thumbnail-2022-08-28.png" alt="A picture of musical notation showcasing the output of lilypond babel." caption="<span class=\"figure-number\">Figure 1: </span>Some notes: a lilypond babel test." >}}

```lilypond
\version "2.24.4"
\language "english"
\pointAndClickOff
\header {
  piece = "Some notes"
  tagline = ""
}
\new Staff \with {
  instrumentName = "Some instr."
} \relative c' {
  c8 d e f g a b c
  c,8 d e f g a b c
  c,8 d e f g a b c
  \break
  c,8 d e f g a b c
  c,8 d e f g a b c
  c,8 d e f g a b c
  \break
  c,8 d e f g a b c
  c,8 d e f g a b c
  c,8 d e f g a b c
}
#(set-default-paper-size '(cons (* 200 mm) (* 60 mm)))
#(ly:set-option 'resolution 101)
```
