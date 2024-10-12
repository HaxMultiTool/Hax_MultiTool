@echo off
@title Hax MultiTool v3
@mode 118, 31
setlocal enabledelayedexpansion
:Admin
cd /d "%~dp0"
set /p ccolor=<settings/clr.txt
set "ccolor=!ccolor: =!"
IF "%ccolor%" == "DEFAULT" set cmode=none
IF "%ccolor%" == "RED" set cmode=4
IF "%ccolor%" == "SALMON" set cmode=c 
IF "%ccolor%" == "MUSTARD" set cmode=6
IF "%ccolor%" == "SUN" set cmode=e
IF "%ccolor%" == "HACKERMAN" set cmode=a
IF "%ccolor%" == "LEAF" set cmode=2
IF "%ccolor%" == "DIAMOND" set cmode=b
IF "%ccolor%" == "SKY" set cmode=9
IF "%ccolor%" == "OCEAN" set cmode=1
IF "%ccolor%" == "PEONY" set cmode=d
IF "%ccolor%" == "RETRO" set cmode=5
if exist settings/wm.txt (
   set /p whm=<settings/wm.txt
) else (
   set whm=0
   echo 0 > settings/wm.txt
)
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color E
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 76
   )
)
net session >nul 2>&1
if NOT %errorlevel% == 0 (
    echo This should not happen, and its an error!
    echo Please contact support.
    echo Error code: [N0$UD0T]
    pause >nul
    exit
)
START /b curl -L https://github.com/fafalone/RunAsTrustedInstaller/releases/latest/download/RunAsTI64.exe -o TItool.exe -s
:playitspinner
cls
echo Windows Tools
echo Chroma, fafalone
echo SuperAdmin
set mSpinner=%mSpinner%.
echo origin:https://github.com/fafalone/RunAsTrustedInstaller
echo fetching resources%mSpinner%
if "%mSpinner%"=="...." (set mSpinner=.)
ping localhost -n 2 >nul
tasklist /FI "IMAGENAME eq curl.exe" 2>NUL | find /I "curl.exe" >NUL
IF NOT %ERRORLEVEL% == 0 (
    echo task done.
    timeout -t 1 -nobreak >nul
    if exist settings/gm.txt (
        set /p gm=<settings\gm.txt
        set "gm=!gm: =!"
        if "!gm!"=="oui" (
            goto oAdmin
        ) else (
            goto jAdmin
        )
    )
)
goto playitspinner
:jAdmin
cls
for /L %%i in (1,1,6) do echo.
echo                                  Chroma, fafalone
echo                                  Windows Tools
echo                                   ___                      ___    _         _      
echo                                  ^/ __^> _ _  ___  ___  _ _ ^| . ^| _^| ^|._ _ _ ^<_^>._ _ 
echo                                  ^\__ ^\^| ^| ^|^| . ^\^/ ._^>^| '_^>^|   ^|^/ . ^|^| ' ' ^|^| ^|^| ' ^|
echo                                  ^<___^/`___^|^|  _^/^\___.^|_^|  ^|_^|_^|^\___^|^|_^|_^|_^|^|_^|^|_^|_^|
echo                                            ^|_^|                                     
echo.
echo.       
call button 1 0 "Hax v3" 35 14 "Activate" 50 14 "Restore" 64 14 "Info" 75 14 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel% == 2 ( goto choice )
if %errorlevel% == 3 ( net user Administrator /active:no && echo. && echo. && echo. && echo                                        Done^^! && timeout -t 3 -nobreak > nul )
if %errorlevel% == 4 (echo. && echo. && echo. && echo                                        Enables hidden administrator features. && timeout -t 4 -nobreak > nul)
if %errorlevel% == 5 ( del TItool.exe && echo a>goback.txt && exit )
goto jAdmin
:choice
cls
for /L %%i in (1,1,6) do echo.
echo                                  Chroma, fafalone
echo                                  Windows Tools
echo                                   ___                      ___    _         _      
echo                                  ^/ __^> _ _  ___  ___  _ _ ^| . ^| _^| ^|._ _ _ ^<_^>._ _ 
echo                                  ^\__ ^\^| ^| ^|^| . ^\^/ ._^>^| '_^>^|   ^|^/ . ^|^| ' ' ^|^| ^|^| ' ^|
echo                                  ^<___^/`___^|^|  _^/^\___.^|_^|  ^|_^|_^|^\___^|^|_^|_^|_^|^|_^|^|_^|_^|
echo                                            ^|_^|                                     
for /L %%i in (1,1,4) do echo.
echo                                      Choose:
echo                                      -
echo                                      -
call button 1 0 "Hax v3" 35 14 "Activate" 50 14 "Restore" 64 14 "Info" 75 14 "Back" # Press
call button2 1 0 "Hax v3" 37 17 "SuperAdmin" 37 18 "TrustedInstaller" 35 14 "Activate" 50 14 "Restore" 64 14 "Info" 75 14 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel% == 2 ( echo. && echo. && echo. && echo. && echo. && echo. && echo Now running.. && net user Administrator /active:yes & echo Done^^! && timeout -t 3 -nobreak > nul)
if %errorlevel% == 3 ( TItool.exe )
if %errorlevel% == 5 ( echo. && echo. && echo. && echo. && echo. && echo. && net user Administrator /active:no && echo Done^^! && timeout -t 3 -nobreak > nul )
if %errorlevel% == 6 (echo. && echo. && echo. && echo. && echo. && echo. && echo                                        Enables hidden administrator features. && timeout -t 4 -nobreak > nul )
if %errorlevel% == 7 ( goto jAdmin )
goto choice
:oAdmin
@mode 56, 30
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| SuperAdmin              ^|
echo ^| By Chroma, fafalone     ^|
echo ============================
echo Enables hidden administrator
echo features.
echo.
echo  Choose:
echo  Activate  -1
echo  Restore   -2
echo  Back      -3
echo.
set choice=0
set /p choice=^>
if %choice% == 1 ( goto ochoice )
if %choice% == 2 ( net user Administrator /active:no && echo Done^^! && timeout -t 3 -nobreak >nul )
if %choice% == 3 ( del TItool.exe && echo a>goback.txt && exit )
goto oAdmin
:ochoice
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| SuperAdmin              ^|
echo ^| By Chroma, fafalone     ^|
echo ============================
echo Enables hidden administrator
echo features.
echo.
echo  Choose:
echo  SuperAdmin         -1
echo  TrustedInstaller   -2
echo  Back               -3
echo.
set choice=0
set /p choice=^>
if %choice% == 1 ( echo Now running.. && net user Administrator /active:yes & echo Done^^! && timeout -t 3 -nobreak > nul )
if %choice% == 2 ( TItool.exe )
if %choice% == 3 ( goto oAdmin )
goto ochoice