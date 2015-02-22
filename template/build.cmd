@echo off

if not exist %1.tex (
	echo File not found: %1
	exit /b 1
)

setlocal
set TEXINPUTS=%TEXINPUTS%;%~dp0;

texify --pdf --engine=xetex --tex-option=-8bit --tex-option=-shell-escape %1.tex
