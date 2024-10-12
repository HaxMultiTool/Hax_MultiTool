@echo off
@title Hax MultiTool v3
@mode 118, 31
setlocal enabledelayedexpansion
:WinAct3
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
        goto oWinAct3
    )
)

cls
echo.
echo.
echo.
echo.
echo                                       Chroma, MSGuides, MASSGRAVE
echo                                       Windows Tools
echo                                       _ _ _  _         _                         
echo                                      ^| ^| ^| ^|^<_^>._ _  _^| ^| ___  _ _ _  ___        
echo                                      ^| ^| ^| ^|^| ^|^| ' ^|^/ . ^|^/ . ^\^| ^| ^| ^|^<_-^<        
echo                                      ^|__^/_^/ ^|_^|^|_^|_^|^\___^|^\___^/^|__^/_^/ ^/__^/        
echo                                       ___        _    _             _            
echo                                      ^| . ^| ___ _^| ^|_ ^<_^> _ _  ___ _^| ^|_ ___  _ _ 
echo                                      ^|   ^|^/ ^| ' ^| ^|  ^| ^|^| ^| ^|^<_^> ^| ^| ^| ^/ . ^\^| '_^>
echo                                      ^|_^|_^|^\_^|_. ^|_^|  ^|_^|^|__^/ ^<___^| ^|_^| ^\___^/^|_^|  
for /L %%i in (1,1,6) do echo.
echo                                                                (Kms only)
call button 1 0 "Hax v3" 49 16 "Activate" 48 19 "Deactivate" 51 22 "Info" 51 25 "Back" # Press
timeout -t 1 -nobreak >nul
Getinput /m %Press% /h 70

if !errorlevel!==2 (goto Choose)
if !errorlevel!==3 (
    cscript //nologo slmgr.vbs /ckms >nul
    cscript //nologo slmgr.vbs /upk >nul
    cscript //nologo slmgr.vbs /cpky >nul
    echo. && echo. && echo                                        The windows activation was succesfully restored. && timeout -t 3 -nobreak >nul 
)
if !errorlevel!==4 (echo. && echo. && echo                                             Activates Windows 10, 11. && timeout -t 3 -nobreak >nul )
if !errorlevel!==5 (echo a>goback.txt && exit)
goto WinAct3
:Choose
cls
echo.
echo.
echo.
echo.
echo                                 Chroma, MSGuides, MASSGRAVE
echo                                 Windows Tools
echo                                 _ _ _  _         _                         
echo                                ^| ^| ^| ^|^<_^>._ _  _^| ^| ___  _ _ _  ___        
echo                                ^| ^| ^| ^|^| ^|^| ' ^|^/ . ^|^/ . ^\^| ^| ^| ^|^<_-^<        
echo                                ^|__^/_^/ ^|_^|^|_^|_^|^\___^|^\___^/^|__^/_^/ ^/__^/        
echo                                 ___        _    _             _            
echo                                ^| . ^| ___ _^| ^|_ ^<_^> _ _  ___ _^| ^|_ ___  _ _ 
echo                                ^|   ^|^/ ^| ' ^| ^|  ^| ^|^| ^| ^|^<_^> ^| ^| ^| ^/ . ^\^| '_^>
echo                                ^|_^|_^|^\_^|_. ^|_^|  ^|_^|^|__^/ ^<___^| ^|_^| ^\___^/^|_^|  
echo.
echo.
echo.
echo                                                                (Kms only)
echo.
echo                                   Choose:
echo                                  -
echo                                  -
call button 1 0 "Hax v3" 33 16 "Activate" 47 16 "Disactivate" 33 22 "Info" 47 22 "Back" # Press
call button2 1 0 "Hax v3" 33 16 "Activate" 47 16 "Disactivate" 33 19 "Original method" 33 20 "MAS method" 33 22 "Info" 47 22 "Back" # Press
timeout -t 1 -nobreak >nul
Getinput /m %Press% /h 70
if !errorlevel!==2 (goto Choose)
if !errorlevel!==3 (
    cscript //nologo slmgr.vbs /ckms >nul
    cscript //nologo slmgr.vbs /upk >nul
    cscript //nologo slmgr.vbs /cpky >nul
    echo. && echo. && echo                                        The windows activation was succesfully restored. && timeout -t 3 -nobreak >nul 
)
if !errorlevel!==4 (goto MSguides)
if !errorlevel!==5 (goto MAS)
if !errorlevel!==6 (echo. && echo. && echo                                        Activates Windows 10, 11. && timeout -t 3 -nobreak >nul )
if !errorlevel!==7 (goto WinAct3)
goto Choose
:oWinAct3
@mode 56, 30
cls
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Windows Activator       ^|
echo ^| By Chroma, MSGuides,    ^|
echo ^| MASSGRAVE               ^|
echo ============================
echo Activates Windows 10, 11.
echo.
echo.
echo  Choose:
echo  Activate    - 1
echo  Deactivate  - 2 (Kms only)
echo  Back        - 3
set winch=0
set /p winch=^>
if %winch% == 1 ( goto oChoose )
if %winch% == 2 ( 
    cscript //nologo slmgr.vbs /ckms >nul
    cscript //nologo slmgr.vbs /upk >nul
    cscript //nologo slmgr.vbs /cpky >nul
    echo The windows activation was succesfully restored. && timeout -t 3 -nobreak >nul 
)
if %winch% == 3 ( echo a>goback.txt && exit )
goto oWinAct3
:oChoose
cls
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Windows Activator       ^|
echo ^| By Chroma, MSGuides,    ^|
echo ^| MASSGRAVE               ^|
echo ============================
echo Activates Windows 10, 11.
echo.
echo.
echo  Choose:
echo  Original method    - 1
echo  MAS method         - 2
echo  Back               - 3
set winch=0
set /p winch=^>
if %winch% == 1 ( goto MSguides )
if %winch% == 2 ( goto MAS )
if %winch% == 3 ( goto oWinAct3 )
:MAS
powershell -Command "irm https://get.activated.win | iex"
pause
echo a>goback.txt && exit
:MSguides
set i=1

