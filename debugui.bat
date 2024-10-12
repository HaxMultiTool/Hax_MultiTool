@echo off
setlocal enabledelayedexpansion
:x
cls
set /p gm=<settings\gm.txt
set "gm=!gm: =!"
IF "%gm%"=="cui" (
   echo ClickUI
) ELSE IF "%gm%"=="oui" (
   echo OldUI
) ELSE IF "%gm%"=="cli" (
   echo commandLine
)
timeout -t 1 -nobreak >nul
goto x