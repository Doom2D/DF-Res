@echo off
cd /d %~dp0
if exist %1 dfwad.exe %1 %~n1.wad -i
pause
