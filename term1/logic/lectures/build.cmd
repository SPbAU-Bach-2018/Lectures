@echo off
set TEXINPUTS=%SPBAU_BACH_2018_DISK%\term1\logic\lectures
if not exist lectures.tex (
	echo File not found: lectures.tex
	exit /b 1
)

setlocal
set TEXINPUTS=%TEXINPUTS%;%~dp0;

pdflatex lectures.tex
 