wmic os | findstr /I "enterprise" >nul
if %errorlevel% EQU 0 (
    echo A compatible version of windows was found.
    for /f "tokens=2 delims==" %%a in ('wmic os get caption /value') do (
        set Caption=%%a
    )
    echo This version of windows should currently be: %Caption%
    echo Setting the activation key..
    cscript //nologo slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >nul || 
    cscript //nologo slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 >nul || 
    cscript //nologo slmgr.vbs /ipk YYVX9-NTFWV-6MDM3-9PT4T-4M68B >nul || 
    cscript //nologo slmgr.vbs /ipk 44RPN-FTY23-9VTTB-MP9BX-T84FV >nul || 
    cscript //nologo slmgr.vbs /ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9 >nul || 
    cscript //nologo slmgr.vbs /ipk 2F77B-TNFGY-69QQF-B8YKP-D69TJ >nul || 
    cscript //nologo slmgr.vbs /ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ >nul || 
    cscript //nologo slmgr.vbs /ipk QFFDN-GRT3P-VKWWX-X7T3R-8B639 >nul || 
    cscript //nologo slmgr.vbs /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D >nul || 
    cscript //nologo slmgr.vbs /ipk 92NFX-8DJQP-P6BBQ-THF9C-7CG2H >nul
    goto skms
) else (
    wmic os | findstr /I "home" >nul
    if %errorlevel% EQU 0 (
        echo A compatible version of windows was found.
        for /f "tokens=2 delims==" %%a in ('wmic os get caption /value') do (
            set Caption=%%a
        )
        echo This version of windows should currently be: %Caption%
        echo Setting the activation key..
        cscript //nologo slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 >nul || 
        cscript //nologo slmgr.vbs /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM >nul || 
        cscript //nologo slmgr.vbs /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH >nul || 
        cscript //nologo slmgr.vbs /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR >nul
        goto skms
    ) else (
        wmic os | findstr /I "education" >nul
        if %errorlevel% EQU 0 (
            echo A compatible version of windows was found.
            for /f "tokens=2 delims==" %%a in ('wmic os get caption /value') do (
                set Caption=%%a
            )
            echo This version of windows should currently be: %Caption%
            echo Setting the activation key..
            cscript //nologo slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 >nul || 
            cscript //nologo slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ >nul
            goto skms
        ) else (
            wmic os | findstr /I "11 pro" >nul
            if %errorlevel% EQU 0 (
                echo A compatible version of windows was found.
                for /f "tokens=2 delims==" %%a in ('wmic os get caption /value') do (
                    set Caption=%%a
                )
                echo This version of windows should currently be: %Caption%
                echo Setting the activation key..
                cscript //nologo slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul || 
                cscript //nologo slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >nul || 
                cscript //nologo slmgr.vbs /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J >nul || 
                cscript //nologo slmgr.vbs /ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF >nul || 
                cscript //nologo slmgr.vbs /ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y >nul || 
                cscript //nologo slmgr.vbs /ipk YVWGF-BXNMC-HTQYQ-CPQ99-66QFC >nul
                goto skms
            ) else (
                goto try10
            )
        )
    )
)

