@echo off
setlocal enabledelayedexpansion
set /p gm=<settings\gm.txt
set "gm=!gm: =!"
IF "%gm%"=="cui" (
   echo oui>settings\gm.txt
) ELSE IF "%gm%"=="oui" (
   echo cli>settings\gm.txt
) ELSE IF "%gm%"=="cli" (
   echo cui>settings\gm.txt
)
