@echo off
for %%i in (*.mp) do mpost %%i
set TEXINPUTS=%SPBAU_BACH_2018_DISK%\term3\logic\lectures
call ..\..\..\template\build.cmd lectures
