@echo off
cd /d %~dp0
call pack_dnd Game.lst
call pack_dnd Editor.lst
call pack_dnd Standart.lst
call pack_dnd ShrShade.lst
call pack_dnd Doomer.lst
call pack_dnd Doom2D.lst
echo [*] Build All done.
echo.
pause
