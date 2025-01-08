+++
title = "A Test Post. - For Blog Functionalities"
date = 2022-08-28T01:34:52+03:00
draft = false
+++

This is the content of the test post.
That's how it originally read.
However, I later thought,
it is better suited to demonstrate some functionalities
and technical aspects of the site.
Here I rendered a lilypond code block
(emacs babel) into musical notation:

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
```

{{< figure src="2022-08-28-babel-ly-test.png" >}}