:skms
if %i% GTR 10 goto busy
if %i% EQU 1 set KMS=kms7.MSGuides.com
if %i% EQU 2 set KMS=kms8.MSGuides.com
if %i% EQU 3 set KMS=kms9.MSGuides.com
if %i% GTR 3 goto ato

cscript //nologo slmgr.vbs /skms %KMS%:1688 >nul

:ato
echo.
echo.
cscript //nologo slmgr.vbs /ato | find /i "successfully" && (
    echo Recived succesful signal, Windows is activated!
) || (
    echo Trying to activate windows..
    echo please wait.. 
    set /a i+=1 
    goto skms
)

goto halt

:try10
wmic os | findstr /I "enterprise" >nul
if %errorlevel% EQU 0 (
    echo A compatible version of windows was found.
    for /f "tokens=2 delims==" %%a in ('wmic os get caption /value') do (
        set Caption=%%a
    )
    echo This version of windows should currently be: %Caption%
    echo Setting the activation key..
    cscript //nologo slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >nul || 
    cscript //nologo slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 >nul || 
    cscript //nologo slmgr.vbs /ipk YYVX9-NTFWV-6MDM3-9PT4T-4M68B >nul || 
    cscript //nologo slmgr.vbs /ipk 44RPN-FTY23-9VTTB-MP9BX-T84FV >nul || 
    cscript //nologo slmgr.vbs /ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9 >nul || 
    cscript //nologo slmgr.vbs /ipk 2F77B-TNFGY-69QQF-B8YKP-D69TJ >nul || 
    cscript //nologo slmgr.vbs /ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ >nul || 
    cscript //nologo slmgr.vbs /ipk QFFDN-GRT3P-VKWWX-X7T3R-8B639 >nul || 
    cscript //nologo slmgr.vbs /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D >nul || 
    cscript //nologo slmgr.vbs /ipk 92NFX-8DJQP-P6BBQ-THF9C-7CG2H >nul
    goto skms
) else (
    wmic os | findstr /I "home" >nul
    if %errorlevel% EQU 0 (
        echo A compatible version of windows was found.
        for /f "tokens=2 delims==" %%a in ('wmic os get caption /value') do (
            set Caption=%%a
        )
        echo This version of windows should currently be: %Caption%
        echo Setting the activation key..
        cscript //nologo slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 >nul || 
        cscript //nologo slmgr.vbs /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM >nul || 
        cscript //nologo slmgr.vbs /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH >nul || 
        cscript //nologo slmgr.vbs /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR >nul
        goto skms
    ) else (
        wmic os | findstr /I "education" >nul
        if %errorlevel% EQU 0 (
            echo A compatible version of windows was found.
            for /f "tokens=2 delims==" %%a in ('wmic os get caption /value') do (
                set Caption=%%a
            )
            echo This version of windows should currently be: %Caption%
            echo Setting the activation key..
            cscript //nologo slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 >nul || 
            cscript //nologo slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ >nul
            goto skms
        ) else (
            wmic os | findstr /I "10 pro" >nul
            if %errorlevel% EQU 0 (
                echo A compatible version of windows was found.
                for /f "tokens=2 delims==" %%a in ('wmic os get caption /value') do (
                    set Caption=%%a
                )
                echo This version of windows should currently be: %Caption%
                echo Setting the activation key..
                cscript //nologo slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul || 
                cscript //nologo slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >nul || 
                cscript //nologo slmgr.vbs /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J >nul || 
                cscript //nologo slmgr.vbs /ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF >nul || 
                cscript //nologo slmgr.vbs /ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y >nul || 
                cscript //nologo slmgr.vbs /ipk YVWGF-BXNMC-HTQYQ-CPQ99-66QFC >nul
                goto skms
            ) else (
                goto notsupported
            )
        )
    )
)
:notsupported
echo Sorry, your version is not supported by this method.
goto halt

:busy
echo Tried to get Windows activated, but couldn't verify if the activation was successful.
echo Please check if the system is activated.

:halt
pause >nul
rem https://www.youtube.com/watch?v=2os9vhZNS0s