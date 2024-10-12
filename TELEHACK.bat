@echo off
@title Hax MultiTool v3
@mode 118, 31
setlocal enabledelayedexpansion
:Teln
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
       color A
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 72
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
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        goto oTeln
    )
)
cls
echo.	
echo.
echo.
echo.
echo                                         Chroma
echo                                         Internet Tools
echo                                         _____    _          _           
echo                                        ^|_   _^|__^| ^|_ _  ___^| ^|_         
echo                                          ^| ^|^/ -_^) ^| ' ^\^/ -_^)  _^|        
echo                                         _^|_^|^\___^|_^|_^|^|_^\___^|^\__^|    _   
echo                                        ^|_   _^|__^| ^|___^| ^|_  __ _ __^| ^|__
echo                                          ^| ^|^/ -_^) ^/ -_^) ' ^\^/ _` ^/ _^| ^/ ^/
echo                                          ^|_^|^\___^|_^\___^|_^|^|_^\__,_^\__^|_^\_^\
echo.
echo.
call button 1 0 "Hax v3" 42 14 "Enable " 56 14 "Disable" 42 17 " Info  " 56 17 " Back  " # Press
Getinput /m %Press% /h 70
if %errorlevel%==2 ( echo. && echo. && Dism /online /Enable-Feature /FeatureName:TelnetClient && telnet telehack.com && echo a>goback.txt && exit )
if %errorlevel%==3 ( echo. && echo. && Dism /online /Disable-Feature /FeatureName:TelnetClient && echo done. && timeout -t 2 -nobreak >nul && echo a>goback.txt && exit )
if %errorlevel%==4 (echo. && echo. && echo                                        Unlocks functionalities from Telehack.com && timeout -t 3 -nobreak >nul )
if %errorlevel%==5 ( echo a>goback.txt && exit )
goto Teln
:oTeln
cls
@mode 56, 30
cls
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Telnet Telehack         ^|
echo ^| By Chroma               ^|
echo ============================
echo Unlocks functionalities from 
echo Telehack.com
echo.
echo.
echo Enable   - 1
echo Disable  - 2
echo Back     - 3
set telhck=0
set /p telhck=^>
if %telhck% == 1 (
    goto haqk
) else if %telhck% equ 2 (
    goto nohaqk
) else (
    echo a>goback.txt && exit
)
goto oTeln
:haqk
Dism /online /Enable-Feature /FeatureName:TelnetClient
if "!anms!"=="0 " (
   set anims=False
   @mode 79, 30
) else (
   set anims=True
   @mode 56, 30
   @mode 60, 30
   @mode 64, 30
   @mode 68, 30
   @mode 72, 30
   @mode 76, 30
   @mode 79, 30
)
telnet telehack.com
echo a>goback.txt && exit
:nohaqk
Dism /online /Disable-Feature /FeatureName:TelnetClient && echo done.
timeout -t 2 -nobreak >nul
echo a>goback.txt && exit