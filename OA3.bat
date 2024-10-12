@echo off
@title Hax MultiTool v3
@mode 78, 34
setlocal enabledelayedexpansion
:_____________
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
echo.
echo                     Chroma, MSGuides, MASSGRAVE
echo                     Windows Tools
echo                     .  . __.  .__.._._         
echo                     ^|^\^/^|^(__   ^|  ^|^|,^|,* _. _   
echo                     ^|  ^|.__^)  ^|__^|^| ^| ^|^(_.^(^/,  
echo                     .__.    ,          ,       
echo                     [__] _.-+-*.  , _.-+- _ ._.
echo                     ^|  ^|^(_. ^| ^| ^\^/ ^(_] ^| ^(_^)[  
                           
:: call button 1 0 "Hax v3" 20 13 "Start" 34 13 "Info " 48 13 "Back " # Press
echo                                                                (Kms only)
:: call button 1 0 "Hax v3" 20 13 "Activate" 47 16 "Deactivate" 33 19 "Info" 47 19 "Back" # Press
call button 1 0 "Hax v3" 20 14 "Activate" 34 14 "Restore" 47 14 "Info" 47 17 "Back" # Press                                                                     
timeout -t 1 -nobreak >nul
Getinput /m %Press% /h 70

if !errorlevel!==2 (goto Choose)
if !errorlevel!==3 (
    cscript //nologo slmgr.vbs /ckms >nul
    cscript //nologo slmgr.vbs /upk >nul
    cscript //nologo slmgr.vbs /cpky >nul
    echo. && echo. && echo                                        The Office activation was succesfully restored. && timeout -t 3 -nobreak >nul 
)
if !errorlevel!==4 (echo. && echo. && echo                                        Activates Microsoft Office. && timeout -t 3 -nobreak >nul )
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
echo                                 ___  ___  ___  _           
echo                                ^| . ^|^| ^| '^| ^| '^<_^> ___  ___ 
echo                                ^| ^| ^|^| ^|- ^| ^|- ^| ^|^/ ^| '^/ ._^>
echo                                `___'^|_^|  ^|_^|  ^|_^|^\_^|_.^\___.
echo                                 ___        _    _             _            
echo                                ^| . ^| ___ _^| ^|_ ^<_^> _ _  ___ _^| ^|_ ___  _ _ 
echo                                ^|   ^|^/ ^| ' ^| ^|  ^| ^|^| ^| ^|^<_^> ^| ^| ^| ^/ . ^\^| '_^>
echo                                ^|_^|_^|^\_^|_. ^|_^|  ^|_^|^|__^/ ^<___^| ^|_^| ^\___^/^|_^|                                              
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
    echo. && echo. && echo                                        The Office activation was succesfully restored. && timeout -t 3 -nobreak >nul 
)
if !errorlevel!==4 (goto Choose2)
if !errorlevel!==5 (goto MAS)
if !errorlevel!==6 (echo. && echo. && echo                                        Activates Microsoft Office. && timeout -t 3 -nobreak >nul )
if !errorlevel!==7 (goto WinAct3)
goto Choose
:Choose2
cls
echo.
echo.
echo.
echo.
echo                                 Chroma, MSGuides, MASSGRAVE
echo                                 Windows Tools
echo                                 ___  ___  ___  _           
echo                                ^| . ^|^| ^| '^| ^| '^<_^> ___  ___ 
echo                                ^| ^| ^|^| ^|- ^| ^|- ^| ^|^/ ^| '^/ ._^>
echo                                `___'^|_^|  ^|_^|  ^|_^|^\_^|_.^\___.
echo                                 ___        _    _             _            
echo                                ^| . ^| ___ _^| ^|_ ^<_^> _ _  ___ _^| ^|_ ___  _ _ 
echo                                ^|   ^|^/ ^| ' ^| ^|  ^| ^|^| ^| ^|^<_^> ^| ^| ^| ^/ . ^\^| '_^>
echo                                ^|_^|_^|^\_^|_. ^|_^|  ^|_^|^|__^/ ^<___^| ^|_^| ^\___^/^|_^|                                              
echo.
echo.
echo                                                                (Kms only)
echo.
echo                                   Select Version:
echo                                  -
echo                                  -
echo                                  -
echo                                  -
echo                                  -
call button 1 0 "Hax v3" 33 16 "Activate" 47 16 "Disactivate" 33 25 "Info" 47 25 "Back" # Press
call button2 1 0 "Hax v3" 33 16 "Activate" 47 16 "Disactivate" 33 19 "Office 2021" 33 20 "Office 2019" 33 21 "Office 2016" 33 22 "Office 2010-2013" 33 23 "Office 365" 33 25 "Info" 47 25 "Back" # Press
timeout -t 1 -nobreak >nul
Getinput /m %Press% /h 70
if !errorlevel!==2 (goto Choose)
if !errorlevel!==3 (
    cscript //nologo slmgr.vbs /ckms >nul
    echo. && echo. && echo                                        The Office activation was succesfully restored. && timeout -t 3 -nobreak >nul 
)
if !errorlevel!==4 (goto 2021)
if !errorlevel!==5 (goto 2019)
if !errorlevel!==6 (goto 2016)
if !errorlevel!==7 (goto 2013)
if !errorlevel!==8 (goto 365)
if !errorlevel!==9 (echo. && echo. && echo                                        Activates Microsoft Office. && timeout -t 3 -nobreak >nul )
if !errorlevel!==10 (goto Choose)
goto Choose2
:_____________
:oWinAct3
@mode 56, 30
cls
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Office Activator        ^|
echo ^| By Chroma, MSGuides,    ^|
echo ^| MASSGRAVE               ^|
echo ============================
echo Activates Microsoft Office.
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
    echo The windows activation was succesfully restored. && timeout -t 3 -nobreak >nul 
)
if %winch% == 3 ( echo a>goback.txt && exit )
goto oWinAct3
:oChoose
cls
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Office Activator        ^|
echo ^| By Chroma, MSGuides,    ^|
echo ^| MASSGRAVE               ^|
echo ============================
echo Activates Microsoft Office.
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
goto oChoose
:oChoose2
cls
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Office Activator        ^|
echo ^| By Chroma, MSGuides,    ^|
echo ^| MASSGRAVE               ^|
echo ============================
echo Activates Microsoft Office.
echo.
echo.
echo  Select version:
echo  Office 2021       - 1
echo  Office 2019       - 2
echo  Office 2016       - 3
echo  Office 2010-2013  - 4
echo  Office 365        - 5
echo  Back              - 6
set winch=0
set /p winch=^>
if %winch% == 1 (goto 2021)
if %winch% == 2 (goto 2019)
if %winch% == 3 (goto 2016)
if %winch% == 4 (goto 2013)
if %winch% == 5 (goto 365)
if %winch% == 6 ( goto oChoose )
goto oChoose2
:_____________
:MAS
powershell -Command "irm https://get.activated.win | iex"
echo a>goback.txt && exit
:_____________
:2021
if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" (
    cd /d "%ProgramFiles%\Microsoft Office\Office16"
    echo Office Found!
) else if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" (
    cd /d "%ProgramFiles(x86)%\Microsoft Office\Office16"
    echo Office Found!
) else (
    Microsoft office was not found.
    pause
    echo a>goback.txt
    exit
)
echo Installing client key..
for /f %%x in ('dir /b ..\root\Licenses16\ProPlus2021VL_KMS*.xrm-ms') do (
    cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
)

echo Setting up environment..
cscript //nologo ospp.vbs /setprt:1688 >nul
cscript //nologo ospp.vbs /unpkey:6F7TH >nul

echo Installing license..
set i=1
cscript //nologo ospp.vbs /inpkey:FXYTK-NJJ8C-GB6DW-3DYQT-6F7TH >nul || goto notsupported
goto skms
:2019
if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" (
    cd /d "%ProgramFiles%\Microsoft Office\Office16"
    echo Office Found!
) else if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs"(
    cd /d "%ProgramFiles(x86)%\Microsoft Office\Office16" 
    echo Office Found!
) else (
    Microsoft office was not found.
    pause
    echo a>goback.txt
    exit
)
echo Installing client key..
for /f %%x in ('dir /b ..\root\Licenses16\ProPlus2019VL*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul)
for /f %%x in ('dir /b ..\root\Licenses16\ProPlus2019VL*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul)

echo Setting up environment..
cscript //nologo ospp.vbs /setprt:1688 >nul
cscript //nologo ospp.vbs /unpkey:6F7TH >nul

echo Installing license..
set i=1
cscript //nologo ospp.vbs /inpkey:NMMKJ-6RK4F-KMJVX-8D9MJ-6MWKP >nul||goto notsupported
goto skms

:2016
if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" (
    cd /d "%ProgramFiles%\Microsoft Office\Office16"
    echo Office Found!
) else if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" (
    cd /d "%ProgramFiles(x86)%\Microsoft Office\Office16"
    echo Office Found!
) else (
    Microsoft office was not found.
    pause
    echo a>goback.txt
    exit
)

