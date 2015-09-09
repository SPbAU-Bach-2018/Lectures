#!/bin/bash

for svgfile in `ls *.svg`
do
	pdffile=`echo $svgfile | sed 's/svg/pdf/g'`
	inkscape -D -z --file=$svgfile --export-pdf=$pdffile --export-latex
done
