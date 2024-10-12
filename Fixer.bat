@echo off
:Fixer
@title Hax MultiTool v3
@mode 118, 31
setlocal enabledelayedexpansion
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
        goto oFixer
    )
)
cls
for /L %%i in (1,1,6) do echo.
echo                                           Chroma
echo                                           Windows Tools
echo                                            ___        ___  _               
echo                                           ^| . ^\ ___  ^| __^>^<_^>__   ___  _ _ 
echo                                           ^|  _^/^/ ^| ' ^| _^> ^| ^|^\ ^\^/^/ ._^>^| '_^>
echo                                           ^|_^|  ^\_^|_. ^|_^|  ^|_^|^/^\_^\^\___.^|_^|  
echo.
echo.       
call button 1 0 "Hax v3" 42 14 "Run " 54 14 "Info" 66 14 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel% == 2 ( goto run )
if %errorlevel% == 3 ( echo. && echo. && echo. && echo                                         Tries to fix Windows problems and errors.&& timeout -t 4 -nobreak > nul)
if %errorlevel% == 4 (echo a>goback.txt && exit)
goto Fixer
:run
cls
for /L %%i in (1,1,6) do echo.
echo                                           Chroma
echo                                           Windows Tools
echo                                            ___        ___  _               
echo                                           ^| . ^\ ___  ^| __^>^<_^>__   ___  _ _ 
echo                                           ^|  _^/^/ ^| ' ^| _^> ^| ^|^\ ^\^/^/ ._^>^| '_^>
echo                                           ^|_^|  ^\_^|_. ^|_^|  ^|_^|^/^\_^\^\___.^|_^|  
echo.
echo.       
call button 1 0 "Hax v3" 42 14 "Run " 54 14 "Info" 66 14 "Back" # Press
echo.
echo.
echo.
echo Step 1. Please Wait
sfc /scannow
cls
for /L %%i in (1,1,6) do echo.
echo                                           Chroma
echo                                           Windows Tools
echo                                            ___        ___  _               
echo                                           ^| . ^\ ___  ^| __^>^<_^>__   ___  _ _ 
echo                                           ^|  _^/^/ ^| ' ^| _^> ^| ^|^\ ^\^/^/ ._^>^| '_^>
echo                                           ^|_^|  ^\_^|_. ^|_^|  ^|_^|^/^\_^\^\___.^|_^|  
echo.
echo.       
call button 1 0 "Hax v3" 42 14 "Run " 54 14 "Info" 66 14 "Back" # Press
echo.
echo.
echo.
echo Step 1. Completed
echo Step 2. Please Wait
dism /online /cleanup-image /checkhealth
cls
for /L %%i in (1,1,6) do echo.
echo                                           Chroma
echo                                           Windows Tools
echo                                            ___        ___  _               
echo                                           ^| . ^\ ___  ^| __^>^<_^>__   ___  _ _ 
echo                                           ^|  _^/^/ ^| ' ^| _^> ^| ^|^\ ^\^/^/ ._^>^| '_^>
echo                                           ^|_^|  ^\_^|_. ^|_^|  ^|_^|^/^\_^\^\___.^|_^|  
echo.
echo.       
call button 1 0 "Hax v3" 42 14 "Run " 54 14 "Info" 66 14 "Back" # Press
echo.
echo.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Please Wait
dism /online /cleanup-image /scanhealth
cls
for /L %%i in (1,1,6) do echo.
echo                                           Chroma
echo                                           Windows Tools
echo                                            ___        ___  _               
echo                                           ^| . ^\ ___  ^| __^>^<_^>__   ___  _ _ 
echo                                           ^|  _^/^/ ^| ' ^| _^> ^| ^|^\ ^\^/^/ ._^>^| '_^>
echo                                           ^|_^|  ^\_^|_. ^|_^|  ^|_^|^/^\_^\^\___.^|_^|  
echo.
echo.       
call button 1 0 "Hax v3" 42 14 "Run " 54 14 "Info" 66 14 "Back" # Press
echo.
echo.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Please Wait
dism /online /cleanup-image /restorehealth
cls
for /L %%i in (1,1,6) do echo.
echo                                           Chroma
echo                                           Windows Tools
echo                                            ___        ___  _               
echo                                           ^| . ^\ ___  ^| __^>^<_^>__   ___  _ _ 
echo                                           ^|  _^/^/ ^| ' ^| _^> ^| ^|^\ ^\^/^/ ._^>^| '_^>
echo                                           ^|_^|  ^\_^|_. ^|_^|  ^|_^|^/^\_^\^\___.^|_^|  
echo.
echo.       
call button 1 0 "Hax v3" 42 14 "Run " 54 14 "Info" 66 14 "Back" # Press
echo.
echo.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Step 4.2: Trying Additional Operations... 
dism /online /cleanup-image /restorehealth /Source:repairSource\install.wim
if ERRORLEVEL == 1 goto goonfix 
cls
for /L %%i in (1,1,6) do echo.
echo                                           Chroma
echo                                           Windows Tools
echo                                            ___        ___  _               
echo                                           ^| . ^\ ___  ^| __^>^<_^>__   ___  _ _ 
echo                                           ^|  _^/^/ ^| ' ^| _^> ^| ^|^\ ^\^/^/ ._^>^| '_^>
echo                                           ^|_^|  ^\_^|_. ^|_^|  ^|_^|^/^\_^\^\___.^|_^|  
echo.
echo.       
call button 1 0 "Hax v3" 42 14 "Run " 54 14 "Info" 66 14 "Back" # Press
echo.
echo.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Step 4.2. Completed
echo Step 5. Follow the steps on the screen
timeout -t 1 -nobreak >nul
sigverif
cls
for /L %%i in (1,1,6) do echo.
echo                                           Chroma
echo                                           Windows Tools
echo                                            ___        ___  _               
echo                                           ^| . ^\ ___  ^| __^>^<_^>__   ___  _ _ 
echo                                           ^|  _^/^/ ^| ' ^| _^> ^| ^|^\ ^\^/^/ ._^>^| '_^>
echo                                           ^|_^|  ^\_^|_. ^|_^|  ^|_^|^/^\_^\^\___.^|_^|  
echo.
echo.       
call button 1 0 "Hax v3" 42 14 "Run " 54 14 "Info" 66 14 "Back" # Press
echo.
echo.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Step 4.2. Completed
echo Step 5. Completed
echo Step 6. Please Wait
del /q /f /s %temp% >nul 2>&1
cls
for /L %%i in (1,1,6) do echo.
echo                                           Chroma
echo                                           Windows Tools
echo                                            ___        ___  _               
echo                                           ^| . ^\ ___  ^| __^>^<_^>__   ___  _ _ 
echo                                           ^|  _^/^/ ^| ' ^| _^> ^| ^|^\ ^\^/^/ ._^>^| '_^>
echo                                           ^|_^|  ^\_^|_. ^|_^|  ^|_^|^/^\_^\^\___.^|_^|  
echo.
echo.       
call button 1 0 "Hax v3" 42 14 "Run " 54 14 "Info" 66 14 "Back" # Press
echo.
echo.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Step 4.2. Completed
echo Step 5. Completed
echo Step 6. Completed
echo Step 7. Please Wait
del /q /f /s "C:\Windows\Temp" >nul 2>&1
goto fixfins
:goonfix
cls
for /L %%i in (1,1,6) do echo.
echo                                           Chroma
echo                                           Windows Tools
echo                                            ___        ___  _               
echo                                           ^| . ^\ ___  ^| __^>^<_^>__   ___  _ _ 
echo                                           ^|  _^/^/ ^| ' ^| _^> ^| ^|^\ ^\^/^/ ._^>^| '_^>
echo                                           ^|_^|  ^\_^|_. ^|_^|  ^|_^|^/^\_^\^\___.^|_^|  
echo.
echo.       
call button 1 0 "Hax v3" 42 14 "Run " 54 14 "Info" 66 14 "Back" # Press
echo.
echo.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Additional Operations Failed.
echo Step 5. Follow the steps on the screen
timeout -t 1 -nobreak >nul
sigverif
cls
for /L %%i in (1,1,6) do echo.
echo                                           Chroma
echo                                           Windows Tools
echo                                            ___        ___  _               
echo                                           ^| . ^\ ___  ^| __^>^<_^>__   ___  _ _ 
echo                                           ^|  _^/^/ ^| ' ^| _^> ^| ^|^\ ^\^/^/ ._^>^| '_^>
echo                                           ^|_^|  ^\_^|_. ^|_^|  ^|_^|^/^\_^\^\___.^|_^|  
echo.
echo.       
call button 1 0 "Hax v3" 42 14 "Run " 54 14 "Info" 66 14 "Back" # Press
echo.
echo.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Step 4.2 Failed.
echo Step 5. Completed
echo Step 6. Please Wait
del /q /f /s %temp% >nul 2>&1
cls
for /L %%i in (1,1,6) do echo.
echo                                           Chroma
echo                                           Windows Tools
echo                                            ___        ___  _               
echo                                           ^| . ^\ ___  ^| __^>^<_^>__   ___  _ _ 
echo                                           ^|  _^/^/ ^| ' ^| _^> ^| ^|^\ ^\^/^/ ._^>^| '_^>
echo                                           ^|_^|  ^\_^|_. ^|_^|  ^|_^|^/^\_^\^\___.^|_^|  
echo.
echo.       
call button 1 0 "Hax v3" 42 14 "Run " 54 14 "Info" 66 14 "Back" # Press
echo.
echo.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Additional Operations Failed.
echo Step 5. Completed
echo Step 6. Completed
echo Step 7. Please Wait
del /q /f /s "C:\Windows\Temp" >nul 2>&1
goto fixfins
:oFixer
@mode 56, 30
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Pc Fixer                ^|
echo ^| By Chroma               ^|
echo ============================
echo Tries to fix Windows problems 
echo and errors.
echo.
choice /c YN /n /m "Do you want to continue? [Y/N]: "
if %errorlevel% equ 2 (
    echo a>goback.txt
    exit
)
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Pc Fixer                ^|
echo ^| By Chroma               ^|
echo ============================
echo Tries to fix Windows problems 
echo and errors.
echo.
echo Step 1. Please Wait
sfc /scannow
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Pc Fixer                ^|
echo ^| By Chroma               ^|
echo ============================
echo Tries to fix Windows problems 
echo and errors.
echo.
echo Step 1. Completed
echo Step 2. Please Wait
dism /online /cleanup-image /checkhealth
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Pc Fixer                ^|
echo ^| By Chroma               ^|
echo ============================
echo Tries to fix Windows problems 
echo and errors.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Please Wait
dism /online /cleanup-image /scanhealth
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Pc Fixer                ^|
echo ^| By Chroma               ^|
echo ============================
echo Tries to fix Windows problems 
echo and errors.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Please Wait
dism /online /cleanup-image /restorehealth
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Pc Fixer                ^|
echo ^| By Chroma               ^|
echo ============================
echo Tries to fix Windows problems 
echo and errors.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Trying Additional Operations... 
dism /online /cleanup-image /restorehealth /Source:repairSource\install.wim
if ERRORLEVEL == 1 goto goonfix 
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Pc Fixer                ^|
echo ^| By Chroma               ^|
echo ============================
echo Tries to fix Windows problems 
echo and errors.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Step 4.2. Completed
echo Step 5. Follow the steps on the screen
timeout -t 1 -nobreak >nul
sigverif
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Pc Fixer                ^|
echo ^| By Chroma               ^|
echo ============================
echo Tries to fix Windows problems 
echo and errors.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Step 4.2. Completed
echo Step 5. Completed
echo Step 6. Please Wait
del /q /f /s %temp% >nul 2>&1
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Pc Fixer                ^|
echo ^| By Chroma               ^|
echo ============================
echo Tries to fix Windows problems 
echo and errors.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Step 4.2. Completed
echo Step 5. Completed
echo Step 6. Completed
echo Step 7. Please Wait
del /q /f /s "C:\Windows\Temp" >nul 2>&1
goto fixfins
:goonfix
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Pc Fixer                ^|
echo ^| By Chroma               ^|
echo ============================
echo Tries to fix Windows problems 
echo and errors.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Additional Operations Failed.
echo Step 5. Follow the steps on the screen
timeout -t 1 -nobreak >nul
sigverif
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Pc Fixer                ^|
echo ^| By Chroma               ^|
echo ============================
echo Tries to fix Windows problems 
echo and errors.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Step 4.2. Failed.
echo Step 5. Completed
echo Step 6. Please Wait
del /q /f /s %temp% >nul 2>&1
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Pc Fixer                ^|
echo ^| By Chroma               ^|
echo ============================
echo Tries to fix Windows problems 
echo and errors.
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Step 4.2. Failed.
echo Step 5. Completed
echo Step 6. Completed
echo Step 7. Please Wait
del /q /f /s "C:\Windows\Temp" >nul 2>&1

:fixfins
echo.
echo Pc Fixer: All operations have been done. Please restart your machine.
choice /c YN /m "Restart?"
if %ERRORLEVEL%==1 (shutdown -r -t 1)