echo Installing client key..
for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_kms*.xrm-ms') do (
    cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
)
for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_mak*.xrm-ms') do (
    cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
)

echo Setting up environment..
cscript //nologo ospp.vbs /setprt:1688 >nul
cscript //nologo ospp.vbs /unpkey:WFG99 >nul
cscript //nologo ospp.vbs /unpkey:DRTFM >nul
cscript //nologo ospp.vbs /unpkey:BTDRB >nul
cscript //nologo ospp.vbs /unpkey:CPQVG >nul

echo Installing license..
set i=1
cscript //nologo ospp.vbs /inpkey:XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99 >nul || goto notsupported
goto skms

:2013
if exist "%ProgramFiles%\Microsoft Office\Office15\ospp.vbs" set folder="%ProgramFiles%\Microsoft Office\Office15"
if exist "%ProgramFiles(x86)%\Microsoft Office\Office15\ospp.vbs" set folder="%ProgramFiles(x86)%\Microsoft Office\Office15"
if exist "%ProgramFiles%\Microsoft Office\Office14\ospp.vbs" set folder="%ProgramFiles%\Microsoft Office\Office14"
if exist "%ProgramFiles(x86)%\Microsoft Office\Office14\ospp.vbs" set folder="%ProgramFiles(x86)%\Microsoft Office\Office14"
cd /d %folder% >nul
if %errorlevel% == 0 (
    echo Office Found!
) else (
    Microsoft office was not found.
    pause
    echo a>goback.txt
    exit
)


