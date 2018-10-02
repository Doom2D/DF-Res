@echo off
cd /d %~dp0
for %%i in (*.lst) do (
  call pack_dnd %%i
  IF ERRORLEVEL 1 (
    exit /b
  )
)
echo [*] Build All done.
echo.
