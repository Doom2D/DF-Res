@echo off
cd /d %~dp0
if exist %1 (
echo [*] Building %~n1.wad ...
echo.
dfwad.exe %1 %~n1.wad -i
echo.
)