echo Installing license..
cscript //nologo %folder%\ospp.vbs /inpkey:VYBBJ-TRJPB-QFQRF-QFT4D-H3GVB >nul
cscript //nologo %folder%\ospp.vbs /inpkey:YC7DK-G2NP3-2QQC3-J6H88-GVGXT >nul
echo Setting up environment..
cscript //nologo %folder%\ospp.vbs /sethst:kms8.msguides.com >nul
cscript //nologo %folder%\ospp.vbs /setprt:1688 >nul
echo Activating..
cscript //nologo  %folder%\ospp.vbs /act >nul
echo Script ended. 
echo Please check if office is activated.
pause 
echo a>goback.txt>nul
exit

:365
if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" (
    cd /d "%ProgramFiles%\Microsoft Office\Office16"
    echo Office Found!
) else if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" (
    cd /d "%ProgramFiles(x86)%\Microsoft Office\Office16"
    echo Office Found!
) else (
    Microsoft office was not found.
    pause
    echo a>goback.txt
    exit
)

echo Installing client key..
for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_kms*.xrm-ms') do (
    cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
)
for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_mak*.xrm-ms') do (
    cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
)

echo Setting up environment..
cscript //nologo ospp.vbs /setprt:1688 >nul
cscript //nologo ospp.vbs /unpkey:WFG99 >nul
cscript //nologo ospp.vbs /unpkey:DRTFM >nul
cscript //nologo ospp.vbs /unpkey:BTDRB >nul

echo Installing license..
set i=1
cscript //nologo ospp.vbs /inpkey:XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99 >nul || (
    cscript //nologo ospp.vbs /inpkey:NMMKJ-6RK4F-KMJVX-8D9MJ-6MWKP >nul || goto notsupported
)

:_____________
:skms
if %i% GTR 10 goto busy
if %i% EQU 1 (
    set KMS=kms7.MSGuides.com
) else if %i% EQU 2 (
    set KMS=107.175.77.7
) else (
    goto ato
)

cscript //nologo ospp.vbs /sethst:%KMS% >nul

:ato
cscript //nologo ospp.vbs /act | find /i "successful" && (
    echo Got succesful signal, product is activated! 
    goto halt
) || (
    echo Trying to activate office..
    echo Please wait..
    set /a i+=1
    goto skms
)

:notsupported
echo Sorry, your version is not supported.
goto halt

:busy
echo Couldn't get confirmation signal. Check if office is activated.

:halt
echo Script done.
pause >nul
echo a>goback.txt
exit
