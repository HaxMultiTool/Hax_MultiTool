@echo off
@title Hax MultiTool v3
@mode 118, 31
setlocal enabledelayedexpansion
:_____________
:PassChan
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
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
    goto oPassChan
    )
)

cls
echo.
echo.
echo.
echo.
echo                                      Chroma
echo                                      Windows Tools                                         
echo                                       ___                                  _ 
echo                                      ^| . ^\ ___  ___ ___ _ _ _  ___  _ _  _^| ^|
echo                                      ^|  _^/^<_^> ^|^<_-^<^<_-^<^| ^| ^| ^|^/ . ^\^| '_^>^/ . ^|
echo                                      ^|_^|  ^<___^|^/__^/^/__^/^|__^/_^/ ^\___^/^|_^|  ^\___^|                                        
echo                                       ___  _                                 
echo                                      ^|  _^>^| ^|_  ___ ._ _  ___  ___  _ _      
echo                                      ^| ^<__^| . ^|^<_^> ^|^| ' ^|^/ . ^|^/ ._^>^| '_^>     
echo                                      ^|___^/^|_^|_^|^<___^|^|_^|_^|^\_. ^|^\___.^|_^|       
echo                                                          ^<___'               
echo.
echo.
echo.
call button 1 0 "Hax v3" 46 16 "Change Password" 46 19 "Info" 57 19 "Back" # Press
timeout -t 1 -nobreak >nul
Getinput /m %Press% /h 70
if !errorlevel!==2 (goto Changing)
if !errorlevel!==3 (echo. && echo. && echo                                      Changes the password of any account && echo                                      on the system. && timeout -t 3 -nobreak >nul )
if !errorlevel!==4 (echo a>goback.txt && exit)
goto PassChan
:oPassChan
echo ============================
echo ^| Hax MultiTool 3         ^|
echo ^| Password Changer        ^|
echo ^| By Chroma               ^|
echo ============================
echo Changes the passwords of any
echo account on the system.
echo.
echo.
choice /c YN /n /m "Do you want to continue? [Y/N]: "
if %errorlevel%==1 (
    goto Changing
) else (
    echo a>goback.txt && exit
)
goto oPassChan
:Changing
echo.
echo.
echo  Enter the name of the user you want to change password
echo  If you don't know the users that are registered on the PC, 
echo  use Userinfo tool in the InfoTools Menu.
echo.
set /p USERNAME= User:
set /P PASSWORD= New password:
echo Please hold..
net user %USERNAME% %PASSWORD%
timeout -t 3 -nobreak >nul 
echo Done^^!
pause
echo a>goback.txt && exit

