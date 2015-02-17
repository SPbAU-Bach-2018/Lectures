#!/bin/bash
templatedir=../../../template
TEXINPUTS=.:$templatedir /bin/bash $templatedir/build-algorithms.sh main.tex
