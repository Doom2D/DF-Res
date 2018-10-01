@echo off
cd /d %~dp0
if exist %1 dfwadup.exe %1 %~n1_unp
REM pause>nul
