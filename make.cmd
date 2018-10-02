@echo off
cd /d %~dp0
set PATH=%PATH%;%CD%
call :treeProcess
goto :done

:treeProcess
for /D %%d in (*) do (
    cd %%d
    call :treeProcess
    cd ..
)
for %%i in (*.lst) do (
  if exist %%i (
    echo [*] Building %%~ni.wad ...
    echo.
    dfwad.exe %%i %%~ni.wad -i
    echo.
  )
  IF ERRORLEVEL 1 (
    exit /b
  )
)
exit /b
:done
IF NOT ERRORLEVEL 1 (
  echo [*] Build All done.
  echo.
)
