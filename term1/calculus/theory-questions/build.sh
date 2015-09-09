#!/bin/bash
for i in `seq 3`
do
	xelatex -halt-on-error -8bit -shell-escape theory.tex
done
