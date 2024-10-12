@echo off
setlocal enabledelayedexpansion
:IPcheck
@title Hax MultiTool v3
@mode 78, 34
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
        goto oIPC
    )
)
if exist settings/am.txt (
   set /p anms=<settings/am.txt
) else (
   set anms=0
   echo 0 > settings/am.txt
)
if "!anms!"=="0 " (
   set anims=False
) else (
   set anims=True
)
cls
echo.
echo.
echo.
echo.
echo                         Chroma, @DDoS_Filter
echo                         InternetTools  
echo                         ._..__    __ .        .        
echo                          ^| [__^)  ^/  `^|_  _  _.;_^/ _ ._.
echo                         _^|_^|     ^\__.[ ^)^(^/,^(_.^| ^\^(^/,[          
echo.
echo.
call button 1 0 "Hax v3" 20 11 "Run " 34 11 "Info" 48 11 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (goto startmenu)
if %errorlevel%==2 (echo. && echo. && echo. && goto iplookup )
if %errorlevel%==3 (echo. && echo. && echo                    Lets you see the informations related to a && echo                    specific IP address. && timeout -t 3 -nobreak >nul)
if %errorlevel%==4 ( echo a>goback.txt && exit )
goto IPcheck
:oIPC
@mode 56, 30
cls
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| IP Checker              ^|
echo ^| By Chroma, @DDoS_Filter ^|
echo ============================
echo Let's you see the informations
echo related to a specific IP address
echo.
choice /c YN /n /m "Do you want to continue? [Y/N]: "
if %errorlevel% equ 1 (
    goto iplookup
) else if %errorlevel% equ 2 (
    echo a>goback.txt
    exit
)

:iplookup
echo.
echo Enter an ip Address...
echo.
set ip=127.0.0.1
set /p ip= IP: 
echo sUrl = "http://ipinfo.io/%ip%/json" > C:\users\default\documents\new.vbs
:localip
echo set oHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0") >> C:\users\default\documents\new.vbs
echo oHTTP.open "GET", sUrl,false >> C:\users\default\documents\new.vbs
echo oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" >> C:\users\default\documents\new.vbs
echo oHTTP.setRequestHeader "Content-Length", Len(sRequest) >> C:\users\default\documents\new.vbs
echo oHTTP.send sRequest >> C:\users\default\documents\new.vbs
echo HTTPGET = oHTTP.responseText >> C:\users\default\documents\new.vbs
echo strDirectory = "C:\users\default\documents\response.txt" >> C:\users\default\documents\new.vbs
echo set objFSO = CreateObject("Scripting.FileSystemObject") >> C:\users\default\documents\new.vbs
echo set objFile = objFSO.CreateTextFile(strDirectory) >> C:\users\default\documents\new.vbs
echo objFile.Write(HTTPGET) >> C:\users\default\documents\new.vbs
echo objFile.Close >> C:\users\default\documents\new.vbs
echo Wscript.Quit >> C:\users\default\documents\new.vbs
start C:\users\default\documents\new.vbs
set /a requests=0
echo.
echo  Waiting for API response. . .
echo  Looking up IP Address. . .
:checkresponseexists
set /a requests=%requests% + 1
if %requests% gtr 7 goto failed
IF EXIST "C:\users\default\documents\response.txt" (
goto response_exist
) ELSE (
ping 127.0.0.1 -n 2 -w 1000 >nul
goto checkresponseexists
)
:failed
taskkill /f /im wscript.exe >nul
del "C:\users\default\documents\new.vbs" /f /q /s >nul
echo.
echo Did not receive a response from the API.
echo.
pause
goto menu
:response_exist
if "!anms!"=="0 " (
   set anims=False
) else (
   set anims=True
   set "gm=!gm: =!"
   if "!gm!"=="oui" (
       @mode 56, 30
       @mode 58, 30
       @mode 60, 30
       @mode 62, 30
       @mode 64, 30
       @mode 66. 30
       @mode 68, 30
   ) else if "!gm!"=="cui" (
       @mode 118, 31
       @mode 114, 31
       @mode 110, 31
       @mode 108, 31
       @mode 104, 31
       @mode 100, 31
       @mode 98, 30
       @mode 94, 30
       @mode 90, 30
       @mode 88, 30
       @mode 84, 30
       @mode 80, 30
       @mode 78, 30
       @mode 74, 30
       @mode 70, 30
       @mode 68, 30
   )
)
echo.
echo.
echo.
type C:\users\default\documents\response.txt
echo.
echo.
echo.
del "C:\users\default\documents\new.vbs" /f /q /s >nul
del "C:\users\default\documents\response.txt" /f /q /s >nul
pause
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        goto oIPC
    ) else if "!gm!"=="cui" (
        goto IPcheck
    )
)