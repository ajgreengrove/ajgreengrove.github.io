+++
title = "A Test Post: Blog Functionalities"
date = 2022-08-28T01:34:00+03:00
lastmod = 2025-04-15T00:47:00+03:00
draft = false
featured_image = "/2022/08-28-testpost-feature.png"
tableofcontents = false
+++

This post tests some functionalities and technical aspects of the site.

<!--more-->

Testing rendering a lilypond code block
(emacs babel) into musical notation:

```lilypond
%% (org-babel) set :eval yes, then C-c C-c to generate :file [file].png
#(ly:set-option 'resolution 101)
%% For testing; feature-image.
%% uncomment for one-line score (for scrolling in video etc)
\version "2.24.4"
\language "english"
\pointAndClickOff
\header { tagline = "" }
testmelody = \relative c' {
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
%showFirstLength = R4*7
\paper {
  #(set-paper-size '(cons (* 200 mm) (* 100 mm)))
  % indent = 2.2\cm
  left-margin = 0\cm
  right-margin = 2\cm
  %page-breaking = #ly:one-line-breaking
}
\score {
  <<
    \autoPageBreaksOff
    \autoLineBreaksOff
    \new Staff \with { instrumentName = "Some instr." } { \testmelody }
    \new Staff \with { instrumentName = "Some instr." } { \testmelody }
  >>
}
```

<a id="figure--some-notes-a-lilypond-babel-test"></a>

{{< figure src="/2022/08-28-testpost-feature.png" alt="A picture of musical notation showcasing the output of lilypond babel." caption="<span class=\"figure-number\">Figure 1: </span>Some notes: a lilypond babel test." >}}
