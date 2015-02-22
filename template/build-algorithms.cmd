@echo off
if "%1" == "" (
  echo usage: ^<file.tex^>
  exit /b 1
)

REM http://stackoverflow.com/a/3987648/767632
setlocal enabledelayedexpansion

REM Note ; here instead of : because ':' is a drive letter separator on Windows
REM MiKTeX works ok with ;
set TEXINPUTS=%TEXINPUTS%;%~dp0;

for %%f in (%1) do (
  set NAME=%%~nf
  echo Compile !NAME!
  del !NAME!.aux !NAME!.log !NAME!.out !NAME!.toc !NAME!.out.pyg >nul 2>&1
  texify --pdf --tex-option=--shell-escape --tex-option=-8bit --quiet %%f
  del !NAME!.aux !NAME!.log !NAME!.out !NAME!.toc !NAME!.out.pyg >nul 2>&1
)
