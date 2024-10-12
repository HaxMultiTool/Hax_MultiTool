@echo off
@title Hax MultiTool v3
@mode 78, 34
setlocal enabledelayedexpansion
:THunblck
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
        goto oTHunblck
    )
)
cls
echo.
echo.
echo.
echo.
echo                     Chroma
echo                     InternetTools
echo                     .___..       .  .   .  .      .        
echo                       ^|  ^|_  _   ^|  ^|._ ^|_ ^| _  _.;_^/ _ ._.
echo                       ^|  [ ^)^(^/,  ^|__^|[ ^)[_^)^|^(_^)^(_.^| ^\^(^/,[                                         
echo.
echo.
call button 1 0 "Hax v3" 24 11 "Unlock " 42 11 "Restore" 24 14 " Info  " 42 14 " Back  " # Press
Getinput /m %Press% /h 70
if %errorlevel%==2 ( goto unlockType )
if %errorlevel%==3 ( 
    IF EXIST "%appdata%\hosts" (
        move "%appdata%\hosts" "C:\Windows\System32\drivers\etc\" >nul 2>&1 & echo. && echo. && echo. && echo Done^^! && timeout -t 2 -nobreak >nul & goto THunblck 
    ) else (
        echo. && echo. && echo. && echo Changes already cleared. && timeout -t 2 -nobreak >nul & goto THunblck
    )
)
if %errorlevel%==4 ( echo. && echo. && echo. && echo Let you access blocked websites. && timeout -t 3 -nobreak >nul )
if %errorlevel%==5 ( echo a>goback.txt && exit )
goto THunblck
:unlockType
cls
echo.
echo.
echo.
echo.
echo                     Chroma
echo                     InternetTools
echo                     .___..       .  .   .  .      .        
echo                       ^|  ^|_  _   ^|  ^|._ ^|_ ^| _  _.;_^/ _ ._.
echo                       ^|  [ ^)^(^/,  ^|__^|[ ^)[_^)^|^(_^)^(_.^| ^\^(^/,[                                         
echo.
echo.
call button 1 0 "Hax v3" 24 11 "Unlock " 42 11s " Back " # Press
echo.
echo.
echo                         Choose Type:
call button2 22 14 "- Windows-blocked websites" 22 15 "- Router-blocked websites" 42 11 " Back " # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 ( 
    IF EXIST "C:\Windows\System32\drivers\etc\hosts" (
        move "C:\Windows\System32\drivers\etc\hosts" "%appdata%" >nul 2>&1 & echo. && echo. && echo. && echo. && echo. && echo                                            Done^^! && timeout -t 2 -nobreak >nul & goto THunblck 
    ) else (
        echo. && echo. && echo. && echo. && echo. && echo                                            Changes already applied. & timeout -t 2 -nobreak >nul & goto THunblck
    )
)
if %errorlevel%==2 ( explorer "https://browser.lol/create" )
if %errorlevel%==3 ( goto THunblck )
echo %errorlevel%
goto unlockType

:oTHunblck
@mode 56, 30
cls
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| The Unblocker           ^|
echo ^| By Chroma               ^|
echo ============================
echo Let you access blocked
echo websites
echo.
echo  Choose:
echo  Unlock    - 1
echo  Restore   - 2
echo  Back      - 3
set thblck=0
set /p thblck=^>
if %thblck% == 1 ( goto onlock )
if %thblck% == 2 ( 
    IF EXIST "%appdata%\hosts" (
        move "%appdata%\hosts" "C:\Windows\System32\drivers\etc\" >nul 2>&1 & echo Changes restored succesfully. & timeout -t 2 -nobreak >nul & goto oTHunblck
    ) else (
        echo Changes already cleared. & timeout -t 2 -nobreak >nul & goto oTHunblck
    )
)
if %thblck% == 3 ( echo a>goback.txt && exit )
goto oTHunblck
:onlock
@mode 56, 30
cls
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| The Unblocker           ^|
echo ^| By Chroma               ^|
echo ============================
echo Let you access blocked
echo websites
echo.
echo  Choose:
echo  Windows-blocked websites    - 1
echo  Router-blocked websites     - 2
echo  Back                        - 3
set thblck=0
set /p thblck=^>
if %thblck% == 1 (
    IF EXIST "C:\Windows\System32\drivers\etc\hosts" (
        move "C:\Windows\System32\drivers\etc\hosts" "%appdata%" >nul 2>&1 & echo Successfully applied changes. & timeout -t 1 -nobreak >nul & goto oTHunblck 
    ) else (
        echo Changes already applied. & timeout -t 2 -nobreak >nul & goto oTHunblck
    )
)
if %thblck% == 2 ( explorer "https://browser.lol/create" & timeout -t 1 -nobreak >nul & goto oTHunblck )
if %thblck% == 3 ( goto oTHunblck )
goto onlock