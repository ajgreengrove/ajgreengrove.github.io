+++
title = "A Test Post. - For Blog Functionalities"
date = 2022-08-28T01:34:52+03:00
draft = false
featured_image = "2022/08-28-testpost-feature.png"
tableofcontents = false
+++

This post tests some functionalities and technical aspects of the site.

Testing rendering a lilypond code block (emacs babel) into musical notation:

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
#(set-default-paper-size '(cons (* 200 mm) (* 60 mm)))
```

{{< figure src="/2022/08-28-testpost-feature.png" >}}
