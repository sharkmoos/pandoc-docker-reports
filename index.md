---
title: "Template Title"
author: ["sharkmoos", "Student ID: 1337"]
date: "2021-11-04"
subject: "Template Subject"
subtitle: "Template Subtitle"
lang: "en"
titlepage: true
titlepage-color: "2A7BCB"
titlepage-text-color: "FFFAFA"
titlepage-rule-color: "FFFAFA"
titlepage-rule-height: 1
book: true
classoption: oneside
code-block-font-size: \scriptsize
csl: apa.csl
biblatexoptions: backend=biber, style=authoryear, sorting=nty, natbib=true
biblio-title:  "References"
bibliography: biblio.bib
---

# Introduction

Lorum Ipsum etc

\pagebreak

## FOOBAR

Reference BARFOO [@refBarFoo]

Foo Image Bar

![image](./images/image.jpg)

\pagebreak

# References

\newenvironment{cslreferences}%
  {}%
  {\par}


::: {#refs}
:::

\pagebreak
