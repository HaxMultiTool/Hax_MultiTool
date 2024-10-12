@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"
curl -s https://raw.githubusercontent.com/HaxMultiTool/Tools-updates/main/MultiTool > temp.txt
set value=0
set /p value=<temp.txt
set "value=!value: =!"
if not %value%==b30009 (
    echo An update is available! Please update!
    pause
) else (
    echo Up to date.
)

del temp.txt
ping localhost -n 1 -w 50> nul
taskkill /f /fi "windowtitle eq haxxstarter" >nul 2>&1
checkforduplicate.exe
:haxMultiToolv3
color f
IF EXIST output.txt (
    del output.txt
)
IF EXIST hplayit.exe (
   del hplayit.exe
)
IF EXIST MusicBot.jar (
   del MusicBot.jar
)
IF EXIST javaInst.exe (
   del javaInst.exe
)
IF EXIST TItool.exe (
   del TItool.exe
)
IF EXIST HaxGPT.exe (
   del HaxGPT.exe
)

if exist settings/su.txt (
   set /p su=<settings/su.txt
   IF NOT "!su!"=="0 " (
      echo su: !su!
      net session >nul 2>&1
      if !errorlevel! == 0 (
         echo All good.
      ) else (
         admin hax && exit
      )
   )
)
IF NOT EXIST settings/clr.txt (
   echo DEFAULT> settings/clr.txt
)
if exist settings/S1.txt (
   set /p Ef=<settings/S1.txt
) else (
   set Ef=0
   echo 0 > settings/S1.txt
)
if exist goback.txt (
    del goback.txt
)
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
)
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
:__________initializer________________________________
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
if exist settings/S2.txt (
   set /p Mu=<settings/S2.txt
) else (
   set Mu=0
   echo 0 > settings/S2.txt
)
if "!Mu!"=="0 " (
   set Mus=False
) else (
   set Mus=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0startup.wav").PlaySync();"
)
mode con lines=13 cols=70
title .
IF EXIST %appdata%\Microsoft\Credentials\p (
    call :gotoSafe pasrq
) ELSE (
    call :gotoSafe nazzaro
)
:errpswror
color 4
echo ^| Nope.
echo ^| WRONG PASSWORD.
timeout -t 1 -nobreak >nul
cls
:pasrq
color A
echo.
echo ^| MultiTool is protected. Please enter the password.
set /p pws=^| PASSWORD:
set /p psw=<%appdata%\Microsoft\Credentials\p
echo ^| Now checking..
IF /i %pws% EQU %psw% (call :gotoSafe nazzaro) ELSE (call :gotoSafe errpswror)
:nazzaro
timeout -t 1 -nobreak >nul
cls
color F
title Hax MultiTool


title hax3
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 9
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 79
   )
)

if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    IF "!gm!"=="cui" (
        call :gotoSafe ucui
    ) else if "!gm!"=="oui" (
        call :gotoSafe uoui
    ) else if "!gm!"=="cli" (
        call :gotoSafe ucli
    )
) else (
    echo cui> settings/gm.txt
    call :gotoSafe ucui
)

:__commandLineInterface_____________
:ucli
mode con lines=13 cols=70
echo  H
ping localhost -n 1 -w 50 >nul
timeout -t 1 -nobreak >nul
cls
echo.
ping localhost -n 1 -w 50 >nul
echo   a
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo  H
ping localhost -n 1 -w 50 >nul
cls
ping localhost -n 1 -w 50 >nul
echo    x
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo   a
ping localhost -n 1 -w 50 >nul
echo  H
ping localhost -n 1 -w 50 >nul
cls
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo    x
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo  Ha
ping localhost -n 1 -w 50 >nul
cls
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo    x
ping localhost -n 1 -w 50 >nul
echo  Ha
ping localhost -n 1 -w 50 >nul
cls
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo  Hax
ping localhost -n 1 -w 50 >nul
timeout -t 2 -nobreak >nul
cls
echo.
echo.
echo.
echo  Hax m
ping localhost -n 1 -w 300 >nul
cls
echo.
echo.
echo.
echo  Hax mu
ping localhost -n 1 -w 300 >nul
cls
echo.
echo.
echo.
echo  Hax mul
ping localhost -n 1 -w 300 >nul
cls
echo.
echo.
echo.
echo  Hax mult
ping localhost -n 1 -w 300 >nul
cls
echo.
echo.
echo.
echo  Hax multi
ping localhost -n 1 -w 300 >nul
cls
echo.
echo.
echo.
echo  Hax multit
ping localhost -n 1 -w 300 >nul
cls
echo.
echo.
echo.
echo  Hax multito
ping localhost -n 1 -w 300 >nul
cls
echo.
echo.
echo.
echo  Hax multitoo
ping localhost -n 1 -w 300 >nul
cls
echo.
echo.
echo.
echo  Hax Multitool
ping localhost -n 1 -w 300 >nul
cls
echo.
echo.
echo.
ping localhost -n 1 -w 300 >nul
echo  Hax MultiTool v3
timeout -t 2 -nobreak >nul
ping localhost -n 1 -w 200 >nul
echo strt > outtput.txt
ping localhost -n 1 -w 200 >nul
if "!anms!"=="0 " (
   set anims=False
   mode con lines=16 cols=109
) else (
   set anims=True
   mode con lines=13 cols=80
   mode con lines=14 cols=90
   mode con lines=15 cols=100
   mode con lines=16 cols=109
)
for /f "tokens=*" %%a in (outtput.txt) do set clinpt=%%a
ping localhost -n 1 -w 200 >nul
del outtput.txt
ping localhost -n 1 -w 200 >nul
if "!clinpt!"=="" (echo a >nul)
@title Hax MultiTool v3
if !index! geq 11 set /a index = -1
:commandline
if exist settings/db.txt (
   set /p db=<settings/db.txt
) else (
   set db=0
   echo 0 > settings/db.txt
)
if "!db!"=="0 " (
   set deb=False
) else (
   set deb=True
)
if exist settings/su.txt (
   set /p su=<settings/su.txt
) else (
   set su=0
   echo 0 > settings/su.txt
)
if "!su!"=="0 " (
   set seu=False
) else (
   set seu=True
)
if exist "%appdata%\Microsoft\Credentials\p" (
   set pw=1
) else (
   set pw=0
)
IF NOT "!pw!"=="0" (
   set pew=True
) else (
   set pew=False
)
if exist settings/clr.txt (
   set /p currentcolr=<settings/clr.txt
) else (
   echo default > settings/clr.txt
   set currentcolr=default
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
if exist settings/gm.txt (
   set /p gm=<settings\gm.txt
   set "gm=!gm: =!"
   if "!gm!"=="cui" (
      set gem=ClickUI
   ) else if "!gm!"=="oui" (
      set gem=OldUI
   ) else if "!gm!"=="cli" (
      set gem=CommandLine
   )
) else (
   echo cui > settings/gm.txt
   set gem=ClickUI
   call :gotoSafe visualSETTS
)
if exist settings/wm.txt (
   set /p wm=<settings/wm.txt
) else (
   set wm=0
   echo 0 > settings/wm.txt
)

cli.exe
ping localhost -n 1 -w 50 >nul
if exist output.txt (
    ren "output.txt" "outputt.txt" >nul 2>&1
    if errorlevel 1 (
        taskkill /IM cli.exe /F >nul
        ren "output.txt" "outputt.txt" >nul 2>&1
        if errorlevel 1 (
            echo This is an error. Please, restart your pc.
            echo [Errcode: clioptbrkn]
            del output.txt
            pause
            exit /b
        ) else (
            ren "outputt.txt" "output.txt"
        )
    ) else (
        ren "outputt.txt" "output.txt"
    )
) else (
    echo This is an error. this shouldn't happen. Try again.
    echo [Errcode: clioptntf]
    timeout -t 2 -nobreak >nul
)

if exist output.txt (
    for /f "tokens=*" %%a in (output.txt) do set clinpt=%%a
)

if "!clinpt!"=="internet" (
    echo internet tools: connection checker, telnet telehack, google terminal, website tracker, playit agent, meme browser, ip checker, music bot, pinger
) else if "!clinpt!"=="internet connection checker" (
    echo Please wait...
    ipconfig /flushdns >nul
    set "loss=unknown"
    for /f "tokens=*" %%a in ('ping -n 3 8.8.8.8 ^| findstr /r /c:"[0-9]*%% packet loss" /c:"[0-9]*%% loss" /c:"[0-9]*%%"') do (
        set "line=%%a"
    )
    for /f "tokens=1-7 delims= " %%a in ("!line!") do (
        if "%%f"=="" (set "loss=%%e") else (set "loss=%%f")
    )
    if "%loss%"=="0" (
        echo Result: [Online]
    ) else if "%loss%"=="100" (
        echo Result: [Offline]
    ) else (
        echo Result: [Unstable]
    )
echo packetloss: %loss%
call :gotoSafe commandLine
) else if "!clinpt!"=="internet telnet telehack" (
    echo running telnet telehack...
    rem [aggiungi qui il codice per eseguire telnet telehack]
) else if "!clinpt!"=="internet google terminal search:" (
    set /p search="enter search term: "
    echo running google terminal search for "!search!"...
    rem [aggiungi qui il codice per eseguire la ricerca su google terminal]
) else if "!clinpt!"=="internet google terminal" (
    set /p search="enter search term: "
    echo running google terminal search for "!search!"...
    rem [aggiungi qui il codice per eseguire la ricerca su google terminal]
) else if "!clinpt!"=="internet website tracker website:" (
    set /p website="enter website url: "
    echo tracking website "!website!"...
    rem [aggiungi qui il codice per tracciare il sito web]
) else if "!clinpt!"=="internet website tracker" (
    set /p website="enter website url: " 
    echo tracking website "!website!"...
    rem [aggiungi qui il codice per tracciare il sito web]
) else if "!clinpt!"=="internet playit agent" (
    echo running playit...
    rem [aggiungi qui il codice per tracciare il sito web]
) else if "!clinpt!"=="internet meme browser search:" (
    set /p search="enter meme search term: "
    echo searching for memes: "!search!"...
    rem [aggiungi qui il codice per cercare meme]
) else if "!clinpt!"=="internet meme browser" (
    set /p search="enter meme search term: "
    echo searching for memes: "!search!"...
    rem [aggiungi qui il codice per cercare meme]
) else if "!clinpt!"=="internet ip checker" (
    echo checking ip...
    rem [aggiungi qui il codice per eseguire ip checker]
) else if "!clinpt!"=="internet music bot" (
    echo running music bot...
    rem [aggiungi qui il codice per eseguire music bot]
) else if "!clinpt!"=="internet pinger mode" (
    echo choose pinger mode: betterpinger, longerpinger, infinipinger
) else if "!clinpt!"=="internet pinger mode betterpinger" (
    echo running betterpinger...
    rem [aggiungi qui il codice per eseguire betterpinger]
) else if "!clinpt!"=="internet pinger mode longerpinger" (
    echo running longerpinger...
    rem [aggiungi qui il codice per eseguire longerpinger]
) else if "!clinpt!"=="internet pinger mode infinipinger" (
    echo running infinipinger...
    rem [aggiungi qui il codice per eseguire infinipinger]
) else if "!clinpt!"=="windows" (
    echo windows tools: keyfinder, spotify activator, windows activator, password changer, office activator, fork-bomb, gmadf
) else if "!clinpt!"=="windows keyfinder" (
    echo running keyfinder...
    rem [aggiungi qui il codice per eseguire keyfinder]
) else if "!clinpt!"=="windows spotify activator" (
    echo running spotify activator...
    rem [aggiungi qui il codice per eseguire spotify activator]
) else if "!clinpt!"=="windows windows activator" (
    echo running windows activator...
    rem [aggiungi qui il codice per eseguire windows activator]
) else if "!clinpt!"=="windows password changer" (
    echo running password changer...
    rem [aggiungi qui il codice per eseguire password changer]
) else if "!clinpt!"=="windows office activator" (
    echo running office activator...
    rem [aggiungi qui il codice per eseguire office activator]
) else if "!clinpt!"=="windows fork-bomb -yesyes" (
    echo running fork-bomb -yesyes...
    rem [aggiungi qui il codice per eseguire fork-bomb -yesyes]
) else if "!clinpt!"=="windows gmadf" (
    echo running gmadf...
    rem [aggiungi qui il codice per eseguire gmadf]
) else if "!clinpt!"=="ai" (
    echo ai tools: haxgpt, haxibomini
) else if "!clinpt!"=="ai haxgpt" (
    echo running haxgpt...
    rem [aggiungi qui il codice per eseguire haxgpt]
) else if "!clinpt!"=="ai haxibomini" (
    echo running haxibomini...
    rem [aggiungi qui il codice per eseguire haxibomini]
) else if "!clinpt!"=="trolls" (
    echo trolls tools: mouse-swapper, diskfiller, shutdowner, annoyer
) else if "!clinpt!"=="trolls mouse-swapper" (
    echo running mouse-swapper...
    rem [aggiungi qui il codice per eseguire mouse-swapper]
) else if "!clinpt!"=="trolls diskfiller" (
    echo choose diskfiller mode: zipbomb generator, filespammer
) else if "!clinpt!"=="trolls diskfiller zipbomb generator" (
    echo running zipbomb generator...
    rem [aggiungi qui il codice per eseguire zipbomb generator]
) else if "!clinpt!"=="trolls diskfiller filespammer" (
    echo filespammer: fill disk, back to original
    rem [aggiungi qui il codice per eseguire filespammer fill disk]
) else if "!clinpt!"=="trolls diskfiller filespammer fill disk" (
    echo running filespammer to fill disk...
    rem [aggiungi qui il codice per eseguire filespammer fill disk]
) else if "!clinpt!"=="trolls diskfiller filespammer back to original" (
    echo restoring original disk state...
    rem [aggiungi qui il codice per ripristinare lo stato originale del disco]
) else if "!clinpt!"=="trolls shutdowner" (
    echo running shutdowner...
    rem [aggiungi qui il codice per eseguire shutdowner]
) else if "!clinpt!"=="trolls annoyer" (
    echo running annoyer...
    rem [aggiungi qui il codice per eseguire annoyer]
) else if "!clinpt!"=="info" (
    echo info tools: userinfo, what's my ip, find ipv4/ipv6, wifi password finder
) else if "!clinpt!"=="info userinfo" (
    echo running userinfo...
    rem [aggiungi qui il codice per eseguire userinfo]
) else if "!clinpt!"=="info what's my ip" (
    echo running what's my ip...
    rem [aggiungi qui il codice per eseguire what's my ip]
) else if "!clinpt!"=="info find ipv4/ipv6" (
    echo choose mode: ipv4, ipv6, all
) else if "!clinpt!"=="info find ipv4/ipv6 ipv4" (
    echo finding ipv4...
    rem [aggiungi qui il codice per eseguire find ipv4]
) else if "!clinpt!"=="info find ipv4/ipv6 ipv6" (
    echo finding ipv6...
    rem [aggiungi qui il codice per eseguire find ipv6]
) else if "!clinpt!"=="info find ipv4/ipv6 all" (
    echo finding all ips...
    rem [aggiungi qui il codice per eseguire find all ips]
) else if "!clinpt!"=="info wifi password finder" (
    echo choose mode: saved wifis, password finder
) else if "!clinpt!"=="info wifi password finder saved wifis" (
    echo finding saved wifi networks...
    rem [aggiungi qui il codice per trovare le reti wifi salvate]
) else if "!clinpt!"=="info wifi password finder password finder" (
    echo running wifi password finder...
    rem [aggiungi qui il codice per trovare la password del wifi]
) else if "!clinpt!"=="aesthetic" (
    echo aesthetic tools: rainbow text, dancing man, parrot.live, matrix v1, matrix v2, luca's ls, retro pc, e.
) else if "!clinpt!"=="aesthetic rainbow text" (
    echo running rainbow text...
    rem [aggiungi qui il codice per eseguire rainbow text]
) else if "!clinpt!"=="aesthetic dancing man" (
    echo running dancing man...
    rem [aggiungi qui il codice per eseguire dancing man]
) else if "!clinpt!"=="aesthetic parrot.live" (
    echo running parrot.live...
    rem [aggiungi qui il codice per eseguire parrot.live]
) else if "!clinpt!"=="aesthetic matrix v1" (
    echo running matrix v1...
    rem [aggiungi qui il codice per eseguire matrix v1]
) else if "!clinpt!"=="aesthetic matrix v2" (
    echo running matrix v2...
    rem [aggiungi qui il codice per eseguire matrix v2]
) else if "!clinpt!"=="aesthetic luca's ls" (
    echo running luca's ls...
    rem [aggiungi qui il codice per eseguire luca's ls]
) else if "!clinpt!"=="aesthetic retro pc" (
    echo running retro pc...
    rem [aggiungi qui il codice per eseguire retro pc]
) else if "!clinpt!"=="aesthetic e." (
    echo running e....
    rem [aggiungi qui il codice per eseguire e.]
) else if "!clinpt!"=="games" (
    echo games: guess the number, tetris, pacman, pong
) else if "!clinpt!"=="games guess the number" (
    set /p guess="enter your guess: "
    echo you guessed: "!guess!"
    rem [aggiungi qui il codice per gestire il gioco guess the number]
) else if "!clinpt!"=="games guess the number guess:" (
    set /p guess="enter your guess: "
    echo you guessed: "!guess!"
    rem [aggiungi qui il codice per gestire il gioco guess the number]
) else if "!clinpt!"=="games tetris" (
    echo running tetris...
    rem [aggiungi qui il codice per eseguire tetris]
) else if "!clinpt!"=="games pacman" (
    echo running pacman...
    rem [aggiungi qui il codice per eseguire pacman]
) else if "!clinpt!"=="games pong" (
    echo running pong...
    rem [aggiungi qui il codice per eseguire pong]
) else if "!clinpt!"=="websites" (
    echo saved websites: download windows, download office, kms servers, fakeupdate, virustotal, mediafire, yopmail, jammin, epieos, ipinfo, doxbin
) else if "!clinpt!"=="websites download windows" (
    explorer "https://go.microsoft.com/fwlink/?linkid=691209"
) else if "!clinpt!"=="websites download office" (
    explorer "https://officecdn.microsoft.com/db/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/proplus2021retail.img"
) else if "!clinpt!"=="websites kms servers" (
    explorer "https://kms.msguides.com/"
) else if "!clinpt!"=="websites fakeupdate" (
    explorer "https://fakeupdate.net"
) else if "!clinpt!"=="website virustotal" (
    explorer "https://www.virustotal.com/gui/home/upload"
) else if "!clinpt!"=="website mediafire" (
    explorer "https://app.mediafire.com/myfiles"
) else if "!clinpt!"=="website yopmail" (
    explorer "https://yopmail.net/"
) else if "!clinpt!"=="website jammin" (
    explorer "https://we-are-jammin.xyz/"
) else if "!clinpt!"=="website epieos" (
    explorer "https://epieos.com/"
) else if "!clinpt!"=="website ipinfo" (
    explorer "https://ipinfo.io/"
) else if "!clinpt!"=="website doxbin" (
    explorer "https://doxbin.com"
) else if "!clinpt!"=="settings" (
    echo settings: security, visuals, audio, save
) else if "!clinpt!"=="settings security" (
    echo security settings: debugging, password, admin
) else if "!clinpt!"=="settings security debugging" (
   if "!db!"=="0 " (
      echo debugging enabled.
      echo 1 > settings/db.txt
   ) else (
      echo debugging disabled.
      echo 0 > settings/db.txt
   )
) else if "!clinpt!"=="settings security debugging true" (
    echo 1 > settings/db.txt
    echo debugging enabled.
) else if "!clinpt!"=="settings security debugging false" (
    echo 0 > settings/db.txt
    echo debugging disabled.
) else if "!clinpt!"=="settings security password true" (
    rem [aggiungi qui il codice per abilitare la password]
    echo password protection enabled.
) else if "!clinpt!"=="settings security password" (
    echo "!pw!"
    if "!pw!"=="1" (
        del %appdata%\microsoft\credentials\p
        echo password protection disabled.
    ) else (
        echo password enabled.
    )
) else if "!clinpt!"=="settings security password false" (
    del %appdata%\microsoft\credentials\p
    echo password protection disabled.
) else if "!clinpt!"=="settings security admin true" (
    echo 1 > settings/su.txt
    echo admin mode enabled.
) else if "!clinpt!"=="settings security admin false" (
    echo 0 > settings/su.txt
    echo admin mode disabled.
) else if "!clinpt!"=="settings visuals" (
    echo visual settings: white mode, gui, color set
) else if "!clinpt!"=="settings visuals white mode true" (
    echo 1 > settings/wm.txt
    echo white mode enabled.
) else if "!clinpt!"=="settings visuals white mode false" (
    echo 0 > settings/wm.txt
    echo white mode disabled.
) else if "!clinpt!"=="settings visuals gui clickui" (
    echo cui > settings/gm.txt
    echo gui set to clickui.
) else if "!clinpt!"=="settings visuals gui oldui" (
    echo oui > settings/gm.txt
    echo gui set to oldui.
) else if "!clinpt!"=="settings visuals gui commandline" (
    echo cli > settings/gm.txt
    echo gui set to commandline.
) else if "!clinpt!"=="settings visuals color set default" (
    echo default > settings/clr.txt
    echo color set to default.
) else if "!clinpt!"=="settings visuals color set red" (
    echo red > settings/clr.txt
    echo color set to red.
) else if "!clinpt!"=="settings visuals color set salmon" (
    echo salmon > settings/clr.txt
    echo color set to salmon.
) else if "!clinpt!"=="settings visuals color set mustard" (
    echo mustard > settings/clr.txt
    echo color set to mustard.
) else if "!clinpt!"=="settings visuals color set sun" (
    echo sun > settings/clr.txt
    echo color set to sun.
) else if "!clinpt!"=="settings visuals color set hackerman" (
    echo hackerman > settings/clr.txt
    echo color set to hackerman.
) else if "!clinpt!"=="settings visuals color set leaf" (
    echo leaf > settings/clr.txt
    echo color set to leaf.
) else if "!clinpt!"=="settings visuals color set diamond" (
    echo diamond > settings/clr.txt
    echo color set to diamond.
) else if "!clinpt!"=="settings visuals color set sky" (
    echo sky > settings/clr.txt
    echo color set to sky.
) else if "!clinpt!"=="settings visuals color set ocean" (
    echo ocean > settings/clr.txt
    echo color set to ocean.
) else if "!clinpt!"=="settings visuals color set peony" (
    echo peony > settings/clr.txt
    echo color set to peony.
) else if "!clinpt!"=="settings visuals color set retro" (
    echo retro > settings/clr.txt
    echo color set to retro.
) else if "!clinpt!"=="settings audio" (
    echo audio settings: effects, music
) else if "!clinpt!"=="settings audio effects true" (
    echo 1 > settings/s1.txt
    echo effects enabled.
) else if "!clinpt!"=="settings audio effects false" (
    echo 0 > settings/s1.txt
    echo effects disabled.
) else if "!clinpt!"=="settings audio music true" (
    echo 1 > settings/s2.txt
    echo music enabled.
) else if "!clinpt!"=="settings audio music false" (
    echo 0 > settings/s2.txt
    echo music disabled.
) else if "!clinpt!"=="settings save" (
    START cmd.exe /k @echo off ^&^& haxstarter.bat && exit 
) else if "!clinpt!"=="help" (
    echo help: discord, show all
) else if "!clinpt!"=="help discord" (
    explorer "https://dsc.gg/haxed"
) else if "!clinpt!"=="help show all" (
        echo Hax MultiTool v3
        echo * = Necessary
        echo Syntax: [Tool type]* [Tool]* Extra..
        echo.
        echo Tool list:
        echo internet tools: Connection Checker, Telnet Telehack, Google Terminal, Website Tracker, Playit Agent, Meme Browser, Ip Checker, Music Bot, Pinger
        echo windows tools: keyfinder, Spotify activator, windows activator, password changer, office activator, fork-bomb, gmadf
        echo ai tools: haxgpt, haxiboMini
        echo trolls tools: Mouse-Swapper, DiskFiller, Shutdowner, Annoyer
        echo info tools: Wifi Password Finder, find ipv4/ipv6, what's my IP, Userinfo
        echo aesthetic tools: rainbow text, dancing man, parrot.live, matrix v1, matrix v2, Luca's LS, Retro PC, E.
        echo games: guess the number, tetris, pacman, pong
        echo saved websites: Download Windows, Download Office, KMS Servers, Fakeupdate, virustotal, mediafire, YopMail, jammin, epieos, ipinfo, doxbin
        echo settings: security, visuals, audio, save
) else if "!clinpt!"=="cls" (
    cls
) else if "!clinpt!"=="clear" (
    cls
) else (
    echo unknown command: !clinpt!
)
ping localhost -n 1 -w 50 >nul
del output.txt
echo.
timeout -t 1 -nobreak >nul
call :gotoSafe commandline
:_____OldUserInterface__________________
:uoui
if "!anms!"=="0 " (
   set anims=False
   @mode 65, 40
) else (
   set anims=True
   @mode 70, 13
   @mode 69, 15
   @mode 68, 17
   @mode 67, 19
   @mode 67, 21
   @mode 66, 23
   @mode 66, 25
   @mode 66, 27
   @mode 65, 29
   @mode 65, 31
   @mode 65, 33
   @mode 65, 35
   @mode 65, 37
   @mode 65, 40
)

if exist settings/db.txt (
   set /p db=<settings/db.txt
) else (
   set db=0
   echo 0 > settings/db.txt
)
if "!db!"=="0 " (
   set deb=False
) else (
   set deb=True
)
if exist settings/su.txt (
   set /p su=<settings/su.txt
) else (
   set su=0
   echo 0 > settings/su.txt
)
if "!su!"=="0 " (
   set seu=False
) else (
   set seu=True
)
if exist "%appdata%\Microsoft\Credentials\p" (
   set pw=1
) else (
   set pw=0
)
IF NOT "!pw!"=="0" (
   set pew=True
) else (
   set pew=False
)
if exist settings/clr.txt (
   set /p currentcolr=<settings/clr.txt
) else (
   echo default > settings/clr.txt
   set currentcolr=default
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
if exist settings/gm.txt (
   set /p gm=<settings\gm.txt
   set "gm=!gm: =!"
   if "!gm!"=="cui" (
      set gem=ClickUI
   ) else if "!gm!"=="oui" (
      set gem=OldUI
   ) else if "!gm!"=="cli" (
      set gem=CommandLine
   )
) else (
   echo cui > settings/gm.txt
   set gem=ClickUI
   call :gotoSafe visualSETTS
)
if exist settings/wm.txt (
   set /p wm=<settings/wm.txt
) else (
   set wm=0
   echo 0 > settings/wm.txt
)
echo.
echo.
echo          ___     ___     ___________     ___      ____
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 1
        color 2
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 71
        color 72
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|   ^|   ^|   ^|   /    ___    \   \   \    /   /
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 3
       color 4
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 73
       color 74
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|   ^|___^|   ^|  ^|    /   \    ^|   \   \  /   /
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 5
       color 6
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 75
       color 76
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|           ^|  ^|   ^|_____^|   ^|    \   \/   /
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 9
       color A
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 79
       color 7A
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|    ___    ^|  ^|             ^|    /       \
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color B
       color C
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 7B
       color 7C
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|   ^|   ^|   ^|  ^|   _______   ^|   /    /\   \
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color D
       color E
       color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 7D
       color 7E
       color 70
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|   ^|   ^|   ^|  ^|   ^|     ^|   ^|  /    /  \   \
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 1
        color 2
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 71
        color 72
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|___^|   ^|___^|  ^|___^|     ^|___^| /____/    \___\
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 3
        color 4
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 73
        color 74
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo.
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 5
        color 6
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 75
        color 76
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^=
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 9
        color A
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 79
        color 7A
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo.
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color B
        color C
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 79
        color 7C
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo        ____    ____   __    __   __    ___________    ___
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color D
        color E
        color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 7D
        color 7E
        color 70
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|    \  /    ^| ^|  ^|  ^|  ^| ^|  ^|  ^|           ^|  ^|   ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 1
        color 2
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 71
        color 72
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|     \/     ^| ^|  ^|  ^|  ^| ^|  ^|  ^|____   ____^|  ^|   ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 3
        color 4
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 73
        color 74
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|            ^| ^|  ^|  ^|  ^| ^|  ^|      ^|   ^|      ^|   ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 5
        color 6
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 75
        color 76
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|   ^|\  /^|   ^| ^|  ^|__^|  ^| ^|  ^|___   ^|   ^|      ^|   ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 9
        color A
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 79
        color 7A
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|   ^| \/ ^|   ^| ^|        ^| ^|      ^|  ^|   ^|      ^|   ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color B
        color C
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 79
        color 7C
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|___^|    ^|___^| ^|________^| ^|______^|  ^|___^|      ^|___^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color D
        color E
        color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 7D
        color 7E
        color 70
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo.
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 1
        color 2
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 71
        color 72
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ____________   _________    _________   __
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 3
        color 4
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 73
        color 74
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo        ^|            ^| ^|         ^|  ^|         ^| ^|  ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 5
        color 6
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 75
        color 76
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo        ^|____    ____^| ^|   ___   ^|  ^|   ___   ^| ^|  ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 9
        color A
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 79
        color 7A
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo            ^|    ^|     ^|  ^|   ^|  ^|  ^|  ^|   ^|  ^| ^|  ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color B
        color C
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 79
        color 7C
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo            ^|    ^|     ^|  ^|___^|  ^|  ^|  ^|___^|  ^| ^|  ^|____
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color D
        color E
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 7D
        color 7E
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo            ^|    ^|     ^|         ^|  ^|         ^| ^|       ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 70
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo            ^|____^|     ^|_________^|  ^|_________^| ^|_______^|
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 1
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 71
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo.
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 2
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 72
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo.
echo ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^=
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 3
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 73
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 4
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
        color 74
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 5
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 75
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 6
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 76
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 9
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 79
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
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
       color 7A
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 70
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 20
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 27
   )
)
ping localhost -n 2 >nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 02
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 72
   )
)
ping localhost -n 2 >nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
        color 20
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 27
   )
)
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 02
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 72
   )
)
echo.
echo                        Hax MultiTool v3
echo                            -Chroma
echo [40;30m       [40;35m                    haxs.dev
echo                               ^<3
timeout -t 3 -nobreak >nul
if "!anms!"=="0 " (
   set anims=False
   @mode 65, 28
) else (
   set anims=True
   @mode 65, 40
   @mode 65, 38
   @mode 65, 36
   @mode 65, 34
   @mode 65, 32
   @mode 65, 30
   @mode 65, 28
)
ping localhost -n 2 >nul
rem --------------------------------------------------------------------------------------------------------------------------------
if "!anms!"=="0 " (
    set anims=False
    @mode 56, 28
) else (
   set anims=True
    @mode 65, 28
    @mode 64, 28
    @mode 63, 28
    @mode 62, 28
    @mode 61, 28
    @mode 60, 28
    @mode 59, 28
    @mode 58, 28
    @mode 57, 28
    @mode 56, 28
)
:ouistartmenu
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
@mode 56, 28
cls
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color B
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 79
   )
)
title MultiTool Menu
echo.
echo                    Welcome  Back!
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +          Tools Menu          +
echo            ================================
echo            +    [A] Internet Tools        +
echo            +    [B] Windows Tools         +
echo            +    [C] AI Tools              +
echo            +    [D] Trolls Tools          +
echo            +    [E] Info Tools            +
echo            +    [F] Aesthetics Tools      +
echo            +    [G] Internal Games        +
echo            +    [H] Registered Websites   +
echo            +    [I] Settings              +
echo            +    [J] Exit                  +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo                  [A] [B] [C] [D] [E] 
echo                  [F] [G] [H] [I] [J]
echo.
ping localhost -n 2 >nul
set CHOICEMENU=z
set /p CHOICEMENU= [40;30m [40;32m                         
for /f "delims=" %%i in ('powershell -command "[Console]::WriteLine('%CHOICEMENU%'.ToLower())"') do set "CHOICEMENU=%%i"
if %CHOICEMENU% == a call :gotoSafe ouiInternetTools
if %CHOICEMENU% == b call :gotoSafe ouiWindowsTools
if %CHOICEMENU% == c call :gotoSafe ouiAiTools
if %CHOICEMENU% == d call :gotoSafe ouiTrollsTools
if %CHOICEMENU% == e call :gotoSafe ouiInfoTools
if %CHOICEMENU% == f call :gotoSafe ouiAestetic
if %CHOICEMENU% == g call :gotoSafe ouiGames
if %CHOICEMENU% == h call :gotoSafe ouiWEBSITES
if %CHOICEMENU% == i call :gotoSafe ouiSETTS
if %CHOICEMENU% == j exit
call :gotoSafe ouistartmenu
rem --------------------------------------------------------------------------------------------------------------------------------
:ouiInternetTools
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
@mode 56, 30
cls
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
echo.
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +        Internet Tools        +
echo            ================================
echo            +    [A] Webdirectory Finder   +
echo            +    [B] Connection Checker    +
echo            +    [C] Telnet Telehack       +
echo            +    [D] Google Terminal       +
echo            +    [E] Website Tracker       +
echo            +    [F] The Unblocker         +
echo            +    [G] Playit Agent          +
echo            +    [H] Meme Browser          +
echo            +    [I] DNS Refresh           +
echo            +    [J] IP Checker            +
echo            +    [K] Music Bot             +
echo            +    [L] Pinger                +
echo            +    [M] Back                  +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo              [A] [B] [C] [D] [E] [F] [G]
echo                [H] [I] [J] [K] [L] [M]
echo.
ping localhost -n 2 >nul
set INTERNETTOOL=z
set /p INTERNETTOOL= [40;30m [40;32m                         
for /f "delims=" %%i in ('powershell -command "[Console]::WriteLine('%INTERNETTOOL%'.ToLower())"') do set "INTERNETTOOL=%%i"
if %INTERNETTOOL%==a (call :gotoSafe Subd)
if %INTERNETTOOL%==b (call :gotoSafe NetChecz)
if %INTERNETTOOL%==c (call :gotoSafe TELN)
if %INTERNETTOOL%==d (call :gotoSafe GoogCmd)
if %INTERNETTOOL%==e (call :gotoSafe WebTracer)
if %INTERNETTOOL%==f (call :gotoSafe THunblck)
if %INTERNETTOOL%==g (call :gotoSafe playitt)
if %INTERNETTOOL%==h (call :gotoSafe MBW)
if %INTERNETTOOL%==i (call :gotoSafe DNSR)
if %INTERNETTOOL%==j (call :gotoSafe Ipcheck)
if %INTERNETTOOL%==k (call :gotoSafe DSCMUSICBOT)
if %INTERNETTOOL%==l (call :gotoSafe Pg)
if %INTERNETTOOL%==m (call :gotoSafe ouistartmenu)
call :gotoSafe ouiInternetTools
rem --------------------------------------------------------------------------------------------------------------------------------
:ouiWindowsTools
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
@mode 56, 30
cls
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
echo.
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +        Windows Tools         +
echo            ================================
echo            + [A] Discord Nitro Activator  +
echo            + [B] Windows KeyFinder        +
echo            + [C] Spotify Activator        +
echo            + [D] Windows Activator        +
echo            + [E] Password Changer         +
echo            + [F] Office Activator         +
echo            + [G] Blur Videos              +
echo            + [H] SuperAdmin               +
echo            + [I] Fork-Bomb                +
echo            + [J] PC Fixer                 +
echo            + [K] Wureset                  +
echo            + [L] GMADF                    +
echo            + [M] Back                     + 
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo              [A] [B] [C] [D] [E] [F] [G]
echo                [H] [I] [J] [K] [L] [M]
echo.
ping localhost -n 2 >nul
set WINDOWSTOOL=z
set /p WINDOWSTOOL= [40;30m [40;32m                         
for /f "delims=" %%i in ('powershell -command "[Console]::WriteLine('%WINDOWSTOOL%'.ToLower())"') do set "WINDOWSTOOL=%%i"
if %WINDOWSTOOL%==a (call :gotoSafe DisNitrAc)
if %WINDOWSTOOL%==b (call :gotoSafe WiKeyFin)
if %WINDOWSTOOL%==c (call :gotoSafe SpotyX)
if %WINDOWSTOOL%==d (call :gotoSafe WindowAc)
if %WINDOWSTOOL%==e (call :gotoSafe PassChan)
if %WINDOWSTOOL%==f (call :gotoSafe OfficeAc)
if %WINDOWSTOOL%==g (call :gotoSafe blurstuff)
if %WINDOWSTOOL%==h (call :gotoSafe superadmin)
if %WINDOWSTOOL%==i (call :gotoSafe FUCK)
if %WINDOWSTOOL%==j (call :gotoSafe PCfixer)
if %WINDOWSTOOL%==k (call :gotoSafe wrreset)
if %WINDOWSTOOL%==l (call :gotoSafe GMADF)
if %WINDOWSTOOL%==m (call :gotoSafe ouistartmenu)
call :gotoSafe ouiWindowsTools
rem --------------------------------------------------------------------------------------------------------------------------------
:ouiAiTools
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
@mode 56, 28
cls
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 5
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 75
   )
)
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +           Ai Tools           +
echo            ================================
echo            +        [A] HaxiboMini        +
echo            +        [B] Moderator         +
echo            +        [C] Hax-GPT           +
echo            +        [D] WinTTS            +
echo            +        [E] Back              +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo                  [A] [B] [C] [D] [E]
echo.
echo.
ping localhost -n 2 >nul
set AITOOL=z
set /p AITOOL= [40;30m [40;32m                         
for /f "delims=" %%i in ('powershell -command "[Console]::WriteLine('%AITOOL%'.ToLower())"') do set "AITOOL=%%i"
if %AITOOL%==a ( call :gotoSafe HaxE )
if %AITOOL%==b ( call :gotoSafe Fatmod )
if %AITOOL%==c ( call :gotoSafe HaxGPT )
if %AITOOL%==d ( call :gotoSafe TTTS )
if %AITOOL%==e ( call :gotoSafe ouistartmenu )
call :gotoSafe ouiAiTools
rem --------------------------------------------------------------------------------------------------------------------------------
:ouiTrollsTools
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
@mode 56, 28
cls
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 70
   )
)
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +         Trolls Tools         +
echo            ================================
echo            +      [A] Mouse-Swapper       +
echo            +      [B] DiskFiller          +
echo            +      [C] Shutdowner          +
echo            +      [D] Rickroll            +
echo            +      [E] Annoyer             +
echo            +      [F] Back                +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo                [A] [B] [C] [D] [E] [F]
echo.
echo.
ping localhost -n 2 >nul
set TROLL=z
set /p TROLL= [40;30m [40;32m                         
for /f "delims=" %%i in ('powershell -command "[Console]::WriteLine('%TROLL%'.ToLower())"') do set "TROLL=%%i"
if %TROLL%==a (call :gotoSafe MSW)
if %TROLL%==b (call :gotoSafe ZIPg)
if %TROLL%==c (call :gotoSafe SHTDWN)
if %TROLL%==d (call :gotoSafe rick)
if %TROLL%==e (call :gotoSafe ANNY)
if %TROLL%==f (call :gotoSafe ouistartmenu)
call :gotoSafe ouiTrollsTools
rem --------------------------------------------------------------------------------------------------------------------------------
:ouiInfoTools
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
@mode 56, 28
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 4
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 74
   )
)
cls
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +          Info Tools          +
echo            ================================
echo            +   [A] Wifi Password Finder   +
echo            +   [B] Network Adapters       +
echo            +   [C] Find IPv4/IPv6         +
echo            +   [D] What's my IP           +
echo            +   [E] Connections            +
echo            +   [F] Userinfo               +
echo            +   [G] Neofetch               +
echo            +   [H] Diskinfo               +
echo            +   [I] Back                   +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo                  [A] [B] [C] [D] [E]
echo                    [F] [G] [H] [I]
echo.
ping localhost -n 2 >nul
set INTERNALTOOL=z
set /p INTERNALTOOL= [40;30m [40;32m                         
for /f "delims=" %%i in ('powershell -command "[Console]::WriteLine('%INTERNALTOOL%'.ToLower())"') do set "INTERNALTOOL=%%i"
if %INTERNALTOOL%==a ( call :gotoSafe PassFind )
if %INTERNALTOOL%==b ( call :gotoSafe Netadpts )
if %INTERNALTOOL%==c ( call :gotoSafe LocIP )
if %INTERNALTOOL%==d ( call :gotoSafe IPLoc )
if %INTERNALTOOL%==e ( call :gotoSafe ActivNets )
if %INTERNALTOOL%==f ( call :gotoSafe UserInf )
if %INTERNALTOOL%==g ( call :gotoSafe Neofetch )
if %INTERNALTOOL%==h ( call :gotoSafe DiskInfo )
if %INTERNALTOOL%==i ( call :gotoSafe ouistartmenu )

call :gotoSafe ouiInfoTools
rem --------------------------------------------------------------------------------------------------------------------------------
:ouiWebsites
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
@mode 56, 28
cls
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 9
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 79
   )
)
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +       Registered Sites       +
echo            ================================
echo            +     [A] Download Windows     +
echo            +     [B] Download Office      +
echo            +     [C] Osint Tools          +
echo            +     [D] KMS Servers          +
echo            +     [E] Fakeupdate           +
echo            +     [F] VirusTotal           +
echo            +     [G] MediaFire            +
echo            +     [H] YopMail              +
echo            +     [I] Jammin               +
echo            +     [J] Epieos               +
echo            +     [K] IpInfo               +
echo            +     [L] Doxbin               +
echo            +     [M] Back                 +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo              [A] [B] [C] [D] [E] [F] [G]
echo                [H] [I] [J] [K] [L] [M]
echo.
ping localhost -n 2 >nul
set CHWEBSITE=z
set /p CHWEBSITE= [40;30m [40;32m                         
for /f "delims=" %%i in ('powershell -command "[Console]::WriteLine('%CHWEBSITE%'.ToLower())"') do set "CHWEBSITE=%%i"
if %CHWEBSITE%==a ( explorer "https://go.microsoft.com/fwlink/?LinkId=691209" )
if %CHWEBSITE%==b ( explorer "https://officecdn.microsoft.com/db/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/ProPlus2021Retail.img" )
if %CHWEBSITE%==c ( explorer "https://www.mattiavicenzi.it/best-osint-tools-mattia-vicenzi/" )
if %CHWEBSITE%==d ( explorer "https://kms.msguides.com/")
if %CHWEBSITE%==e ( explorer "https://fakeupdate.net")
if %CHWEBSITE%==f ( explorer "https://www.virustotal.com/gui/home/upload" )
if %CHWEBSITE%==g ( explorer "https://app.mediafire.com/myfiles" )
if %CHWEBSITE%==h ( explorer "https://yopmail.net/")
if %CHWEBSITE%==i ( explorer "https://we-are-jammin.xyz/")
if %CHWEBSITE%==j ( explorer "https://epieos.com/")
if %CHWEBSITE%==k ( explorer "https://ipinfo.io/")
if %CHWEBSITE%==l ( explorer "https://doxbin.com")
if %CHWEBSITE% == 69 explorer "https://moanmyip.com"
if %CHWEBSITE% == sex explorer "https://moanmyip.com"
if %CHWEBSITE%==m ( call :gotoSafe ouistartmenu )
call :gotoSafe ouiWebsites
rem --------------------------------------------------------------------------------------------------------------------------------
:ouiAestheticTools
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
@mode 56, 28
cls
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color D
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 7D
   )
)
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +       Aesthetic Tools        +
echo            ================================
echo            +     [A] Wobbly Terminal      +
echo            +     [B] Rainbow Text         +
echo            +     [C] Dancing Man          +
echo            +     [D] Parrot.live          +
echo            +     [E] ascii.live           +
echo            +     [F] Luca's LS            +
echo            +     [G] Retro PC             +
echo            +     [H] Matrix               +  
echo            +     [I] Coffee               +  
echo            +     [J] E.                   +
echo            +     [k] Back                 +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo                [A] [B] [C] [D] [E] [F]
echo                  [G] [H] [I] [J] [K]
echo.
ping localhost -n 2 >nul
set AESTHETICTOOL=z
set /p AESTHETICTOOL= [40;30m [40;32m                         
for /f "delims=" %%i in ('powershell -command "[Console]::WriteLine('%AESTHETICTOOL%'.ToLower())"') do set "AESTHETICTOOL=%%i"
if %AESTHETICTOOL%==a ( call :gotoSafe wblCmd )
if %AESTHETICTOOL%==b ( call :gotoSafe RGBTxt )
if %AESTHETICTOOL%==c ( call :gotoSafe Danc )
if %AESTHETICTOOL%==d ( call :gotoSafe Yop )
if %AESTHETICTOOL%==e ( call :gotoSafe scii )
if %AESTHETICTOOL%==f ( call :gotoSafe LLS )
if %AESTHETICTOOL%==g ( call :gotoSafe RPC )
if %AESTHETICTOOL%==h ( call :gotoSafe MTRX )
if %AESTHETICTOOL%==i ( call :gotoSafe coffee )
if %AESTHETICTOOL%==j ( call :gotoSafe letter )
if %AESTHETICTOOL%==k ( call :gotoSafe ouistartmenu )
call :gotoSafe ouiAestheticTools
rem --------------------------------------------------------------------------------------------------------------------------------
:ouiGames
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
@mode 56, 28
cls
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 1
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 71
   )
)
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +           Hax Games          +
echo            ================================
echo            +     [A] Guess the Number     +
echo            +     [B] Haxed Client         +
echo            +     [C] Tetris               +
echo            +     [D] Pacman               +
echo            +     [E] Pong                 +
echo            +     [F] Back                 +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo                      [A] [B] [C]
echo                      [D] [E] [F]
echo.
ping localhost -n 2 >nul
set GAMETOOL=z
set /p GAMETOOL= [40;30m [40;32m                         
for /f "delims=" %%i in ('powershell -command "[Console]::WriteLine('%GAMETOOL%'.ToLower())"') do set "GAMETOOL=%%i"
if %GAMETOOL%==a ( call :gotoSafe GTN )
if %GAMETOOL%==b ( call :gotoSafe HxC )
if %GAMETOOL%==c ( call :gotoSafe TER )
if %GAMETOOL%==d ( call :gotoSafe PAC ) 
if %GAMETOOL%==e ( call :gotoSafe PONG )
if %GAMETOOL%==f ( call :gotoSafe ouistartmenu )
call :gotoSafe ouiGames
rem --------------------------------------------------------------------------------------------------------------------------------
:ouiSETTS
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 70
   )
)
echo.
echo                         Settings
echo.
echo.
echo           Visual       -  1
echo           Security     -  2
echo           Audio        -  3
echo           Save setings -  4
echo           Back         -  5
echo.
echo.
echo.
set SETTCHOOSE=0
set /p SETTCHOOSE= ^>
if %SETTCHOOSE% == 1 call :gotoSafe ouiVISU
if %SETTCHOOSE% == 2 call :gotoSafe ouiSEC
if %SETTCHOOSE% == 3 call :gotoSafe ouiAux
if %SETTCHOOSE% == 4 START cmd.exe /k @echo off ^&^& haxstarter.bat && exit
if %SETTCHOOSE% == 5 call :gotoSafe ouistartmenu
call :gotoSafe SETTS
:ouiVISU
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 70
   )
)
if exist settings/wm.txt (
   set /p wm=<settings/wm.txt
) else (
   set wm=0
   echo 0 > settings/wm.txt
)
if "!wm!"=="0 " (
   set wem=False
) else (
   set wem=True
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
echo                     Visual Settings
echo.
echo.
echo           White Mode      - 1  [%wem%]
echo           Animations      - 2  [%anims%]
echo           Gui Mode        - 3
echo           Color set       - 4
echo           Back            - 5
echo.
echo.
echo.
set VISUALMODE=0
set /p VISUALMODE= ^>
if %VISUALMODE% == 1 (
    if "!wm!"=="0 " (
        echo 1 > settings/wm.txt
    ) else (
        echo 0 > settings/wm.txt
    )
)
if %VISUALMODE% == 2 (
   if "!anms!"=="0 " (
      echo 1 > settings/am.txt
   ) else (
      echo 0 > settings/am.txt
   )
)
if %VISUALMODE% == 3 call :gotoSafe ouiVISUgui
if %VISUALMODE% == 4 call :gotoSafe ouiVISUclr

if %VISUALMODE% == 5 call :gotoSafe ouiSETTS
call :gotoSafe ouiVISU
:ouiVISUgui
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 70
   )
)
cls
echo.
echo                      Gui Settings
echo.
echo.
echo           ClickUI     - 1
echo           OldUI       - 2
echo           CommandLine - 3
echo           Back        - 4
echo.
echo.
echo.
set GUmode=0
set /p GUmode= ^>
if %GUmode% == 1 echo cui>settings\gm.txt && echo done. please save settings.
if %GUmode% == 2 echo oui>settings\gm.txt && echo done. please save settings.
if %GUmode% == 3 echo cli>settings\gm.txt && echo done. please save settings.
if %GUmode% == 4 call :gotoSafe ouiVISU 
timeout -t 1 -nobreak >nul
call :gotoSafe ouiVISUgui
:ouiVISUclr
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
echo.
echo                     Color Settings
echo.
echo.
echo [0m          Default   [0m - 1
echo [31m          Red       [0m - 2
echo [91m          Salmon    [0m - 3
echo [33m          Mustard   [0m - 4
echo [93m          Sun       [0m - 5
echo [92m          Hackerman [0m - 6
echo [32m          Leaf      [0m - 7
echo [36m          Diamond   [0m - 8
echo [96m          Sky       [0m - 9
echo [34m          Ocean     [0m - 10
echo [95m          Peony     [0m - 11
echo [35m          Retro     [0m - 12
echo           Back       - 13
echo.
echo.
echo.
set CLRMODE=0
set /p CLRMODE= ^>
if %CLRMODE% == 1 echo DEFAULT > settings/clr.txt
if %CLRMODE% == 2 echo RED > settings/clr.txt
if %CLRMODE% == 3 echo SALMON > settings/clr.txt
if %CLRMODE% == 4 echo MUSTARD > settings/clr.txt
if %CLRMODE% == 5 echo SUN > settings/clr.txt
if %CLRMODE% == 6 echo HACKERMAN > settings/clr.txt
if %CLRMODE% == 7 echo LEAF > settings/clr.txt
if %CLRMODE% == 8 echo DIAMOND > settings/clr.txt
if %CLRMODE% == 9 echo SKY > settings/clr.txt
if %CLRMODE% == 10 echo OCEAN > settings/clr.txt
if %CLRMODE% == 11 echo PEONY > settings/clr.txt
if %CLRMODE% == 12 echo RETRO > settings/clr.txt
if %CLRMODE% == 13 call :gotoSafe ouiVISU
echo done. please save settings.
timeout -t 1 -nobreak >nul
call :gotoSafe ouiVISUclr
:ouiSEC
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 70
   )
)
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
if exist settings/db.txt (
   set /p db=<settings/db.txt
) else (
   set db=0
   echo 0 > settings/db.txt
)
if "!db!"=="0 " (
   set deb=False
) else (
   set deb=True
)
if exist settings/su.txt (
   set /p su=<settings/su.txt
) else (
   set su=0
   echo 0 > settings/su.txt
)
if "!su!"=="0 " (
   set seu=False
) else (
   set seu=True
)
if exist "%appdata%\Microsoft\Credentials\p" (
   set pw=1
) else (
   set pw=0
)
IF NOT "!pw!"=="0" (
   set pew=True
) else (
   set pew=False
)
cls
echo.
echo                  Security Settings
echo.
echo.
echo           Debugging     - 1  [%deb%]
echo           Password      - 2  [%pew%]
echo           Admin         - 3  [%seu%]
echo           Back          - 4
echo.
echo.
echo.
set /p PASSETTING= ^>
if %PASSETTING% == 1 (
   if "!db!"=="0 " (
      echo 1 > settings/db.txt
   ) else (
      echo 0 > settings/db.txt
   )
)
if %PASSETTING% == 2 call :gotoSafe ouiSECpsw
if %PASSETTING% == 3 (
   if "!su!"=="0 " (
      echo 1 > settings/su.txt
   ) else (
      echo 0 > settings/su.txt
   )
)
if %PASSETTING% == 4 call :gotoSafe ouiSETTS
call :gotoSafe ouiSEC
:ouiSECpsw
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 70
   )
)
if exist "%appdata%\Microsoft\Credentials\p" (
   set /p localpsw=<%appdata%\Microsoft\Credentials\p >nul 2>&1
) else (
   set localpsw=None
)
cls
echo.
echo                     Password Setting
echo.
echo.
echo           Your current Password: %localpsw%
echo.
echo.
echo           1) Set new password
echo           2) Remove Password
echo           3) Back
echo.
echo.
set /p PASSETTING= ^>
if %PASSETTING% == 1 call :gotoSafe enablepsw
if %PASSETTING% == 2 del %appdata%\Microsoft\Credentials\p
if %PASSETTING% == 3 call :gotoSafe ouiSEC
call :gotoSafe ouiSECpsw
:ouiAux
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 70
   )
)
if exist settings/S1.txt (
   set /p Ef=<settings/S1.txt
) else (
   set Ef=0
   echo 0 > settings/S1.txt
)
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
)
if exist settings/S2.txt (
   set /p Mu=<settings/S2.txt
) else (
   set Mu=0
   echo 0 > settings/S2.txt
)
if "!Mu!"=="0 " (
   set Mus=False
) else (
   set Mus=True
)
cls
echo.
echo                    Audio Settings
echo.
echo.
echo           Effects     - 1  [%Eff%]
echo           Music       - 2  [%Mus%]
echo           Back        - 3
echo.
set /p SETTCHOOSE= ^>
if %SETTCHOOSE% == 1 (
   if "!Ef!"=="0 " (
      echo 1 > settings/S1.txt
   ) else (
      echo 0 > settings/S1.txt
   )
)
if %SETTCHOOSE% == 2 (
   if "!Mu!"=="0 " (
      echo 1 > settings/S2.txt
   ) else (
      echo 0 > settings/S2.txt
   )
)
if %SETTCHOOSE% == 3 call :gotoSafe ouiSETTS
call :gotoSafe ouiAux
rem --------------------------------------------------------------------------------------------------------------------------------
call :gotoSafe ouistartmenu
:_____ClickUserInterface______________________________
:ucui
if "!anms!"=="0 " (
   set anims=False
   @mode 36, 24
) else (
   set anims=True
   @mode 70, 13
   @mode 68, 14
   @mode 64, 15
   @mode 60, 16
   @mode 58, 17
   @mode 54, 18
   @mode 50, 19
   @mode 48, 20
   @mode 44, 21
   @mode 40, 22
   @mode 38, 23
   @mode 36, 24
)

rem ==================================
echo      h
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo x
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo        a
ping localhost -n 1 -w 50 >nul
cls
echo      h
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo  x
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo        a
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
cls
echo.
ping localhost -n 1 -w 50 >nul
echo      h
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo   x
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo        a
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
cls
echo.
ping localhost -n 1 -w 50 >nul
echo      h
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul 
echo    x
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo        a
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
cls
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo      h
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo     x
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo        a
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
cls
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo      h
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo      x
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo        a
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
cls
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo      h
ping localhost -n 1 -w 50 >nul
echo       x
ping localhost -n 1 -w 50 >nul
echo        a
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
cls
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo      h x
ping localhost -n 1 -w 50 >nul
echo        a
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
cls
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo      h a x
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
timeout -t 2 -nobreak >nul
cls
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color B
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 79
   )
)
if "!Mu!"=="0 " (
   set Mus=False
) else (
   set Mus=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0startup2.wav").PlaySync();"
)
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo     ____________________________
echo    ^/                            \
echo    ^|  h a x  m u l t i t o o l  ^|
echo    ^\____________________________^/
echo               -Chroma
echo               haxs.dev 
echo                  ^<3
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo                 ...
ping localhost -n 1 -w 50 >nul
timeout -t 3 -nobreak >nul
if "!anms!"=="0 " (
   set anims=False
   @mode 118, 31
) else (
   set anims=True
   mode con cols=46 lines=25
   @mode 50, 26
   @mode 55, 27
   @mode 60, 28
   @mode 65, 29
   @mode 70, 30
   @mode 80, 31
   @mode 90, 31
   @mode 100, 31
   @mode 118, 31
)
call :gotoSafe startmenu
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:sstartmenu
if "!anms!"=="0 " (
   set anims=False
   @mode 118, 31
) else (
   set anims=True
   @mode 71,30
   @mode 80,31
   @mode 90,31
   @mode 100, 31
   @mode 118, 31
)
:startmenu
taskkill /f /im GetInput.exe >nul 2>&1
@Title Hax MultiTool v3
@mode 118, 31
Batbox /h 0
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color B
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 79
   )
)
echo.
echo.
echo                                                   _    _            
echo                                                  ^| ^|  ^| ^|           
echo                                                  ^| ^|__^| ^| __ ___  __
echo                                                  ^|  __  ^|^/ _` \ \^/ ^/
echo                                                  ^| ^|  ^| ^| ^(_^| ^|^>  ^< 
echo                                                  ^|_^|  ^|_^|\__,_^/_^/\_\
echo                                        __  __       _ _   _ _______          _                     
echo                                       ^|  \^/  ^|     ^| ^| ^| ^(_^)__   __^|        ^| ^|                    
echo                                       ^| \  ^/ ^|_   _^| ^| ^|_ _   ^| ^| ___   ___ ^| ^|
echo                                       ^| ^|\^/^| ^| ^| ^| ^| ^| __^| ^|  ^| ^|^/ _ \ ^/ _ \^| ^|
echo                                       ^| ^|  ^| ^| ^|_^| ^| ^| ^|_^| ^|  ^| ^| ^(_^) ^| ^(_^) ^| ^|
echo                                       ^|_^|  ^|_^|\__^,_^|_^|\__^|_^|  ^|_^|\___^/ \___^/^|_^|
echo.
echo.
Call Button  25 17 "Internet Tools" 44 17 "Windows Tools" 62 17 "AI Tools" 75 17 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 (call :gotoSafe InternetTools)
if %errorlevel%==2 (call :gotoSafe WindowsTools)
if %errorlevel%==3 (call :gotoSafe Aitools)
if %errorlevel%==4 (call :gotoSafe TrollsTools)
if %errorlevel%==5 (call :gotoSafe InfoTools)
if %errorlevel%==6 (call :gotoSafe AestheticTools)
if %errorlevel%==7 (call :gotoSafe GAMES)
if %errorlevel%==8 (call :gotoSafe Websites)
if %errorlevel%==9 (call :gotoSafe mSETTS)
if %errorlevel%==10 (call :gotoSafe startmenu)
if %errorlevel%==11 (call :gotoSafe help)
if %errorlevel%==12 (call :gotoSafe fullscreen)
call :gotoSafe startmenu
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:InternetTools
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
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
IF EXIST hplayit.exe ( del /F hplayit.exe)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button  25 5 "Internet Tools" 44 17 "Windows Tools" 62 17 "AI Tools" 75 17 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2 23 7 "Webdirectory finder" 23 8 "Connection Checker" 23 9 "Telnet Telehack" 23 10 "Google Terminal" 23 11 "Website Tracker" 23 12 "The Unblocker" 23 13 "Playit Agent" 23 14 "Meme Browser" 23 15 "DNS Refresh" 23 16 "Ip Checker" 23 17 "Music Bot" 23 18 "Pinger" 25 5 "Internet Tools" 44 17 "Windows Tools" 62 17 "AI Tools" 75 17 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press 
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70


if %errorlevel%==1 (call :gotoSafe Subd)
if %errorlevel%==2 (call :gotoSafe NetChecz)
if %errorlevel%==3 (call :gotoSafe TELN)
if %errorlevel%==4 (call :gotoSafe GoogCmd)
if %errorlevel%==5 (call :gotoSafe WebTracer)
if %errorlevel%==6 (call :gotoSafe THunblck)
if %errorlevel%==7 (call :gotoSafe playitt)
if %errorlevel%==8 (call :gotoSafe MBW)
if %errorlevel%==9 (call :gotoSafe DNSR)
if %errorlevel%==10 (call :gotoSafe Ipcheck)
if %errorlevel%==11 (call :gotoSafe DSCMUSICBOT)
if %errorlevel%==12 (call :gotoSafe Pg)
if %errorlevel%==13 (call :gotoSafe internetTools)
if %errorlevel%==14 (call :gotoSafe WindowsTools)
if %errorlevel%==15 (call :gotoSafe Aitools)
if %errorlevel%==16 (call :gotoSafe TrollsTools)
if %errorlevel%==17 (call :gotoSafe InfoTools)
if %errorlevel%==18 (call :gotoSafe AestheticTools)
if %errorlevel%==19 (call :gotoSafe GAMES)
if %errorlevel%==20 (call :gotoSafe Websites)
if %errorlevel%==21 (call :gotoSafe mSETTS)
if %errorlevel%==22 (call :gotoSafe startmenu)
if %errorlevel%==23 (call :gotoSafe help)
if %errorlevel%==24 (call :gotoSafe fullscreen)


call :gotoSafe internetTools
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:WindowsTools
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)

@mode 118, 31
cls 
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
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button  25 17 "Internet Tools" 44 5 "Windows Tools" 62 17 "AI Tools" 75 17 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2  42 7 "Discord Nitro Activator" 42 8 "Windows KeyFinder" 42 9 "Spotify Activator" 42 10 "Windows Activator" 42 11 "Password Changer" 42 12 "Office Activator" 42 13 "Blur Videos" 42 14 "SuperAdmin" 42 15 "Fork-Bomb" 42 16 "PC Fixer" 42 17 "Wureset" 42 18 "GMADF" 25 17 "Internet Tools" 44 5 "Windows Tools" 62 17 "AI Tools" 75 17 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press 
timeout -t 1 -nobreak >nul
Getinput /m %Press% /h 70

if !errorlevel!==1 (call :gotoSafe DisNitrAc)
if !errorlevel!==2 (call :gotoSafe WiKeyFin)
if !errorlevel!==3 (call :gotoSafe SpotyX)
if !errorlevel!==4 (call :gotoSafe WindowAc)
if !errorlevel!==5 (call :gotoSafe PassChan)
if !errorlevel!==6 (call :gotoSafe OfficeAc)
if !errorlevel!==7 (call :gotoSafe blurstuff)
if !errorlevel!==8 (call :gotoSafe superadmin)
if !errorlevel!==9 (call :gotoSafe FUCK)
if !errorlevel!==10 (call :gotoSafe PCfixer)
if !errorlevel!==11 (call :gotoSafe wrreset)
if !errorlevel!==12 (call :gotoSafe GMADF)
if !errorlevel!==13 (call :gotoSafe internetTools)
if !errorlevel!==14 (call :gotoSafe WindowsTools)
if !errorlevel!==15 (call :gotoSafe Aitools)
if !errorlevel!==16 (call :gotoSafe TrollsTools)
if !errorlevel!==17 (call :gotoSafe InfoTools)
if !errorlevel!==18 (call :gotoSafe AestheticTools)
if !errorlevel!==19 (call :gotoSafe GAMES)
if !errorlevel!==20 (call :gotoSafe Websites)
if !errorlevel!==21 (call :gotoSafe mSETTS)
if !errorlevel!==22 (call :gotoSafe startmenu)
if !errorlevel!==23 (call :gotoSafe help)
if !errorlevel!==24 (call :gotoSafe fullscreen)

call :gotoSafe WindowsTools
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:Aitools
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 5
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 75
   )
)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button  25 17 "Internet Tools" 44 17 "Windows Tools" 62 5 "AI Tools" 75 17 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2 62 7 "HaxiboMini" 63 8 "Moderator" 65 9 "Hax-GPT" 66 10 "WinTTS" 25 17 "Internet Tools" 44 17 "Windows Tools" 62 5 "AI Tools" 75 17 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press 
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 ( call :gotoSafe HaxE )
if %errorlevel%==2 ( call :gotoSafe Fatmod )
if %errorlevel%==3 ( call :gotoSafe HaxGPT )
if %errorlevel%==4 ( call :gotoSafe TTTS )
if %errorlevel%==5 ( call :gotoSafe internetTools )
if %errorlevel%==6 ( call :gotoSafe WindowsTools )
if %errorlevel%==7 ( call :gotoSafe Aitools )
if %errorlevel%==8 ( call :gotoSafe TrollsTools )
if %errorlevel%==9 ( call :gotoSafe InfoTools )
if %errorlevel%==10 ( call :gotoSafe AestheticTools )
if %errorlevel%==11 ( call :gotoSafe GAMES )
if %errorlevel%==12 ( call :gotoSafe Websites )
if %errorlevel%==13 ( call :gotoSafe mSETTS )
if %errorlevel%==14 ( call :gotoSafe startmenu )
if %errorlevel%==15 ( call :gotoSafe help )
if %errorlevel%==16 ( call :gotoSafe fullscreen )

call :gotoSafe Aitools
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:TrollsTools
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 70
   )
)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button  25 17 "Internet Tools" 44 17 "Windows Tools" 62 17 "AI Tools" 75 5 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2  76 7 "Mouse-Swapper" 79 8 "DiskFiller" 79 9 "Shutdowner" 81 10 "Rickroll" 82 11 "Annoyer" 25 17 "Internet Tools" 44 17 "Windows Tools" 62 17 "AI Tools" 75 5 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 (call :gotoSafe MSW)
if %errorlevel%==2 (call :gotoSafe ZIPg)
if %errorlevel%==3 (call :gotoSafe SHTDWN)
if %errorlevel%==4 (call :gotoSafe rick)
if %errorlevel%==5 (call :gotoSafe ANNY)
if %errorlevel%==6 (call :gotoSafe internetTools)
if %errorlevel%==7 (call :gotoSafe WindowsTools)
if %errorlevel%==8 (call :gotoSafe Aitools)
if %errorlevel%==9 (call :gotoSafe TrollsTools)
if %errorlevel%==10 (call :gotoSafe InfoTools)
if %errorlevel%==11 (call :gotoSafe AestheticTools)
if %errorlevel%==12 (call :gotoSafe GAMES)
if %errorlevel%==13 (call :gotoSafe Websites)
if %errorlevel%==14 (call :gotoSafe mSETTS)
if %errorlevel%==15 (call :gotoSafe startmenu)
if %errorlevel%==16 (call :gotoSafe help)
if %errorlevel%==17 (call :gotoSafe fullscreen)

call :gotoSafe TrollsTools
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:InfoTools
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 4
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 74
   )
)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button 25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 26 "Info Tools" 41 16 "Aesthetic Tools" 62 16 "Games" 73 16 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2 23 24 "Wifi Password Finder" 23 23 "Network Adapters" 23 23 "find ipv4/ipv6" 23 22 "What's my IP" 23 21 "Connections" 23 20 "Userinfo" 23 19 "Neofetch" 23 18 "Diskinfo"  25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 26 "Info Tools" 41 16 "Aesthetic Tools" 62 16 "Games" 73 16 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press 
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 ( call :gotoSafe PassFind )
if %errorlevel%==2 ( call :gotoSafe Netadpts )
if %errorlevel%==3 ( call :gotoSafe LocIP )
if %errorlevel%==4 ( call :gotoSafe IPLoc )
if %errorlevel%==5 ( call :gotoSafe ActivNets )
if %errorlevel%==6 ( call :gotoSafe UserInf )
if %errorlevel%==7 ( call :gotoSafe Neofetch )
if %errorlevel%==8 ( call :gotoSafe DiskInfo )
if %errorlevel%==9 ( call :gotoSafe internetTools )
if %errorlevel%==10 ( call :gotoSafe WindowsTools )
if %errorlevel%==11 ( call :gotoSafe Aitools )
if %errorlevel%==12 ( call :gotoSafe TrollsTools )
if %errorlevel%==13 ( call :gotoSafe InfoTools )
if %errorlevel%==14 ( call :gotoSafe AestheticTools )
if %errorlevel%==15 ( call :gotoSafe GAMES )
if %errorlevel%==16 ( call :gotoSafe Websites )
if %errorlevel%==17 ( call :gotoSafe mSETTS )
if %errorlevel%==18 ( call :gotoSafe startmenu )
if %errorlevel%==19 ( call :gotoSafe help )
if %errorlevel%==20 (call :gotoSafe fullscreen)

call :gotoSafe InfoTools
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:AestheticTools
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color D
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 7D
   )
)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button  25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 16 "Info Tools" 41 26 "Aesthetic Tools" 62 16 "Games" 73 16 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2 39 24 "Wobbly Terminal" 39 23 "Rainbow Text" 39 22 "Dancing Man" 39 21 "Parrot.live" 39 20 "ascii.live" 39 19 "Luca's LS" 39 18 "Retro PC" 39 17 "Matrix" 39 17 "Coffee" 39 16 "E." 25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 16 "Info Tools" 41 26 "Aesthetic Tools" 62 16 "Games" 73 16 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70
 
if %errorlevel%==1 ( call :gotoSafe wblCmd )
if %errorlevel%==2 ( call :gotoSafe RGBTxt )
if %errorlevel%==3 ( call :gotoSafe Danc )
if %errorlevel%==4 ( call :gotoSafe Yop )
if %errorlevel%==5 ( call :gotoSafe scii )
if %errorlevel%==6 ( call :gotoSafe LLS )
if %errorlevel%==7 ( call :gotoSafe RPC )
if %errorlevel%==8 ( call :gotoSafe MTRX )
if %errorlevel%==9 ( call :gotoSafe coffee )
if %errorlevel%==10 ( call :gotoSafe letter )
if %errorlevel%==11 ( call :gotoSafe internetTools )
if %errorlevel%==12 ( call :gotoSafe WindowsTools )
if %errorlevel%==13 ( call :gotoSafe Aitools )
if %errorlevel%==14 ( call :gotoSafe TrollsTools )
if %errorlevel%==15 ( call :gotoSafe InfoTools )
if %errorlevel%==16 ( call :gotoSafe AestheticTools )
if %errorlevel%==17 ( call :gotoSafe GAMES )
if %errorlevel%==18 ( call :gotoSafe Websites )
if %errorlevel%==19 ( call :gotoSafe mSETTS )
if %errorlevel%==20 ( call :gotoSafe startmenu )
if %errorlevel%==21 ( call :gotoSafe help )
if %errorlevel%==22 ( call :gotoSafe fullscreen )

call :gotoSafe AestheticTools
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:Games
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 1
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 71
   )
)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button  25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 16 "Info Tools" 41 16 "Aesthetic Tools" 62 26 "Games" 73 16 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2 53 24 "Guess the number" 57 23 "Haxed Client" 63 22 "Tetris" 63 21 "Pacman" 65 20 "Pong" 25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 16 "Info Tools" 41 16 "Aesthetic Tools" 62 26 "Games" 73 16 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Getinput /m %Press% /h 70

if %errorlevel%==1 ( call :gotoSafe GTN )
if %errorlevel%==2 ( call :gotoSafe HxC )
if %errorlevel%==3 ( call :gotoSafe TER )
if %errorlevel%==4 ( call :gotoSafe PAC ) 
if %errorlevel%==5 ( call :gotoSafe PONG )
if %errorlevel%==6 ( call :gotoSafe internetTools )
if %errorlevel%==7 ( call :gotoSafe WindowsTools )
if %errorlevel%==8 ( call :gotoSafe Aitools )
if %errorlevel%==9 ( call :gotoSafe TrollsTools )
if %errorlevel%==10 ( call :gotoSafe InfoTools )
if %errorlevel%==11 ( call :gotoSafe AestheticTools )
if %errorlevel%==12 ( call :gotoSafe GAMES )
if %errorlevel%==13 ( call :gotoSafe Websites )
if %errorlevel%==14 ( call :gotoSafe mSETTS )
if %errorlevel%==15 ( call :gotoSafe startmenu )
if %errorlevel%==16 ( call :gotoSafe help )
if %errorlevel%==17 (call :gotoSafe fullscreen)
if %errorlevel%==110 ( call :gotoSafe nefx1 )
:nefx1
Getinput /m %Press% /h 70
if %errorlevel%==1 ( call :gotoSafe GTN )
if %errorlevel%==2 ( call :gotoSafe HxC )
if %errorlevel%==3 ( call :gotoSafe TER )
if %errorlevel%==4 ( call :gotoSafe PAC ) 
if %errorlevel%==5 ( call :gotoSafe PONG )
if %errorlevel%==6 ( call :gotoSafe internetTools )
if %errorlevel%==7 ( call :gotoSafe WindowsTools )
if %errorlevel%==8 ( call :gotoSafe Aitools )
if %errorlevel%==9 ( call :gotoSafe TrollsTools )
if %errorlevel%==10 ( call :gotoSafe InfoTools )
if %errorlevel%==11 ( call :gotoSafe AestheticTools )
if %errorlevel%==12 ( call :gotoSafe GAMES )
if %errorlevel%==13 ( call :gotoSafe Websites )
if %errorlevel%==14 ( call :gotoSafe mSETTS )
if %errorlevel%==15 ( call :gotoSafe startmenu )
if %errorlevel%==16 ( call :gotoSafe help )
if %errorlevel%==17 (call :gotoSafe fullscreen)
if %errorlevel%==101 ( call :gotoSafe nefx2 )
:nefx2
Getinput /m %Press% /h 70
if %errorlevel%==1 ( call :gotoSafe GTN )
if %errorlevel%==2 ( call :gotoSafe HxC )
if %errorlevel%==3 ( call :gotoSafe TER )
if %errorlevel%==4 ( call :gotoSafe PAC ) 
if %errorlevel%==5 ( call :gotoSafe PONG )
if %errorlevel%==6 ( call :gotoSafe internetTools )
if %errorlevel%==7 ( call :gotoSafe WindowsTools )
if %errorlevel%==8 ( call :gotoSafe Aitools )
if %errorlevel%==9 ( call :gotoSafe TrollsTools )
if %errorlevel%==10 ( call :gotoSafe InfoTools )
if %errorlevel%==11 ( call :gotoSafe AestheticTools )
if %errorlevel%==12 ( call :gotoSafe GAMES )
if %errorlevel%==13 ( call :gotoSafe Websites )
if %errorlevel%==14 ( call :gotoSafe mSETTS )
if %errorlevel%==15 ( call :gotoSafe startmenu )
if %errorlevel%==16 ( call :gotoSafe help )
if %errorlevel%==17 (call :gotoSafe fullscreen)
if %errorlevel%==102 ( call :gotoSafe nefx3 )
:nefx3
Getinput /m %Press% /h 70
if %errorlevel%==1 ( call :gotoSafe GTN )
if %errorlevel%==2 ( call :gotoSafe HxC )
if %errorlevel%==3 ( call :gotoSafe TER )
if %errorlevel%==4 ( call :gotoSafe PAC ) 
if %errorlevel%==5 ( call :gotoSafe PONG )
if %errorlevel%==6 ( call :gotoSafe internetTools )
if %errorlevel%==7 ( call :gotoSafe WindowsTools )
if %errorlevel%==8 ( call :gotoSafe Aitools )
if %errorlevel%==9 ( call :gotoSafe TrollsTools )
if %errorlevel%==10 ( call :gotoSafe InfoTools )
if %errorlevel%==11 ( call :gotoSafe AestheticTools )
if %errorlevel%==12 ( call :gotoSafe GAMES )
if %errorlevel%==13 ( call :gotoSafe Websites )
if %errorlevel%==14 ( call :gotoSafe mSETTS )
if %errorlevel%==15 ( call :gotoSafe startmenu )
if %errorlevel%==16 ( call :gotoSafe help )
if %errorlevel%==17 (call :gotoSafe fullscreen)
if %errorlevel%==97 ( call :gotoSafe nefx4 )
:nefx4
Getinput /m %Press% /h 70
if %errorlevel%==1 ( call :gotoSafe GTN )
if %errorlevel%==2 ( call :gotoSafe HxC )
if %errorlevel%==3 ( call :gotoSafe TER )
if %errorlevel%==4 ( call :gotoSafe PAC ) 
if %errorlevel%==5 ( call :gotoSafe PONG )
if %errorlevel%==6 ( call :gotoSafe internetTools )
if %errorlevel%==7 ( call :gotoSafe WindowsTools )
if %errorlevel%==8 ( call :gotoSafe Aitools )
if %errorlevel%==9 ( call :gotoSafe TrollsTools )
if %errorlevel%==10 ( call :gotoSafe InfoTools )
if %errorlevel%==11 ( call :gotoSafe AestheticTools )
if %errorlevel%==12 ( call :gotoSafe GAMES )
if %errorlevel%==13 ( call :gotoSafe Websites )
if %errorlevel%==14 ( call :gotoSafe mSETTS )
if %errorlevel%==15 ( call :gotoSafe startmenu )
if %errorlevel%==16 ( call :gotoSafe help )
if %errorlevel%==17 (call :gotoSafe fullscreen)
if %errorlevel%==115 ( call :gotoSafe nefx5 )
:nefx5
Getinput /m %press% /h 70
if %errorlevel%==1 ( call :gotoSafe GTN )
if %errorlevel%==2 ( call :gotoSafe HxC )
if %errorlevel%==3 ( call :gotoSafe TER )
if %errorlevel%==4 ( call :gotoSafe PAC ) 
if %errorlevel%==5 ( call :gotoSafe PONG )
if %errorlevel%==6 ( call :gotoSafe internetTools )
if %errorlevel%==7 ( call :gotoSafe WindowsTools )
if %errorlevel%==8 ( call :gotoSafe Aitools )
if %errorlevel%==9 ( call :gotoSafe TrollsTools )
if %errorlevel%==10 ( call :gotoSafe InfoTools )
if %errorlevel%==11 ( call :gotoSafe AestheticTools )
if %errorlevel%==12 ( call :gotoSafe GAMES )
if %errorlevel%==13 ( call :gotoSafe Websites )
if %errorlevel%==14 ( call :gotoSafe mSETTS )
if %errorlevel%==15 ( call :gotoSafe startmenu )
if %errorlevel%==16 ( call :gotoSafe help )
if %errorlevel%==17 (call :gotoSafe fullscreen)
if %errorlevel%==116 ( call :gotoSafe nefx6 )
:nefx6
Getinput /m %press% /h 70
if %errorlevel%==1 ( call :gotoSafe GTN )
if %errorlevel%==2 ( call :gotoSafe HxC )
if %errorlevel%==3 ( call :gotoSafe TER )
if %errorlevel%==4 ( call :gotoSafe PAC ) 
if %errorlevel%==5 ( call :gotoSafe PONG )
if %errorlevel%==6 ( call :gotoSafe internetTools )
if %errorlevel%==7 ( call :gotoSafe WindowsTools )
if %errorlevel%==8 ( call :gotoSafe Aitools )
if %errorlevel%==9 ( call :gotoSafe TrollsTools )
if %errorlevel%==10 ( call :gotoSafe InfoTools )
if %errorlevel%==11 ( call :gotoSafe AestheticTools )
if %errorlevel%==12 ( call :gotoSafe GAMES )
if %errorlevel%==13 ( call :gotoSafe Websites )
if %errorlevel%==14 ( call :gotoSafe mSETTS )
if %errorlevel%==15 ( call :gotoSafe startmenu )
if %errorlevel%==16 ( call :gotoSafe help )
if %errorlevel%==17 (call :gotoSafe fullscreen)
if %errorlevel%==111 ( explorer "https://cmdhax.xyz/wp-content/uploads/2024/06/image0.gif" )
call :gotoSafe Games
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:Websites
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 9
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 79
   )
)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button  25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 16 "Info Tools" 41 16 "Aesthetic Tools" 62 16 "Games" 73 26 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2 73 24 "Download Windows" 74 23 "Download Office" 78 22 "Osint Tools" 78 21 "KMS Servers" 79 20 "Fakeupdate" 79 19 "VirusTotal" 80 18 "MediaFire" 82 17 "YopMail" 83 16 "Jammin" 83 15 "more.." 25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 16 "Info Tools" 41 16 "Aesthetic Tools" 62 16 "Games" 73 26 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press 
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 ( explorer "https://go.microsoft.com/fwlink/?LinkId=691209" )
if %errorlevel%==2 ( explorer "https://officecdn.microsoft.com/db/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/ProPlus2021Retail.img" )
if %errorlevel%==3 ( explorer "https://www.mattiavicenzi.it/best-osint-tools-mattia-vicenzi/" )
if %errorlevel%==4 ( explorer "https://kms.msguides.com/")
if %errorlevel%==5 ( explorer "https://fakeupdate.net")
if %errorlevel%==6 ( explorer "https://www.virustotal.com/gui/home/upload" )
if %errorlevel%==7 ( explorer "https://app.mediafire.com/myfiles" )
if %errorlevel%==8 ( explorer "https://yopmail.net/")
if %errorlevel%==9 ( explorer "https://we-are-jammin.xyz/")
if %errorlevel%==10 ( call :gotoSafe Websites2 )
if %errorlevel%==11 (call :gotoSafe internetTools)
if %errorlevel%==12 (call :gotoSafe WindowsTools)
if %errorlevel%==13 (call :gotoSafe Aitools)
if %errorlevel%==14 (call :gotoSafe TrollsTools)
if %errorlevel%==15 (call :gotoSafe InfoTools)
if %errorlevel%==16 (call :gotoSafe AestheticTools)
if %errorlevel%==17 (call :gotoSafe GAMES)
if %errorlevel%==18 (call :gotoSafe Websites)
if %errorlevel%==19 (call :gotoSafe mSETTS)
if %errorlevel%==20 (call :gotoSafe startmenu)
if %errorlevel%==21 ( call :gotoSafe help )
if %errorlevel%==22 (call :gotoSafe fullscreen)
call :gotoSafe Websites
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:Websites2
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 9
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 79
   )
)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button  25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 16 "Info Tools" 41 16 "Aesthetic Tools" 62 16 "Games" 73 26 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2  83 24 "back.." 83 23 "Epieos" 83 22 "IpInfo" 83 21 "Doxbin" 25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 16 "Info Tools" 41 16 "Aesthetic Tools" 62 16 "Games" 73 26 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 ( call :gotoSafe Websites )
if %errorlevel%==2 ( explorer "https://epieos.com/")
if %errorlevel%==3 ( explorer "https://ipinfo.io/")
if %errorlevel%==4 ( explorer "https://doxbin.com")
if %errorlevel%==5 (call :gotoSafe internetTools)
if %errorlevel%==6 (call :gotoSafe WindowsTools)
if %errorlevel%==7 (call :gotoSafe Aitools)
if %errorlevel%==8 (call :gotoSafe TrollsTools)
if %errorlevel%==9 (call :gotoSafe InfoTools)
if %errorlevel%==10 (call :gotoSafe AestheticTools)
if %errorlevel%==11 (call :gotoSafe GAMES)
if %errorlevel%==12 (call :gotoSafe Websites)
if %errorlevel%==13 (call :gotoSafe mSETTS)
if %errorlevel%==14 (call :gotoSafe startmenu)
if %errorlevel%==15 ( call :gotoSafe help )
if %errorlevel%==16 (call :gotoSafe fullscreen)
call :gotoSafe Websites2
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:mSETTS
if "!anms!"=="0 " (
   set anims=False
   @mode 71,30
) else (
   set anims=True
   @mode 118, 31
   @mode 100, 31
   @mode 90,31
   @mode 80,31
   @mode 71,30
)
:SETTS
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 71,30
@Title Hax Multitool: Settings
cd /d "%~dp0"
cls
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 70
   )
)
echo.
echo.
echo                           _    _            
echo                          ^| ^|  ^| ^|           
echo                          ^| ^|__^| ^| __ ___  __
echo                          ^|  __  ^|^/ _` \ \^/ ^/
echo                          ^| ^|  ^| ^| ^(_^| ^|^>  ^< 
echo                          ^|_^|  ^|_^|\__,_^/_^/\_\
echo                 __  __       _ _   _ _______          _
echo                ^|  \^/  ^|     ^| ^| ^| ^(_^)__   __^|        ^| ^|
echo                ^| \  ^/ ^|_   _^| ^| ^|_ _   ^| ^| ___   ___ ^| ^|
echo                ^| ^|\^/^| ^| ^| ^| ^| ^| __^| ^|  ^| ^|^/ _ \ ^/ _ \^| ^|
echo                ^| ^|  ^| ^| ^|_^| ^| ^| ^|_^| ^|  ^| ^| ^(_^) ^| ^(_^) ^| ^|
echo                ^|_^|  ^|_^|\__^,_^|_^|\__^|_^|  ^|_^|\___^/ \___^/^|_^|
echo.
echo                                settings
Call Button 22 18 "Security" 22 21 "Visuals " 36 18 "Audio   " 36 21 "Back    " 53 0 "Save Settings" 1 0 "Hax v3" # Press
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 ( call :gotoSafe securitySETTS )
if %errorlevel%==2 ( call :gotoSafe visualSETTS )
if %errorlevel%==3 ( call :gotoSafe audioSETTS )
if %errorlevel%==4 ( call :gotoSafe sstartmenu )
if %errorlevel%==5 ( START cmd.exe /k @echo off ^&^& haxstarter.bat && exit )
if %errorlevel%==6 ( call :gotoSafe sstartmenu )

call :gotoSafe SETTS
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:visualSETTS
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
if exist settings/clr.txt (
   set /p currentcolr=<settings/clr.txt
) else (
   echo default > settings/clr.txt
   set currentcolr=default
)

if exist settings/wm.txt (
   set /p wm=<settings/wm.txt
) else (
   set wm=0
   echo 0 > settings/wm.txt
)
if "!wm!"=="0 " (
   set wem=False
) else (
   set wem=True
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
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    IF "!gm!"=="cui" (
        set gem=ClickUI
        call :gotoSafe aniviSETTS
    ) else if "!gm!"=="oui" (
        set gem=OldUI
        call :gotoSafe aniviSETTS
    ) else if "!gm!"=="cli" (
        set gem=CommandLine
    )
) else (
   echo cui> settings/gm.txt
   set gem=ClickUI
)
cls
echo.
echo.
echo                           _    _            
echo                          ^| ^|  ^| ^|           
echo                          ^| ^|__^| ^| __ ___  __
echo                          ^|  __  ^|^/ _` \ \^/ ^/
echo                          ^| ^|  ^| ^| ^(_^| ^|^>  ^< 
echo                          ^|_^|  ^|_^|\__,_^/_^/\_\
echo                 __  __       _ _   _ _______          _
echo                ^|  \^/  ^|     ^| ^| ^| ^(_^)__   __^|        ^| ^|
echo                ^| \  ^/ ^|_   _^| ^| ^|_ _   ^| ^| ___   ___ ^| ^|
echo                ^| ^|\^/^| ^| ^| ^| ^| ^| __^| ^|  ^| ^|^/ _ \ ^/ _ \^| ^|
echo                ^| ^|  ^| ^| ^|_^| ^| ^| ^|_^| ^|  ^| ^| ^(_^) ^| ^(_^) ^| ^|
echo                ^|_^|  ^|_^|\__^,_^|_^|\__^|_^|  ^|_^|\___^/ \___^/^|_^|
echo.
echo                             visual settings
echo.
echo.
echo.
echo.
echo.
echo                                 White mode:
echo                                 Animations:
echo                                 Gui mode:
Call Button 14 20 "Visuals " 14 17 "Security" 14 26 "Back    " 14 23 "Audio   " 53 0 "Save Settings" 1 0 "Hax v3" # Press
Call Button2 14 20 "Visuals " 14 17 "Security" 14 26 "Back    " 14 23 "Audio   " 53 0 "Save Settings" 1 0 "Hax v3" 48 20 "!wem!" 48 22 "!gem!" 48 21 "%anims%" # Press
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 ( call :gotoSafe visualSETTS )
if %errorlevel%==2 ( call :gotoSafe securitySETTS )
if %errorlevel%==3 ( call :gotoSafe SETTS )
if %errorlevel%==4 ( call :gotoSafe audioSETTS )
if %errorlevel%==5 ( START cmd.exe /k @echo off ^&^& haxstarter.bat && exit )
if %errorlevel%==6 ( call :gotoSafe sstartmenu )
if %errorlevel%==7 (
    if "!wm!"=="0 " (
        echo 1 > settings/wm.txt
    ) else (
        echo 0 > settings/wm.txt
    )
)
if %errorlevel%==8 ( call guiswitch )
if %errorlevel%==9 ( 
   if "!anms!"=="0 " (
      echo 1 > settings/am.txt
   ) else (
      echo 0 > settings/am.txt
   )
)
call :gotoSafe visualSETTS
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:aniviSETTS
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
if exist settings/clr.txt (
   set /p currentcolr=<settings/clr.txt
) else (
   echo default > settings/clr.txt
   set currentcolr=default
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
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    IF "!gm!"=="cui" (
        set gem=ClickUI
    ) else if "!gm!"=="oui" (
        set gem=OldUI
    ) else if "!gm!"=="cli" (
        set gem=CommandLine
        call :gotoSafe visualSETTS
    )
) else (
   echo cui> settings/gm.txt
   set gem=ClickUI
   call :gotoSafe visualSETTS
)
if exist settings/wm.txt (
   set /p wm=<settings/wm.txt
) else (
   set wm=0
   echo 0> settings/wm.txt
)
if "!wm!"=="0 " (
   set wem=False
) else (
   set wem=True
)
cls
echo.
echo.
echo                           _    _            
echo                          ^| ^|  ^| ^|           
echo                          ^| ^|__^| ^| __ ___  __
echo                          ^|  __  ^|^/ _` \ \^/ ^/
echo                          ^| ^|  ^| ^| ^(_^| ^|^>  ^< 
echo                          ^|_^|  ^|_^|\__,_^/_^/\_\
echo                 __  __       _ _   _ _______          _
echo                ^|  \^/  ^|     ^| ^| ^| ^(_^)__   __^|        ^| ^|
echo                ^| \  ^/ ^|_   _^| ^| ^|_ _   ^| ^| ___   ___ ^| ^|
echo                ^| ^|\^/^| ^| ^| ^| ^| ^| __^| ^|  ^| ^|^/ _ \ ^/ _ \^| ^|
echo                ^| ^|  ^| ^| ^|_^| ^| ^| ^|_^| ^|  ^| ^| ^(_^) ^| ^(_^) ^| ^|
echo                ^|_^|  ^|_^|\__^,_^|_^|\__^|_^|  ^|_^|\___^/ \___^/^|_^|
echo.
echo                             visual settings
echo.
echo.
echo.
echo.
echo.
echo                                 White mode:
echo                                 Animations:
echo                                 Gui mode:
echo                                 Colors:
if !index! geq 11 set /a index = -1
Call Button 14 20 "Visuals " 14 17 "Security" 14 26 "Back    " 14 23 "Audio   " 53 0 "Save Settings" 1 0 "Hax v3" # Press
Call Button2 14 20 "Visuals " 14 17 "Security" 14 26 "Back    " 14 23 "Audio   " 53 0 "Save Settings" 1 0 "Hax v3" 48 20 "!wem!" 48 21 "%anims%" 48 22 "%gem%" 48 23 "%currentcolr%" # Press
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 ( call :gotoSafe visualSETTS )
if %errorlevel%==2 ( call :gotoSafe securitySETTS )
if %errorlevel%==3 ( call :gotoSafe SETTS )
if %errorlevel%==4 ( call :gotoSafe audioSETTS )
if %errorlevel%==5 ( START cmd.exe /k @echo off ^&^& haxstarter.bat && exit )
if %errorlevel%==6 ( call :gotoSafe sstartmenu )
if %errorlevel%==7 (
    if "!wm!"=="0 " (
        echo 1 > settings/wm.txt
    ) else (
        echo 0 > settings/wm.txt
    )
)  
if %errorlevel%==8 ( 
   if "!anms!"=="0 " (
      echo 1 > settings/am.txt
   ) else (
      echo 0 > settings/am.txt
   )
)
if %errorlevel%==9 ( call guiswitch )
if %errorlevel%==10 ( set /a index+=1 >nul 2>&1 && call chngcolor index )
call :gotoSafe aniviSETTS
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:securitySETTS
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
if exist settings/db.txt (
   set /p db=<settings/db.txt
) else (
   set db=0
   echo 0 > settings/db.txt
)
if "!db!"=="0 " (
   set deb=False
) else (
   set deb=True
)
if exist settings/su.txt (
   set /p su=<settings/su.txt
) else (
   set su=0
   echo 0 > settings/su.txt
)
if "!su!"=="0 " (
   set seu=False
) else (
   set seu=True
)
if exist "%appdata%\Microsoft\Credentials\p" (
   set pw=1
) else (
   set pw=0
)
IF NOT "!pw!"=="0" (
   set pew=True
) else (
   set pew=False
)
cls
echo.
echo.
echo                           _    _            
echo                          ^| ^|  ^| ^|           
echo                          ^| ^|__^| ^| __ ___  __
echo                          ^|  __  ^|^/ _` \ \^/ ^/
echo                          ^| ^|  ^| ^| ^(_^| ^|^>  ^< 
echo                          ^|_^|  ^|_^|\__,_^/_^/\_\
echo                 __  __       _ _   _ _______          _
echo                ^|  \^/  ^|     ^| ^| ^| ^(_^)__   __^|        ^| ^|
echo                ^| \  ^/ ^|_   _^| ^| ^|_ _   ^| ^| ___   ___ ^| ^|
echo                ^| ^|\^/^| ^| ^| ^| ^| ^| __^| ^|  ^| ^|^/ _ \ ^/ _ \^| ^|
echo                ^| ^|  ^| ^| ^|_^| ^| ^| ^|_^| ^|  ^| ^| ^(_^) ^| ^(_^) ^| ^|
echo                ^|_^|  ^|_^|\__^,_^|_^|\__^|_^|  ^|_^|\___^/ \___^/^|_^|
echo.
echo                            security settings
echo.
echo.
echo                                 Enable Debugging:
echo                                 Enable Password:
echo                                 Run as Admin:
Call Button 14 20 "Visuals " 14 17 "Security" 14 26 "Back    " 14 23 "Audio   " 53 0 "Save Settings" 1 0 "Hax v3" # Press
Call Button2 14 20 "Visuals " 14 17 "Security" 14 26 "Back    " 14 23 "Audio   " 53 0 "Save Settings" 1 0 "Hax v3" 48 17 "%deb%" 48 18 "%pew%" 48 19 "%seu%" # Press
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 ( call :gotoSafe visualSETTS )
if %errorlevel%==2 ( call :gotoSafe securitySETTS )
if %errorlevel%==3 ( call :gotoSafe SETTS )
if %errorlevel%==4 ( call :gotoSafe audioSETTS )
if %errorlevel%==5 ( START cmd.exe /k @echo off ^&^& haxstarter.bat && exit )
if %errorlevel%==6 ( call :gotoSafe sstartmenu )
if %errorlevel%==7 (
   if "!db!"=="0 " (
      echo 1 > settings/db.txt
   ) else (
      echo 0 > settings/db.txt
   )
)
if %errorlevel%==8 (
   if "!pw!"=="0" (
      call :gotoSafe enablepsw
   ) else (
      del %appdata%\Microsoft\Credentials\p >nul
   )
)
if %errorlevel%==9 (
   if "!su!"=="0 " (
      echo 1 > settings/su.txt
   ) else (
      echo 0 > settings/su.txt
   )
)
call :gotoSafe securitySETTS
:enablepsw
if "!anms!"=="0 " (
   set anims=False
   @mode 71,30
) else (
   set anims=True
   if "!gm!"=="oui" (
        @mode 56, 28
        @mode 58, 28
        @mode 60, 28
        @mode 64, 28
        @mode 68, 29
        @mode 71, 30
    ) else if "!gm!"=="cli" (
    :: placeholder
    echo h
    )
)
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
echo.
echo                       Please Set Your Password
set /p setpsw=^|                           
set "valid=1"

for /L %%i in (0,1,100) do (
    set "char=!setpsw:~%%i,1!"
    set "nextchar=!setpsw:~%%i+1,1!"

    if "!char!"==" " (
        echo !nextchar! | findstr /R "[a-zA-Z]" > nul
        if !errorlevel! == 0 (
            set "valid=0"
            call :gotoSafe invalidinput
        )
    )
)

if !valid! == 1 (
    echo.
    echo                             Valid Input
    if not exist "%appdata%\Microsoft\Credentials\" mkdir "%appdata%\Microsoft\Credentials\"
    echo !setpsw! > "%appdata%\Microsoft\Credentials\p"
    echo                           ================
    echo                            Password Saved
    echo                           ================
    timeout -t 2 -nobreak > nul
    IF "!gm!"=="cui" (
        call :gotoSafe securitySETTS
    ) else if "!gm!"=="oui" (
        if "!anms!"=="0 " (
            @mode 56, 28
        ) else (
            @mode 71, 30
            @mode 68, 29
            @mode 64, 28
            @mode 60, 28
            @mode 58, 28
            @mode 56, 28
            call :gotoSafe ouiSECpsw
        )
    ) else if "!gm!"=="cli" (
        call :gotoSafe commandline
    )
    
)

:invalidinput
echo Do not use spaces and use 1 word only.
timeout -t 1 -nobreak > nul
call :gotoSafe enablepsw
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:audioSETTS
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
if exist settings/S1.txt (
   set /p Ef=<settings/S1.txt
) else (
   set Ef=0
   echo 0 > settings/S1.txt
)
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
)
if exist settings/S2.txt (
   set /p Mu=<settings/S2.txt
) else (
   set Mu=0
   echo 0 > settings/S2.txt
)
if "!Mu!"=="0 " (
   set Mus=False
) else (
   set Mus=True
)
cls
echo.
echo.
echo                           _    _            
echo                          ^| ^|  ^| ^|           
echo                          ^| ^|__^| ^| __ ___  __
echo                          ^|  __  ^|^/ _` \ \^/ ^/
echo                          ^| ^|  ^| ^| ^(_^| ^|^>  ^< 
echo                          ^|_^|  ^|_^|\__,_^/_^/\_\
echo                 __  __       _ _   _ _______          _
echo                ^|  \^/  ^|     ^| ^| ^| ^(_^)__   __^|        ^| ^|
echo                ^| \  ^/ ^|_   _^| ^| ^|_ _   ^| ^| ___   ___ ^| ^|
echo                ^| ^|\^/^| ^| ^| ^| ^| ^| __^| ^|  ^| ^|^/ _ \ ^/ _ \^| ^|
echo                ^| ^|  ^| ^| ^|_^| ^| ^| ^|_^| ^|  ^| ^| ^(_^) ^| ^(_^) ^| ^|
echo                ^|_^|  ^|_^|\__^,_^|_^|\__^|_^|  ^|_^|\___^/ \___^/^|_^|
echo.
echo                             audio settings
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                 Effects:
echo                                 Music:
Call Button 14 20 "Visuals " 14 17 "Security" 14 26 "Back    " 14 23 "Audio   " 53 0 "Save Settings" 1 0 "Hax v3" # Press
Call Button2 14 20 "Visuals " 14 17 "Security" 14 26 "Back    " 14 23 "Audio   " 53 0 "Save Settings" 1 0 "Hax v3" 48 23 "%Eff%" 48 24 "%Mus%" # Press
timeout -t 1 -nobreak >nul
Getinput /m %Press% /h 70

if %errorlevel%==1 ( call :gotoSafe visualSETTS )
if %errorlevel%==2 ( call :gotoSafe securitySETTS )
if %errorlevel%==3 ( call :gotoSafe SETTS )
if %errorlevel%==4 ( call :gotoSafe audioSETTS )
if %errorlevel%==5 ( START cmd.exe /k @echo off ^&^& haxstarter.bat && exit )
if %errorlevel%==6 ( call :gotoSafe sstartmenu )
if %errorlevel%==7 ( 
   if "!Ef!"=="0 " (
      echo 1 > settings/S1.txt
   ) else (
      echo 0 > settings/S1.txt
   )
)
if %errorlevel%==8 ( 
   if "!Mu!"=="0 " (
      echo 1 > settings/S2.txt
   ) else (
      echo 0 > settings/S2.txt
   )
)
call :gotoSafe audioSETTS
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:fullscreen
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color B
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 79
   )
)
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button 10 3 "Internet Tools" 34 4 "Windows Tools" 71 4 "AI Tools" 89 3 "Trolls Tools" 10 27 "Info Tools" 42 27 "Aesthetic Tools" 73 27 "Games" 88 27 "Saved Websites" 1 0 "Hax v3" 112 27 "+"  # Press
Call Button2 10 3 "Internet Tools" 8 5 "Webdirectory Finder" 8 6 "Connection Checker" 8 7 "Telnet Telehack" 8 8 "Google Terminal" 8 9 "Website Tracker" 8 10 "The Unblocker" 8 11 "Playit Agent" 8 12 "Meme Browser" 8 13 "DNS Refresh" 8 14 "IP Checker" 8 15 "Music Bot" 8 16 "Pinger" 34 4 "Windows Tools" 32 6 "Discord Nitro Activator" 32 7 "Windows KeyFinder" 32 8 "Spotify Activator" 32 9 "Windows Activator" 32 10 "Password Changer" 32 11 "Office Activator" 32 12 "Blur Videos" 32 13 "SuperAdmin" 32 14 "Fork-Bomb" 32 15 "PC Fixer" 32 16 "Wureset" 32 17 "GMADF" 71 4 "AI Tools" 71 6 "HaxiboMini" 72 7 "Moderator" 74 8 "Hax-GPT" 78 9 "TTS" 89 3 "Trolls Tools" 90 5 "Mouse-Swapper" 93 6 "DiskFiller" 93 7 "Shutdowner" 95 8 "Rickroll" 96 9 "Annoyer" 10 27 "Info Tools" 8 25 "Wifi Password Finder" 8 24 "Network Adapters" 8 23 "Find IPv4/IPv6" 8 22 "What's my IP" 8 21 "Connections" 8 20 "Userinfo" 8 19 "Neofetch" 8 18 "Diskinfo" 42 27 "Aesthetic Tools" 40 25 "Wobbly Terminal" 40 24 "Rainbow Text" 40 23 "Dancing Man" 40 22 "Parrot.live" 40 21 "ascii.live" 40 20 "Luca's LS" 40 19 "Retro PC" 40 18 "Matrix" 40 17 "Coffee" 40 16 "E." 73 27 "Games" 64 25 "Guess the Number" 68 24 "Haxed Client" 74 23 "Tetris" 74 22 "Pacman" 76 21 "Pong" 88 27 "Saved Websites" 88 25 "Download Windows" 89 24 "Download Office" 93 23 "Osint Tools" 93 22 "KMS Servers" 94 21 "Fakeupdate" 94 20 "VirusTotal" 95 19 "MediaFire" 97 18 "YopMail" 98 17 "Jammin" 98 16 "Epieos" 98 15 "IpInfo" 98 14 "Doxbin" 112 27 "-" # Press   
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel% geq 1 if %errorlevel% leq 13 (
    call :gotoSafe InternetTools
)
if %errorlevel% geq 14 if %errorlevel% leq 26 (
    call :gotoSafe WindowsTools
)
if %errorlevel% geq 27 if %errorlevel% leq 31 (
    call :gotoSafe AiTools
)
if %errorlevel% geq 32 if %errorlevel% leq 37 (
    call :gotoSafe TrollsTools
)
if %errorlevel% geq 38 if %errorlevel% leq 46 (
    call :gotoSafe InfoTools
)
if %errorlevel% geq 47 if %errorlevel% leq 57 (
    call :gotoSafe AestheticTools
)
if %errorlevel% geq 58 if %errorlevel% leq 63 (
    call :gotoSafe Games
)
if %errorlevel% geq 64 if %errorlevel% leq 76 (
    call :gotoSafe Websites
)
if %errorlevel%==77 ( call :gotoSafe startmenu )

call :gotoSafe fullscreen
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:help
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START cmd.exe /min powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 7F
   )
)
echo.
echo.
echo.
echo                                                 @@@@@@            @@@@@@             
ping localhost -n 1 -w 50 >nul
echo                                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        
ping localhost -n 1 -w 50 >nul
echo                                          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@      
ping localhost -n 1 -w 50 >nul
echo                                         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     
ping localhost -n 1 -w 50 >nul
echo                                        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    
ping localhost -n 1 -w 50 >nul
echo                                       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   
ping localhost -n 1 -w 50 >nul
echo                                      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
ping localhost -n 1 -w 50 >nul
echo                                      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
ping localhost -n 1 -w 50 >nul
echo                                     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
ping localhost -n 1 -w 50 >nul
echo                                    @@@@@@@@@@@@@@      @@@@@@@@@@      @@@@@@@@@@@@@@
ping localhost -n 1 -w 50 >nul
echo                                    @@@@@@@@@@@@@        @@@@@@@@        @@@@@@@@@@@@@
ping localhost -n 1 -w 50 >nul
echo                                    @@@@@@@@@@@@@        @@@@@@@@        @@@@@@@@@@@@@
ping localhost -n 1 -w 50 >nul
ping localhost -n 1 -w 50 >nul
echo                                    @@@@@@@@@@@@@@      @@@@@@@@@@      @@@@@@@@@@@@@@
ping localhost -n 1 -w 50 >nul
echo                                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
ping localhost -n 1 -w 50 >nul
echo                                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
ping localhost -n 1 -w 50 >nul
echo                                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
ping localhost -n 1 -w 50 >nul
echo                                    @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@
ping localhost -n 1 -w 50 >nul
echo                                     @@@@@@@@@@@@@@   @@@@@@@@@@@@   @@@@@@@@@@@@@@  
ping localhost -n 1 -w 50 >nul
echo                                         @@@@@@@@@@                    @@@@@@@@@@     
ping localhost -n 1 -w 50 >nul
echo                                             @@@@@                      @@@@@         
ping localhost -n 1 -w 50 >nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 9
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 79
   )
)
timeout -t 1 -nobreak > nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 7F
   )
)
ping localhost -n 1 -w 50 >nul
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 9
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 79
   )
)

explorer "https://dsc.gg/haxed"
call :gotoSafe startmenu
:__________Tools______________________________
:___internet___
:Subd
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
START /b curl -L https://gitlab.com/haxmultitool/subd/-/raw/main/subd.exe -o subd.exe -s
:spinner
cls
echo.
set mSpinner=%mSpinner%.
echo origin:https://github.com/HaxMultiTool/Subdirectory-Finder
echo fetching resources%mSpinner%
if %mSpinner%'==....' (set mSpinner=.)
ping localhost -n 2 >nul
tasklist /FI "IMAGENAME eq curl.exe" 2>NUL | find /I "curl.exe" >NUL
if NOT %ERRORLEVEL% == 0 (
    echo task done.
    if "!anms!"=="0 " (
        set anims=False
        @mode 78, 34
    ) else (
        set anims=True
        @mode 118, 31
        @mode 100, 32
        @mode 90, 32
        @mode 80, 33
        @mode 78, 34
    )
    call :gotoSafe subdfinde
)
call :gotoSafe spinner
:subdfinde
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe osubdfinde
    )
)
cls
echo.
echo.
echo.
echo                     Chroma
echo                     Internet Tools
echo                     .  .   .  .__            ,          
echo                     ^|  ^| _ ^|_ ^|  ^\*._. _  _.-+- _ ._.  .
echo                     ^|^/^\^|^(^/,[_^)^|__^/^|[  ^(^/,^(_. ^| ^(_^)[  ^\_^|
echo                                                      ._^|
echo                     .___      .                         
echo                     [__ *._  _^| _ ._.                   
echo                     ^|   ^|[ ^)^(_]^(^/,[                     
echo.   
call button 1 0 "Hax v3" 20 14 "Start" 34 14 "Info" 48 14 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (del subd.exe && call :gotoSafe startmenu)
if %errorlevel%==2 (echo. && echo. && echo. && subd.exe && echo. && del subd.exe && pause && call :gotoSafe InternetTools )
if %errorlevel%==3 (echo. && echo. && echo. && echo Finds subdirectories in a given https or http link. && echo Format: https://example.com/ && timeout -t 4 -nobreak > nul)
if %errorlevel%==4 (del subd.exe && call :gotoSafe InternetTools)
call :gotoSafe subdfinde
:osubdfinde
cls
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Webdirectory Finder     ^|
echo ^| By Chroma               ^|
echo ============================
echo Finds subdirectories in a 
echo given https or http link
echo Format: https://example.com/
echo.
subd.exe
del subd.exe
echo.
pause
call :gotoSafe ouiInternetTools
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:NetChecz
if "!anms!"=="0 " (
    set anims=False
    @mode 78, 34
) else (
    set anims=True
    @mode 118, 31
    @mode 100, 32
    @mode 90, 32
    @mode 80, 33
    @mode 78, 34
)
:NetChecz1
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
set /a received=0
set /a loss=0
set /a sent=0
set ratioR=
set ratioL=
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe oNetChecz
    )
)
echo.
echo.
echo.
echo.
echo                     Chroma
echo                     InternetTools
echo                      __                 ,        
echo                     ^/  ` _ ._ ._  _  _.-+-* _ ._ 
echo                     ^\__.^(_^)[ ^)[ ^)^(^/,^(_. ^| ^|^(_^)[ ^)    
echo                      __ .        .               
echo                     ^/  `^|_  _  _.;_^/ _ ._.       
echo                     ^\__.[ ^)^(^/,^(_.^| ^\^(^/,[         
echo.
echo.
call button 1 0 "Hax v3" 20 13 "Start" 34 13 "Info" 48 13 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (call :gotoSafe startmenu)
if %errorlevel%==2 (call :gotoSafe NetCheczl)
if %errorlevel%==3 (echo. && echo. && echo. && echo Checks if your internet connection is alive. && timeout -t 3 -nobreak >nul )
if %errorlevel%==4 (call :gotoSafe InternetTools)
call :gotoSafe NetChecz1
:NetCheczl
cls
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
call button 1 0 "Hax v3" # Press
echo.
echo.
echo.
echo.
echo                     Chroma
echo                     InternetTools
echo                      __                 ,        
echo                     ^/  ` _ ._ ._  _  _.-+-* _ ._ 
echo                     ^\__.^(_^)[ ^)[ ^)^(^/,^(_. ^| ^|^(_^)[ ^)                   
echo                      __ .        .               
echo                     ^/  `^|_  _  _.;_^/ _ ._.       
echo                     ^\__.[ ^)^(^/,^(_.^| ^\^(^/,[                  
echo.
echo.
ping -n 1 google.com -w 50 > nul
set /a sent=%sent%+1
if %errorlevel% == 1 (
    set /a loss=%loss%+1
    echo                     [41;97m^(+^) Disconnected[0m
) else (
    set /a received=%received%+1
    echo                     [42;97m^(+^) Connected[0m
)

set /a packetR=(%received%*100)/%sent%
set /a packetL=(%loss%*100)/%sent%

if %packetL% LEQ 9 (
    set stabilzr=Strong
) else if %packetL% GEQ 10 if %packetL% LEQ 74 (
    set stabilzr=Unstable
    ) else if %packetL% GEQ 75 if %packetL% LEQ 9 4 (
    set stabilzr=Weak
) else if %packetL% GTR 94 (
    set stabilzr=Absent
)

echo                     Connection: %stabilzr%

set /a pointsR=packetR/10
set /a pointsL=packetL/10

set ratioR=
set ratioL=

for /l %%i in (1,1,%pointsR%) do (
    set ratioR=!ratioR!^=
)
for /l %%i in (1,1,%pointsL%) do (
    set ratioL=!ratioL!^=
)

if %pointsR% GEQ 10 (
    set ratioR=!ratioR:~0,10!
)
if %pointsL% GEQ 10 (
    set ratioL=!ratioL:~0,10!
)
echo                     Ratio: %packetR%%%:%packetL%%%
echo                     [42;97m%ratioR%[0m^|^|[41;97m%ratioL%[0m
timeout -t 1 -nobreak >nul
call :gotoSafe NetCheczl
:oNetChecz
cls
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
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Connection Checker      ^|
echo ^| By Chroma               ^|
echo ============================
echo Checks if your internet is
echo alive.
echo.
choice /c YN /n /m "Do you want to continue? [Y/N]: "
if %errorlevel% equ 1 (
    call :gotoSafe oNetCheczl
) else if %errorlevel% equ 2 (
    call :gotoSafe ouiInternetTools
)
:oNetCheczl
cls
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Connection Checker      ^|
echo ^| By Chroma               ^|
echo ============================
echo Checks if your internet is
echo alive.
echo.
ping -n 1 google.com -w 50 > nul
set /a sent=%sent%+1
if %errorlevel% == 1 (
    set /a loss=%loss%+1
    echo [ ] Connected   [X] Disconnected
) else (
    set /a received=%received%+1
    echo [X] Connected   [ ] Disconnected
)

set /a packetR=(%received%*100)/%sent%
set /a packetL=(%loss%*100)/%sent%

if %packetL% LEQ 9 (
    set stabilzr=Strong
) else if %packetL% GEQ 10 if %packetL% LEQ 74 (
    set stabilzr=Unstable
) else if %packetL% GEQ 75 if %packetL% LEQ 94 (
    set stabilzr=Weak
) else if %packetL% GTR 94 (
    set stabilzr=Absent
)

echo Connection: %stabilzr%

set /a pointsR=packetR/10
set /a pointsL=packetL/10

set ratioR=
set ratioL=

for /l %%i in (1,1,%pointsR%) do (
    set ratioR=!ratioR!^=
)
for /l %%i in (1,1,%pointsL%) do (
    set ratioL=!ratioL!^=
)

if %pointsR% GEQ 10 (
    set ratioR=!ratioR:~0,10!
)
if %pointsL% GEQ 10 (
    set ratioL=!ratioL:~0,10!
)
echo Ratio: %packetR%%%:%packetL%%%
echo %ratioR%^|^|%ratioL%
timeout -t 1 -nobreak >nul
call :gotoSafe oNetCheczl

:TELN
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
call admin telehack
echo Now running.
set gobach=InternetTools
call :gotoSafe gbcheck
:GoogCmd
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
if "!anms!"=="0 " (
   set anims=False
   @mode 81,34
) else (
    if "!gm!"=="oui" (
        echo Hax v3
        @mode 56, 28
        @mode 66, 20
        @mode 76, 32
        @mode 81, 34
    ) else if "!gm!"=="cui" (
        Call button 1 0 "Hax v3" # Press
        set anims=True
        @mode 118, 31
        @mode 108, 32
        @mode 98, 32
        @mode 88, 33
        @mode 81, 34
    )
)
for /f "tokens=* delims=" %%i in ('powershell -c "& {Get-Date -format "ddMMyyyy"}"') do set date=%%i

set day=%date:~0,2%
set month=%date:~2,2%
set year=%date:~4,4%

if "%month%"=="01" set monthName=January
if "%month%"=="02" set monthName=February
if "%month%"=="03" set monthName=March
if "%month%"=="04" set monthName=April
if "%month%"=="05" set monthName=May
if "%month%"=="06" set monthName=June
if "%month%"=="07" set monthName=July
if "%month%"=="08" set monthName=August
if "%month%"=="09" set monthName=September
if "%month%"=="10" set monthName=October
if "%month%"=="11" set monthName=November
if "%month%"=="12" set monthName=December
cls
echo Internet Tools
echo Chroma, @Squirrel Monkey
echo Google Terminal
timeout -t 3 -nobreak >nul
cls
echo [1mC:\DOS\HAX\GOOGLE^>
powershell -command "Start-Sleep -Milliseconds 500"
cls
echo [1mC:\DOS\HAX\GOOGLE^>_
powershell -command "Start-Sleep -Milliseconds 500"
cls
echo [1mC:\DOS\HAX\GOOGLE^>
powershell -command "Start-Sleep -Milliseconds 500"
cls
echo [1mC:\DOS\HAX\GOOGLE^>_
powershell -command "Start-Sleep -Milliseconds 500"
cls
echo [1mC:\DOS\HAX\GOOGLE^>
powershell -command "Start-Sleep -Milliseconds 500"
cls
echo [1mC:\DOS\HAX\GOOGLE^>_
powershell -command "Start-Sleep -Milliseconds 500"
cls
echo [1mC:\DOS\HAX\GOOGLE^>
powershell -command "Start-Sleep -Milliseconds 500"
cls
echo [1mC:\DOS\HAX\GOOGLE^>_
powershell -command "Start-Sleep -Milliseconds 500"
cls
echo [1mC:\DOS\HAX\GOOGLE^>g
powershell -command "Start-Sleep -Milliseconds 250"
cls
echo [1mC:\DOS\HAX\GOOGLE^>go
powershell -command "Start-Sleep -Milliseconds 250"
cls
echo [1mC:\DOS\HAX\GOOGLE^>goo
powershell -command "Start-Sleep -Milliseconds 250"
cls
echo [1mC:\DOS\HAX\GOOGLE^>gool
powershell -command "Start-Sleep -Milliseconds 250"
cls
echo [1mC:\DOS\HAX\GOOGLE^>goo
powershell -command "Start-Sleep -Milliseconds 250"
cls
echo [1mC:\DOS\HAX\GOOGLE^>goog
powershell -command "Start-Sleep -Milliseconds 250"
cls
echo [1mC:\DOS\HAX\GOOGLE^>googl
powershell -command "Start-Sleep -Milliseconds 250"
cls
echo [1mC:\DOS\HAX\GOOGLE^>google
powershell -command "Start-Sleep -Milliseconds 250"
cls
echo [1mC:\DOS\HAX\GOOGLE^>google/
powershell -command "Start-Sleep -Milliseconds 250"
cls
echo [1mC:\DOS\HAX\GOOGLE^>google
powershell -command "Start-Sleep -Milliseconds 250"
cls
echo [1mC:\DOS\HAX\GOOGLE^>google.
powershell -command "Start-Sleep -Milliseconds 250"
cls
echo [1mC:\DOS\HAX\GOOGLE^>google.c
powershell -command "Start-Sleep -Milliseconds 250"
cls
echo [1mC:\DOS\HAX\GOOGLE^>google.co
powershell -command "Start-Sleep -Milliseconds 250"
cls
echo [1mC:\DOS\HAX\GOOGLE^>google.com
ping localhost -n 3 -w 250 > nul
echo [1m^|^|        Selected BBS [GOOGLE SEARCH ENGINE]                                 ^|^| 
powershell -command "Start-Sleep -Milliseconds 500"
echo [1m^|^|        Dialing number...                                                   ^|^| 
powershell -command "Start-Sleep -Milliseconds 500"
echo [1m^|^|        Sending connection key...                                           ^|^|
powershell -command "Start-Sleep -Milliseconds 500" 
echo [1m^|^|        Receiving data...                                                   ^|^| 
timeout -t 1 -nobreak >nul
for /L %%j in (1,1,3) do (
    set "line="
    for /L %%i in (1,1,81) do set "line=!line!."
    timeout -t 1 -nobreak >nul
    echo [1m!line!
)
:gglcmd
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
cls
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        echo Hax v3
    ) else if "!gm!"=="cui" (
        Call button 1 0 "Hax v3" # Press
    )
)
echo.
echo.
echo                                                                               [97m^|^| 
echo [1m[97m^|^|                                                                            [97m^|^| 
powershell -command "Start-Sleep -Milliseconds 250"
echo [1m[97m^|^|                                                                            [97m^|^| 
powershell -command "Start-Sleep -Milliseconds 250"
echo [1m[97m^|^|             Welcome back, ANONYMOUS. Today is %day% %monthName% %year% ^^!               [97m^|^| 
powershell -command "Start-Sleep -Milliseconds 250"
echo [1m[97m^|^|                                                                            [97m^|^| 
powershell -command "Start-Sleep -Milliseconds 250"
echo [1m[97m^|^|                                                       [92m,,                   [97m^|^| 
powershell -command "Start-Sleep -Milliseconds 250"
echo [1m[97m^|^|             [94m.g8"""bgd                               [92m`7MM                   [97m|| 
powershell -command "Start-Sleep -Milliseconds 250"
echo [1m[97m^|^|           [94m.dP'     `M                                 [92mMM                   [97m^|^| 
powershell -command "Start-Sleep -Milliseconds 250"
echo [1m[97m^|^|           [94mdm'       `   [31m,pW"Wq.   [93m,pW"Wq.   [94m.P"Ybmmm  [92mMM  [31m.gP"Ya           [97m^|^| 
powershell -command "Start-Sleep -Milliseconds 250"
echo [1m[97m^|^|           [94mMM           [31m6W'   `Wb [93m6W'   `Wb [94m:MI  I8    [92mMM [31m,M'   Yb          [97m^|^| 
powershell -command "Start-Sleep -Milliseconds 250"
echo [1m[97m^|^|           [94mMM.    `7MMF'[31m8M     M8 [93m8M     M8  [94mWmmmP"    [92mMM [31m8M""""""          [97m|| 
powershell -command "Start-Sleep -Milliseconds 250"
echo [1m[97m^|^|           [94m`Mb      MM  [31mYA.   ,A9 [93mYA.   ,A9 [94m8M         [92mMM [31mYM.    ,          [97m^|^| 
powershell -command "Start-Sleep -Milliseconds 250"
echo [1m[97m^|^|             [94m`"bmmmdPY   [31m`Ybmd9'   [93m`Ybmd9'   [94mYMMMMMb [92m.JMML.[31m`Mbmmd'          [97m|| 
powershell -command "Start-Sleep -Milliseconds 250"
echo [1m[97m^|^|                                            [94m6'     dP                       [97m^|^| 
powershell -command "Start-Sleep -Milliseconds 250"
echo [1m[97m^|^|                         [90mNET SEARCH ENGINE   [94mYbmmmd'                        [97m^|^| 
powershell -command "Start-Sleep -Milliseconds 250"
echo [1m[97m^|^|                                                                            [97m^|^| 
curl us.getnews.tech/category=technology,n=1,p=1
set /p googlecmdsearch=[40m                       Search:[47m[30m
timeout -t 1 -nobreak >nul
explorer "https://www.google.com/search?q=%googlecmdsearch%"
call :gotoSafe gglcmd
@echo off
:WebTracer
if "!anms!"=="0 " (
   set anims=False
   @mode 78, 34
) else (
   set anims=True
    @mode 118, 31
    @mode 100, 32
    @mode 90, 32
    @mode 80, 33
    @mode 78, 34
)
:WebTracer1
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe oWebTracer
    )
)
echo.
echo.
echo.
echo.
echo                     Chroma
echo                     InternetTools             
echo                     .  .   .       ,       
echo                     ^|  ^| _ ^|_  __*-+- _    
echo                     ^|^/^\^|^(^/,[_^)_^) ^| ^| ^(^/,   
echo                     .___.         .        
echo                       ^|  ._. _. _.;_^/ _ ._.
echo                       ^|  [  ^(_]^(_.^| ^\^(^/,[  
echo.
echo.
call button 1 0 "Hax v3" 20 13 "Start" 34 13 "Info" 48 13 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (call :gotoSafe startmenu)
if %errorlevel%==2 (call :gotoSafe LetsTrack)
if %errorlevel%==3 (echo. && echo. && echo. && echo Tracks the route between you and an ip address. && timeout -t 3 -nobreak >nul )
if %errorlevel%==4 (call :gotoSafe InternetTools)
call :gotoSafe WebTracer1
:oWebTracer
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Website Tracker         ^|
echo ^| By Chroma               ^|
echo ============================
echo Tracks the route between you 
echo and an ip address.
echo.
choice /c YN /n /m "Do you want to continue? [Y/N]: "
if %errorlevel% equ 1 (
    call :gotoSafe LetsTrack
) else if %errorlevel% equ 2 (
    call :gotoSafe ouiInternetTools
)
:LetsTrack
echo.
echo.
echo.
echo [ Please enter a website to track ]
set /p web2track=^>[4m
echo [0mStarting to traceroute..
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
tracert %web2track%
echo Track completed.
pause
call :gotoSafe WebTracer1
:THunblck
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
call admin UNBLOCKER
echo Now running.
set gobach=InternetTools
call :gotoSafe gbcheck
:playitt
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
START /b curl -L https://github.com/playit-cloud/playit-agent/releases/latest/download/playit-windows-x86-signed.exe -o hplayit.exe -s
:playitspinner
cls
echo Internet Tools
echo Chroma, @Playit.GG
echo Playit Agent
set mSpinner=%mSpinner%.
echo origin:https://github.com/playit-cloud/playit-agent/
echo fetching resources%mSpinner%
if "%mSpinner%"=="...." (set mSpinner=.)
ping localhost -n 2 >nul
tasklist /FI "IMAGENAME eq curl.exe" 2>NUL | find /I "curl.exe" >NUL
IF NOT %ERRORLEVEL% == 0 (
    echo task done.
    timeout -t 1 -nobreak >nul
    hplayit.exe
    if exist settings/gm.txt (
        set /p gm=<settings\gm.txt
        set "gm=!gm: =!"
        if "!gm!"=="oui" (
            call :gotoSafe ouiInternetTools
        ) else if "!gm!"=="cui" (
            call :gotoSafe InternetTools
        ) else if "!gm!"=="cli" (
            call :gotoSafe commandline
        ) else (
            call :gotoSafe InternetTools
        )
    ) else (
        call :gotoSafe end
    )
)
call :gotoSafe playitspinner
:MBW
if "!anms!"=="0 " (
   set anims=False
   @mode 78, 34
) else (
   set anims=True
    @mode 118, 31
    @mode 100, 32
    @mode 90, 32
    @mode 80, 33
    @mode 78, 34
)
:MBW1
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe oMBW
    )
)
echo.
echo.
echo.
echo.
echo                    Chroma
echo                    InternetTools  
echo                    .  .             .__                      
echo                    ^|^\^/^| _ ._ _  _   [__^)._. _ .    , __ _ ._.
echo                    ^|  ^|^(^/,[ ^| ^)^(^/,  [__^)[  ^(_^) ^\^/^\^/ _^) ^(^/,[                   
echo.
echo.
call button 1 0 "Hax v3" 20 11 "Search" 35 11 "Info" 48 11 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (call :gotoSafe startmenu)
if %errorlevel%==2 (call :gotoSafe Search4Memes)
if %errorlevel%==3 (echo. && echo. && echo                         Search for your favorite memes. && timeout -t 3 -nobreak >nul )
if %errorlevel%==4 (call :gotoSafe InternetTools)
call :gotoSafe MBW1
:oMBW
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Meme Browser            ^|
echo ^| By Chroma               ^|
echo ============================
echo Search for your favorite memes
:Search4Memes
echo.
echo.
echo.
set /p meme=Name of the meme ^-^> 
explorer "https://www.google.com/search?q=%meme%+meme&rlz=1C1VDKB_itIT1024IT1024&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjD1KjJ16P6AhWpQPEDHTnpA3gQ_AUoAXoECAEQAw&biw=929&bih=932"
echo.
echo.
pause
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe ouiInternetTools
    ) else if "!gm!"=="cui" (
        call :gotoSafe InternetTools
    )
)
:DNSR
if "!anms!"=="0 " (
   set anims=False
   @mode 78, 34
) else (
   set anims=True
    @mode 118, 31
    @mode 100, 32
    @mode 90, 32
    @mode 80, 33
    @mode 78, 34
)
:DNSR1
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe oDNSR
    )
)
for /L %%i in (1,1,4) do echo.
echo                     Chroma
echo                     InternetTools  
echo                     .__ .  . __.  .__    ._         .  
echo                     ^|  ^\^|^\ ^|^(__   [__^) _ ^|,._. _  __^|_ 
echo                     ^|__^/^| ^\^|.__^)  ^|  ^\^(^/,^| [  ^(^/,_^) [ ^)
echo.
echo.
call button 1 0 "Hax v3" 20 11 "Run " 34 11 "Info" 48 11 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (call :gotoSafe startmenu)
if %errorlevel%==2 (echo. && echo. && echo. && call :gotoSafe dnsrenew )
if %errorlevel%==3 (echo. && echo. && echo                     Refresh system's DNS. This will fix most && echo                     connection issues && timeout -t 3 -nobreak >nul)
if %errorlevel%==4 (call :gotoSafe InternetTools)
call :gotoSafe DNSR1
:oDNSR
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Dns Refresh             ^|
echo ^| By Chroma               ^|
echo ============================
echo Refresh system's DNS. This 
echo will fix most connection issue.
echo.
choice /c YN /n /m "Do you want to continue? [Y/N]: "
if %errorlevel% equ 1 (
    call :gotoSafe dnsrenew
) else if %errorlevel% equ 2 (
    call :gotoSafe ouiInternetTools
)
:dnsrenew
echo Now working..
ipconfig /flushdns 
timeout -t 1 -nobreak > nul
ipconfig /renew
timeout -t 1 -nobreak > nul
cls
timeout -t 1 -nobreak > nul
echo Task Completed!
echo Dns Refreshed.
timeout -t 2 -nobreak > nul
pause
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe ouiInternetTools
    ) else if "!gm!"=="cui" (
        call :gotoSafe InternetTools
    )
)
:Ipcheck
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
call admin IPCECK3R
echo Now running.
set gobach=InternetTools
call :gotoSafe gbcheck
:DSCMUSICBOT
if "!anms!"=="0 " (
   set anims=False
   @mode 78, 34
) else (
   set anims=True
    @mode 118, 31
    @mode 100, 32
    @mode 90, 32
    @mode 80, 33
    @mode 78, 34
)
:DSCMUSICBOT1
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe oDSCMUSICBOT
    )
)
for /L %%i in (1,1,4) do echo.
echo                     Chroma, jagrosh
echo                     InternetTools  
echo                     .__                .    
echo                     ^|  ^\* __ _. _ ._. _^|    
echo                     ^|__^/^|_^) ^(_.^(_^)[  ^(_]                            
echo                     .  .          .__     , 
echo                     ^|^\^/^|. . __* _.[__^) _ -+-
echo                     ^|  ^|^(_^|_^) ^|^(_.[__^)^(_^) ^| 
echo.
echo.
call button 1 0 "Hax v3" 20 14 "Start" 34 14 "Info" 48 14 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (call :gotoSafe startmenu)
if %errorlevel%==2 (call :gotoSafe MusicBot)
if %errorlevel%==3 (echo. && echo. && echo                       Self-Host your own discord bot. && timeout -t 3 -nobreak >nul)
if %errorlevel%==4 (call :gotoSafe InternetTools)
call :gotoSafe DSCMUSICBOT1
:oDSCMUSICBOT
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Music Bot               ^|
echo ^| By Chroma, jagrosh      ^|
echo ============================
echo Self-Host your own discord bot.
echo.
echo.
echo.
choice /c YN /n /m "Do you want to continue? [Y/N]: "
if %errorlevel% equ 1 (
    call :gotoSafe MusicBot
) else if %errorlevel% equ 2 (
    call :gotoSafe ouiInternetTools
)
:MusicBot
echo.
echo.
echo.
echo Checking system requirements...
powershell -Command "if (Get-Command java -ErrorAction SilentlyContinue) { exit 0 } else { exit 1 }"
if NOT %errorlevel% equ 0 (
    echo Java is not installed.
    echo Installing Java Now..
    admin getJava
    pause
)
echo Java is installed.
:Musicdwnl
START /b curl -L https://github.com/jagrosh/MusicBot/releases/latest/download/JMusicBot-0.4.3.jar -o MusicBot.jar -s
:MusicBotSpinner
cls
echo.
echo Checking system requirements...
echo Java is installed.
set mSpinner=%mSpinner%.
echo origin:https://github.com/jagrosh/MusicBot
echo fetching resources%mSpinner%
if %mSpinner%'==....' (set mSpinner=.)
    timeout -t 1 -nobreak >nul
    tasklist /FI "IMAGENAME eq curl.exe" 2>NUL | find /I "curl.exe" >NUL
    if NOT %ERRORLEVEL% == 0 (
        echo task done.
        timeout -t 1 -nobreak >nul
        call :gotoSafe Musicstp
    )
    call :gotoSafe MusicBotSpinner
:Musicstp
echo Running music bot..
java -Dnogui=true -jar MusicBot.jar
echo MusicBot stopped.
IF EXIST MusicBot.jar (
   del MusicBot.jar
)
pause
echo a>goback.txt
set gobach=InternetTools
call :gotoSafe gbcheck
:Pg
if "!anms!"=="0 " (
   set anims=False
   @mode 78, 34
) else (
   set anims=True
    @mode 118, 31
    @mode 100, 32
    @mode 90, 32
    @mode 80, 33
    @mode 78, 34
)
:Pg1
set NPinger=0
set IPinger=127.0.0.1
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe oPg
    )
)
for /L %%i in (1,1,8) do echo.
echo                               Chroma
echo                               InternetTools  
echo                               .__              
echo                               [__^)*._  _  _ ._.
echo                               ^|   ^|[ ^)^(_]^(^/,[  
echo                                       ._^|      
echo.
echo.
call button 1 0 "Hax v3" 20 15 "Start" 34 15 "Info" 48 15 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (call :gotoSafe startmenu)
if %errorlevel%==2 (call :gotoSafe SPg)
if %errorlevel%==3 (echo. && echo. && echo                       A Cooler way to check if an ip is && echo                       connected to the internet. && timeout -t 3 -nobreak >nul)
if %errorlevel%==4 (call :gotoSafe InternetTools)
call :gotoSafe Pg1
:SPg
set NPinger=0
set IPinger=127.0.0.1
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
for /L %%i in (1,1,8) do echo.
echo                               Chroma
echo                               InternetTools  
echo                               .__              
echo                               [__^)*._  _  _ ._.
echo                               ^|   ^|[ ^)^(_]^(^/,[  
echo                                       ._^|   
for /L %%i in (1,1,4) do echo.
echo                     Select a pinger method:
echo                     -
echo                     -
echo                     -
echo                     -
call button 1 0 "Hax v3" 20 15 "Start" 34 15 "Info" 48 15 "Back" # Press
call button2 1 0 "Hax v3" 20 15 "Start" 34 15 "Info" 48 15 "Back" 20 18 "BetterPinger" 20 19 "LongerPinger" 20 20 "InfiniPinger" 20 21 "MultiPinger" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (call :gotoSafe startmenu)
if %errorlevel%==2 (call :gotoSafe SPg)
if %errorlevel%==3 (echo. && echo. && echo                       A Cooler way to check if an ip is && echo                       connected to the internet. && timeout -t 3 -nobreak >nul)
if %errorlevel%==4 (call :gotoSafe Pg1)
if %errorlevel%==5 (call :gotoSafe Betterpinger)
if %errorlevel%==6 (call :gotoSafe Longerpinger)
if %errorlevel%==7 (call :gotoSafe Infinipinger)
if %errorlevel%==8 (call :gotoSafe Multipinger)
call :gotoSafe SPg
:oPg
cls
echo.
echo ============================
echo ^| Hax MultiTool v3         ^|
echo ^| Pinger                   ^|
echo ^| By Chroma                ^|
echo ============================
echo A cooler way to check if an 
echo ip is connected to the internet.
echo.
echo.
echo  Select:
echo  BetterPinger   - 1
echo  LongerPinger   - 2
echo  InfiniPinger   - 3
echo  MultiPinger    - 4
echo  Back           - 5
set pingerchoice=0
set /p pingerchoice=^>[4m
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
if %pingerchoice% == 1 ( call :gotoSafe Betterpinger )
if %pingerchoice% == 2 ( call :gotoSafe Longerpinger )
if %pingerchoice% == 3 ( call :gotoSafe Infinipinger )
if %pingerchoice% == 4 ( call :gotoSafe Multipinger )
if %pingerchoice% == 5 ( call :gotoSafe ouistartmenu )
echo please enter a valid input.
timeout -t 2 -nobreak >nul
cls
call :gotoSafe oPg
:Betterpinger
echo.
echo.
echo [ Please enter an IP address ]
set /p IPinger= ^>[4m
echo [0m
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
for /L %%i in (1,1,6) do (
    ping !IPinger! -l 64 -n 1 | find "TTL"
    if !errorlevel!==1 ( call :gotoSafe offlined )
)
echo Pinger ended.
pause
call :gotoSafe pingback
:LongerPinger
echo.
echo.
echo [ Please enter an IP address ]
set /p IPinger= ^>[4m
echo [0m
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
echo [ How many times do we ping? ]
set /p NPinger= ^>[4m
echo [0m
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
for /L %%i in (1,1,%NPinger%) do (
    ping !IPinger! -l 64 -n 1 | find "TTL"
    if !errorlevel!==1 ( call :gotoSafe offlined )
)
echo Pinger ended.
pause
call :gotoSafe pingback
:Infinipinger
echo.
echo.
echo [ Please enter an IP address ]
set /p IPinger= ^>[4m
echo [0m
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
:Iinfinipinger
ping !IPinger! -l 64 -n 1 | find "TTL"
if !errorlevel!==1 ( call :gotoSafe offlined )
call :gotoSafe Iinfinipinger
pause
call :gotoSafe pingback
:Multipinger
echo.
echo.
echo [ Set the number of IPs to ping ]
set /p NPinger= ^>[4m
echo [0m
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
for /L %%i in (1,1,%NPinger%) do (
    echo [ Please enter the IP address for IP-[%%i] ]
    set /p IPinger[%%i]= ^>[4m
    echo [0m
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
)
echo now working.
timeout -t 1 -nobreak >nul
:iMultipinger
for /L %%i in (1,1,%NPinger%) do (
    set "mPinger=!IPinger[%%i]!"
    ping !mPinger! -l 64 -n 1 | find "TTL"
    if %errorlevel%==1 ( call :gotoSafe offlined )
)
call :gotoSafe iMultipinger
pause
call :gotoSafe pingback
:pingback
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    IF "!gm!"=="cui" (
        call :gotoSafe Pg1
    ) else if "!gm!"=="oui" (
        call :gotoSafe oPg
    ) else if "!gm!"=="cli" (
        call :gotoSafe commandline
    )
) else (
    cls
    echo.
    echo This is an error and shouldn't happen.
    echo Please report this bug.
    echo Error code:
    echo [NGMS3TT]
    pause >nul
    exit
)
:offlined
IF "!whm!" == "0 " (
    color 04
) else (
    color 74
)
echo           ___________          
echo    ____  ^/ __^/ __^/ ^(_^)___  ___ 
echo   ^/ __ ^\^/ ^/_^/ ^/_^/ ^/ ^/ __ ^\^/ _ ^\
echo  ^/ ^/_^/ ^/ __^/ __^/ ^/ ^/ ^/ ^/ ^/  __^/
echo  ^\____^/_^/ ^/_^/ ^/_^/_^/_^/ ^/_^/^\___^/
echo  Pinger ended.
IF "!whm!" == "0 " (
    color 04
) else (
    color 74
)
ping localhost -n 1 -w 30> nul
IF "!whm!" == "0 " (
    color 04
) else (
    color 74
)
ping localhost -n 1 -w 30> nul
IF "!whm!" == "0 " (
    color 04
) else (
    color 74
)
ping localhost -n 1 -w 30> nul
IF "!whm!" == "0 " (
    color 04
) else (
    color 74
)
ping localhost -n 1 -w 30> nul
IF "!whm!" == "0 " (
    color 04
) else (
    color 74
)
ping localhost -n 1 -w 30> nul
IF "!whm!" == "0 " (
    color 04
) else (
    color 74
)
ping localhost -n 1 >nul
timeout -t 3 -nobreak > NUL
call :gotoSafe pingback
:___Windows___
:DisNitrAc
if "!anms!"=="0 " (
   set anims=False
   @mode 78, 34
) else (
   set anims=True
    @mode 118, 31
    @mode 100, 32
    @mode 90, 32
    @mode 80, 33
    @mode 78, 34
)
:DisNitrAc1
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe oDisNitrAc
    )
)
for /L %%i in (1,1,4) do echo.
echo                     Chroma, Vencord
echo                     Windows Tools
echo                     .__                .  .  .  ,       
echo                     ^|  ^\* __ _. _ ._. _^|  ^|^\ ^|*-+-._. _ 
echo                     ^|__^/^|_^) ^(_.^(_^)[  ^(_]  ^| ^\^|^| ^| [  ^(_^)
echo                     .__.    ,          ,                
echo                     [__] _.-+-*.  , _.-+- _ ._.         
echo                     ^|  ^|^(_. ^| ^| ^\^/ ^(_] ^| ^(_^)[           
call button 1 0 "Hax v3" 20 13 "Activate" 34 13 "Restore" 47 13 "Info" 47 16 "Back" # Press                                                                     
Getinput /m %Press% /h 70
if %errorlevel% == 1 ( call :gotoSafe startmenu )
if %errorlevel% == 2 ( call :gotoSafe dnactivate )
if %errorlevel% == 3 ( call :gotoSafe dndeactivate )
if %errorlevel% == 4 (echo. && echo. && echo                      Modifies the discord client and && echo                      activates Discord Nitro. && timeout -t 4 -nobreak > nul)
if %errorlevel% == 5 ( call :gotoSafe WindowsTools )
call :gotoSafe DisNitrAc1
:oDisNitrAc
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Discord Nitro Activator ^|
echo ^| By Chroma, Vencord      ^|
echo ============================
echo Modifies the discord client
echo and activates Discord Nitro.
echo.
echo.
echo.
choice /c ARB /n /m "Do you want to Activate, Restore or go back? [A/R/B]: "
if %errorlevel% == 1 ( call :gotoSafe dnactivate )
if %errorlevel% == 2 ( call :gotoSafe dndeactivate )
if %errorlevel% == 3 ( call :gotoSafe ouiInternetTools )
:dnactivate
echo.
echo.
echo.
echo  Please wait...
echo  Fetching..
curl -L https://github.com/Vencord/Installer/releases/latest/download/VencordInstallerCli.exe -o VIC.exe -s
timeout -t 1 -nobreak >nul
echo  Killing discord..
taskkill /f /im "discord.exe" > nul 2>&1
echo  Patching.. [STEP1]
VIC.exe -install -branch stable
ping localhost -n 1 -w 250> nul
echo  Patching.. [STEP2]
curl -L https://raw.githubusercontent.com/ChromaToggled/settings.json/main/settings.json -o %appdata%\Vencord\settings\settings.json -s
del VIC.exe > nul 2>&1
echo  Reloading..
START %localappdata%\Discord\Update.exe --processStart Discord.exe
echo  Done. Enjoy!
timeout -t 3 -nobreak >nul
call :gotoSafe DisNitrAc1
:dndeactivate
echo.
echo.
echo.
echo  Please wait...
echo  Fetching..
curl -L https://github.com/Vencord/Installer/releases/latest/download/VencordInstallerCli.exe -o VIC.exe -s
timeout -t 1 -nobreak >nul
echo  Killing discord..
taskkill /f /im "discord.exe" > nul 2>&1
echo  Restoring..
VIC.exe -uninstall -branch stable
del VIC.exe > nul 2>&1
echo  Reloading..
START %localappdata%\Discord\Update.exe --processStart Discord.exe
echo  Done. Enjoy!
timeout -t 3 -nobreak >nul
call :gotoSafe DisNitrAc1
:WiKeyFin
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe oWiKeyFin
    )
)
:keyfindr
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
START /b curl -L https://raw.githubusercontent.com/mosftguides/WindowsKeyfinder/main/WindowsKeyfinder.vbs -o WindowsKeyfinder.vbs -s
:keyspinner
cls
echo Windows Tools
echo Chroma, @mosftguides
echo Windows Keyfinder
set mSpinner=%mSpinner%.
echo origin:https://github.com/mosftguides/WindowsKeyFinder
echo fetching resources%mSpinner%
if "%mSpinner%"=="...." (set mSpinner=.)
ping localhost -n 2 >nul
tasklist /FI "IMAGENAME eq curl.exe" 2>NUL | find /I "curl.exe" >NUL
IF NOT %ERRORLEVEL% == 0 (
    echo task done.
    timeout -t 1 -nobreak >nul
    echo running..
    WindowsKeyfinder.vbs
    timeout -t 1 -nobreak >nul
    del WindowsKeyfinder.vbs
    del "Windows Key.txt"
    if exist settings/gm.txt (
        set /p gm=<settings\gm.txt
        set "gm=!gm: =!"
        if "!gm!"=="oui" (
            call :gotoSafe ouiWindowsTools
        ) else if "!gm!"=="cui" (
            call :gotoSafe WindowsTools
        ) else if "!gm!"=="cli" (
            call :gotoSafe commandline
        ) else (
            call :gotoSafe startmenu
        )
    ) else (
        call :gotoSafe end
    )
)
call :gotoSafe keyspinner
:SpotyX
cls
echo Windows Tools
echo Chroma, @SpotX
echo Spotify Activator
START /separate %SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe -Command "&{[Net.ServicePointManager]::SecurityProtocol = 3072}; """"& { $(Invoke-WebRequest -UseBasicParsing 'https://spotx-official.github.io/run.ps1')} -new_theme """" | Invoke-Expression"
msg * When prompted ^"Would you like to block Spotify automatic updates? [Y/N]^", press N
echo When prompted "Would you like to block Spotify automatic updates? [Y/N]", press N
:waitforPws2Disapperar
tasklist /FI "IMAGENAME eq powershell.exe" 2>NUL | find /I "powershell.exe" >NUL
IF %ERRORLEVEL% == 1 (
    if exist settings/gm.txt (
        set /p gm=<settings\gm.txt
        set "gm=!gm: =!"
        if "!gm!"=="oui" (
            call :gotoSafe ouiWindowsTools
        ) else if "!gm!"=="cui" (
            call :gotoSafe WindowsTools
        ) else if "!gm!"=="cli" (
            call :gotoSafe commandline
        ) else (
            call :gotoSafe startmenu
        )
    )
) else (
    call :gotoSafe waitforPws2Disapperar
)
:WindowAC
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
call admin WA3
echo Now running.
set gobach=WindowsTools
call :gotoSafe gbcheck
:PassChan
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
call admin PASSCHAN
echo Now running.
set gobach=WindowsTools
call :gotoSafe gbcheck
:OfficeAC
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
call admin OA3
echo Now running.
set gobach=WindowsTools
call :gotoSafe gbcheck
:blurstuff
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe oblurstuff
    )
)
set blurspiner=1
START /b curl -L https://github.com/f0e/blur/releases/latest/download/blur.exe -o blur.exe -s
:blurinstaller
set blurspiner=2
START /b curl -L https://github.com/f0e/blur/releases/latest/download/blur-installer.exe -o bluri.exe -s
:blurspinner
cls
echo Windows Tools
echo Chroma, @f0e
echo Blur Videos
set mSpinner=%mSpinner%.
echo origin:https://github.com/f0e/blur/
echo fetching resources%mSpinner%
if "%mSpinner%"=="...." (set mSpinner=.)
ping localhost -n 2 >nul
tasklist /FI "IMAGENAME eq curl.exe" 2>NUL | find /I "curl.exe" >NUL
IF NOT %ERRORLEVEL% == 0 (
    if %blurspiner%==1 (
        call :gotoSafe blurinstaller
    ) else if %blurspiner%==2 (
        echo task done.
        call :gotoSafe blurr
    )
    timeout -t 1 -nobreak >nul
    call :gotoSafe blurr
)
call :gotoSafe blurspinner
:blurr
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe oBlurr
    )
)
cls
for /L %%i in (1,1,6) do echo.
echo                                    Chroma, f0e
echo                                    Windows Tools
echo                                     ___  _             _ _  _    _               
echo                                    ^| . ^>^| ^| _ _  _ _  ^| ^| ^|^<_^> _^| ^| ___  ___  ___
echo                                    ^| . ^\^| ^|^| ^| ^|^| '_^> ^| ' ^|^| ^|^/ . ^|^/ ._^>^/ . ^\^<_-^<
echo                                    ^|___^/^|_^|`___^|^|_^|   ^|__^/ ^|_^|^\___^|^\___.^\___^/^/__^/
echo.
echo.             
call button 1 0 "Hax v3" 42 14 "Run Portable " 42 17 "Run Installer" 62 14 "Info" 62 17 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel% == 2 ( START cmd.exe /k blur.exe )
if %errorlevel% == 3 ( START cmd.exe /k bluri.exe )
if %errorlevel% == 4 (echo. && echo. && echo                                        Adds a blur effect to your videos. && timeout -t 4 -nobreak > nul)
if %errorlevel% == 5 ( del blur.exe & del bluri.exe & call :gotoSafe WindowsTools )
call :gotoSafe blurr
:oBlurr
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Blur Videos             ^|
echo ^| By Chroma, f0e          ^|
echo ============================
echo Adds a blur effect to your 
echo videos.
echo.
echo  Choose:
echo  Run Portable         -1
echo  Run Installer        -2
echo  Back                 -3
echo.
set BlurCh=0
set /p %BlurCh%=^>
if %BlurCh%==1 ( START cmd.exe /k blur.exe )
if %BlurCh%==2 ( START cmd.exe /k bluri.exe )
if %BlurCh%==3 ( del blur.exe & del bluri.exe & call :gotoSafe ouiWindowsTools )
call :gotoSafe oBlurr

:superadmin
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
call admin TRUEADMIN
echo Now running.
set gobach=WindowsTools
call :gotoSafe gbcheck

:FUCK
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe oFuck
    )
)
cls
for /L %%i in (1,1,6) do echo.
echo                                   Chroma
echo                                   Windows Tools
echo                                    ___           _    ___              _   
echo                                   ^| __^>___  _ _ ^| ^|__^| . ^> ___ ._ _ _ ^| ^|_ 
echo                                   ^| _^>^/ . ^\^| '_^>^| ^/ ^/^| . ^\^/ . ^\^| ' ' ^|^| . ^\
echo                                   ^|_^| ^\___^/^|_^|  ^|_^\_^\^|___^/^\___^/^|_^|_^|_^|^|___^/
echo.
echo.       
call button 1 0 "Hax v3" 37 14 "Run " 51 14 "Info" 65 14 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel% == 2 ( call :gotoSafe ForkChoice )
if %errorlevel% == 3 (echo. && echo. && echo. && echo                                        Eats all your ram. && timeout -t 4 -nobreak > nul)
if %errorlevel% == 4 ( call :gotoSafe WindowsTools )
call :gotoSafe FUCK
:ForkChoice
cls
for /L %%i in (1,1,6) do echo.
echo                                   Chroma
echo                                   Windows Tools
echo                                    ___           _    ___              _   
echo                                   ^| __^>___  _ _ ^| ^|__^| . ^> ___ ._ _ _ ^| ^|_ 
echo                                   ^| _^>^/ . ^\^| '_^>^| ^/ ^/^| . ^\^/ . ^\^| ' ' ^|^| . ^\
echo                                   ^|_^| ^\___^/^|_^|  ^|_^\_^\^|___^/^\___^/^|_^|_^|_^|^|___^/
for /L %%i in (1,1,5) do echo.
echo                                      Choose:
echo                                      - 
echo                                      -
echo                                      - 
echo                                      - 
echo                                      - 
call button 1 0 "Hax v3" 37 14 "Run " 51 14 "Info" 65 14 "Back" # Press
call button2 1 0 "Hax v3" 37 14 "Run " 51 14 "Info" 65 14 "Back" 37 17 "cmd.exe" 37 18 "notepad.exe" 37 19 "explorer.exe" 37 20 "browser" 37 21 "advanced mode" # Press
Getinput /m %Press% /h 70
if %errorlevel% == 2 ( call :gotoSafe ForkChoice )
if %errorlevel% == 3 (echo. && echo. && echo. && echo                                        Eats all your ram. && timeout -t 4 -nobreak > nul)
if %errorlevel% == 4 ( call :gotoSafe FUCK )
if %errorlevel% == 5 ( call :gotoSafe fuck1 )
if %errorlevel% == 6 ( call :gotoSafe fuck2 )
if %errorlevel% == 7 ( call :gotoSafe fuck3 )
if %errorlevel% == 8 ( call :gotoSafe fuck4 )
if %errorlevel% == 9 ( call :gotoSafe fuck5 )
call :gotoSafe ForkChoice
:fuck1
cls
for /L %%i in (1,1,6) do echo.
echo                                         are you sure you want to continue?
call button2 40 14 "Yes." 70 14 "No." # Press
Getinput /m %Press% /h 70
if %errorlevel%==2 ( call :gotoSafe ForkChoice )
if %errorlevel%==1 ( call :gotoSafe fbrun1 )
call :gotoSafe fuck1
:fbrun1
start cmd.exe
call :gotoSafe fbrun1

:fuck2
cls
for /L %%i in (1,1,6) do echo.
echo                                         are you sure you want to continue?
call button2 40 14 "Yes." 70 14 "No." # Press
Getinput /m %Press% /h 70
if %errorlevel%==2 ( call :gotoSafe ForkChoice )
if %errorlevel%==1 ( call :gotoSafe fbrun2 )
call :gotoSafe fuck2
:fbrun2
start notepad.exe
call :gotoSafe fbrun2

:fuck3
cls
for /L %%i in (1,1,6) do echo.
echo                                         are you sure you want to continue?
call button2 40 14 "Yes." 70 14 "No." # Press
Getinput /m %Press% /h 70
if %errorlevel%==2 ( call :gotoSafe ForkChoice )
if %errorlevel%==1 ( call :gotoSafe fbrun3 )
call :gotoSafe fuck3
:fbrun3
start explorer.exe
call :gotoSafe fbrun3

:fuck4
cls
for /L %%i in (1,1,6) do echo.
echo                                         are you sure you want to continue?
call button2 40 14 "Yes." 70 14 "No." # Press
Getinput /m %Press% /h 70
if %errorlevel%==2 ( call :gotoSafe ForkChoice )
if %errorlevel%==1 ( call :gotoSafe fbrun4 )
call :gotoSafe fuck4
:fbrun4
start explorer.exe "https://"
call :gotoSafe fbrun4

:fuck5
cls
for /L %%i in (1,1,6) do echo.
echo                                         are you sure you want to continue?
call button2 40 14 "Yes." 70 14 "No." # Press
Getinput /m %Press% /h 70
if %errorlevel%==2 ( call :gotoSafe ForkChoice )
if %errorlevel%==1 ( cls && timeout -t 4 -nobreak >nul && color 4 && echo you really shouldn't have ran this wihtout precautions. && timeout -t 4 -nobreak >nul & call :gotoSafe fbrun5 && pause)
call :gotoSafe fuck5
:fbrun5
start cmd.exe /k start explorer.exe && start notepad.exe && START cmd.exe && start explorer "https://"
call :gotoSafe fbrun5
call :gotoSafe ForkChoice
:PCfixer
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
call admin FIXER
echo Now running.
set gobach=WindowsTools
call :gotoSafe gbcheck
:wrreset
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
START /b curl -L https://github.com/ManuelGil/Reset-Windows-Update-Tool/releases/latest/download/Portable.zip -o %USERPROFILE%\Downloads\Portable.zip -s
:wrresetspinner
cls
echo Windows Tools
echo Chroma, ManuelGil
echo Wureset
set mSpinner=%mSpinner%.
echo origin:https://github.com/ManuelGil/Reset-Windows-Update-Tool
echo fetching resources%mSpinner%
if "%mSpinner%"=="...." (set mSpinner=.)
ping localhost -n 2 >nul
tasklist /FI "IMAGENAME eq curl.exe" 2>NUL | find /I "curl.exe" >NUL
IF NOT %ERRORLEVEL% == 0 (
    echo task done.
    timeout -t 1 -nobreak >nul
    if not exist "%USERPROFILE%\Downloads\wureset" mkdir "%USERPROFILE%\Downloads\wureset"
    tar -xf "%USERPROFILE%\Downloads\Portable.zip" -C "%USERPROFILE%\Downloads\wureset"
    explorer %USERPROFILE%\Downloads\wureset
    echo Please run the program as administrator.
    pause
    taskkill /f /im "wureset.exe" >nul 2>&1
    timeout -t 1 -nobreak >nul
    rmdir %USERPROFILE%\Downloads\wureset /q /s
    del %USERPROFILE%\Downloads\Portable.zip
    echo a>goback.txt
    set gobach=WindowsTools
    call :gotoSafe gbcheck
)
call :gotoSafe wrresetspinner
:gmadf
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
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe ogmadf
    )
)
for /L %%i in (1,1,4) do echo.
echo                               Chroma
echo                               WindowsTools  
echo                               ___         _                                                 
echo                              ^/  _^>  ___ _^| ^|_  ._ _ _  ___   ___                            
echo                              ^| ^<_^/^\^/ ._^> ^| ^|   ^| ' ' ^|^/ ._^> ^<_^> ^|                           
echo                              `____^/^\___. ^|_^|   ^|_^|_^|_^|^\___. ^<___^|                                                                                          
echo                               ___           _      _              ___      _              _ 
echo                              ^| . ^\ ___  ___^| ^|__ _^| ^|_ ___  ___  ^| __^>_ _ ^<_^> ___ ._ _  _^| ^|
echo                              ^| ^| ^|^/ ._^>^<_-^<^| ^/ ^/  ^| ^| ^/ . ^\^| . ^\ ^| _^>^| '_^>^| ^|^/ ._^>^| ' ^|^/ . ^|
echo                              ^|___^/^\___.^/__^/^|_^\_^\  ^|_^| ^\___^/^|  _^/ ^|_^| ^|_^|  ^|_^|^\___.^|_^|_^|^\___^|
echo                                                            ^|_^|                              
echo.
echo.
call button 1 0 "Hax v3" 40 16 "Start" 54 16 "Info" 67 16 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (call :gotoSafe startmenu)
if %errorlevel%==2 (call :gotoSafe Frend)
if %errorlevel%==3 (echo. && echo. && echo                                    Create a little buddy for your desktop. && timeout -t 3 -nobreak >nul)
if %errorlevel%==4 (call :gotoSafe WindowsTools)
call :gotoSafe gmadf
:ogmadf
cls
echo.
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Get me a desktop friend ^|
echo ^| By Chroma               ^|
echo ============================
echo Create a little buddy for 
echo your desktop.
echo.
echo.
choice /c YN /n /m "Do you want to continue? [Y/N]: "
if %errorlevel% equ 2 (
    call :gotoSafe ouiWindowsTools
)
:Frend
echo.
echo.
echo.
echo Checking system requirements...
powershell -Command "if (Get-Command java -ErrorAction SilentlyContinue) { exit 0 } else { exit 1 }"
if NOT %errorlevel% equ 0 (
    echo Java is not installed.
    echo Installing Java Now..
    admin getJava
    pause
)
echo Java is installed.
echo Running gmadf..
cd GMADF
java -jar Friend.jar
cd ..
echo Killed desktop friend.
pause
echo a>goback.txt
set gobach=WindowsTools
call :gotoSafe gbcheck

:______AI______

:Fatmod
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 5
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 75
   )
)
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
START /b curl -L https://github.com/HaxMultiTool/ai-tools/releases/download/AIMod/moderated.exe -o ModThis.exe -s 
:Modspinner
cls
echo.
set mSpinner=%mSpinner%.
echo origin:https://github.com/HaxMultiTool/ai-tools
echo fetching resources%mSpinner%
if %mSpinner%'==....' (set mSpinner=.)
ping localhost -n 2 >nul
tasklist /FI "IMAGENAME eq curl.exe" 2>NUL | find /I "curl.exe" >NUL
if NOT %ERRORLEVEL% == 0 (
    echo task done.
    if "!anms!"=="0 " (
       set anims=False
       @mode 118, 50
    ) else (
       set anims=True
       @mode 118, 31
       @mode 118, 34
       @mode 118, 37
       @mode 118, 40
       @mode 118, 41
       @mode 118, 44
       @mode 118, 47
       @mode 118, 50
    )
    call :gotoSafe Moderator
)
call :gotoSafe Modspinner

:Moderator
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe oModerator
    )
)
cls
echo.
echo.
echo.
echo                               Chroma
echo                               AI Tools
echo                               8""8""8                                                  
echo                               8  8  8 eeeee eeeee eeee eeeee  eeeee eeeee eeeee eeeee  
echo                               8e 8  8 8  88 8   8 8    8   8  8   8   8   8  88 8   8  
echo                               88 8  8 8   8 8e  8 8eee 8eee8e 8eee8   8e  8   8 8eee8e 
echo                               88 8  8 8   8 88  8 88   88   8 88  8   88  8   8 88   8 
echo                               88 8  8 8eee8 88ee8 88ee 88   8 88  8   88  8eee8 88   8 
echo.   
call button 1 0 "Hax v3" 40 13 "Start" 54 13 "Info" 67 13 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (
    del ModThis.exe
    if "!anms!"=="0 " ( 
        set anims=False 
        @mode 118, 31 
    ) else (
        set anims=True
        @mode 118, 50
        @mode 118, 47
        @mode 118, 44
        @mode 118, 41
        @mode 118, 40
        @mode 118, 37
        @mode 118, 34
        @mode 118, 31
    )
    call :gotoSafe startmenu
)
if %errorlevel%==2 (
    echo. 
    echo. 
    ModThis.exe 
    echo. 
    del ModThis.exe 
    pause 
    if "!anms!"=="0 " ( 
        set anims=False 
        @mode 118, 31 
    ) else (
        set anims=True
        @mode 118, 50
        @mode 118, 47
        @mode 118, 44
        @mode 118, 41
        @mode 118, 40
        @mode 118, 37
        @mode 118, 34
        @mode 118, 31
    ) 
    call :gotoSafe Aitools 
)
if %errorlevel%==3 (echo. && echo. && echo                               Uses AI to detect bad text-based content. && timeout -t 4 -nobreak > nul)
if %errorlevel%==4 (
    del ModThis.exe
    if "!anms!"=="0 " ( 
        set anims=False 
        @mode 118, 31 
    ) else (
        set anims=True
        @mode 118, 50
        @mode 118, 47
        @mode 118, 44
        @mode 118, 41
        @mode 118, 40
        @mode 118, 37
        @mode 118, 34
        @mode 118, 31
    )
    call :gotoSafe Aitools
)
call :gotoSafe Moderator

:oModerator
cls
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| Moderator               ^|
echo ^| By Chroma               ^|
echo ============================
echo Uses AI to detect bad 
echo text-based content. 
echo.
ModThis.exe
del ModThis.exe
echo.
pause
call :gotoSafe ouiAitools

:HaxE
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 5
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 75
   )
)
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
START /b curl -L https://github.com/HaxMultiTool/ai-tools/releases/download/AIMini/HaxiboMini.exe -o HaxiboMini.exe -s 
:HaxEspinner
cls
echo.
set mSpinner=%mSpinner%.
echo origin:https://github.com/HaxMultiTool/ai-tools
echo fetching resources%mSpinner%
if %mSpinner%'==....' (set mSpinner=.)
ping localhost -n 2 >nul
tasklist /FI "IMAGENAME eq curl.exe" 2>NUL | find /I "curl.exe" >NUL
if NOT %ERRORLEVEL% == 0 (
    echo task done.
    call :gotoSafe Haxibo
)
call :gotoSafe HaxEspinner

:Haxibo
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 5
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 75
   )
)
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe oHaxibo
    )
)
cls
echo.
echo.
echo.
echo                               Chroma
echo                               AI Tools
echo                               8   8                              8""8""8             
echo                               8   8 eeeee e    e e  eeeee  eeeee 8  8  8 e  eeeee e  
echo                               8eee8 8   8 8    8 8  8   8  8  88 8e 8  8 8  8   8 8  
echo                               88  8 8eee8 eeeeee 8e 8eee8e 8   8 88 8  8 8e 8e  8 8e 
echo                               88  8 88  8 88   8 88 88   8 8   8 88 8  8 88 88  8 88 
echo                               88  8 88  8 88   8 88 88eee8 8eee8 88 8  8 88 88  8 88 
call button 1 0 "Hax v3" 40 13 "Start" 54 13 "Info" 67 13 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (
    del HaxiboMini.exe
    call :gotoSafe startmenu
)
if %errorlevel%==2 (
    echo. 
    echo. 
    HaxiboMini.exe 
    echo.
    pause
    call :gotoSafe Haxibo 
)
if %errorlevel%==3 (echo. && echo. && echo                               Ultra Light Image Generation AI. && timeout -t 4 -nobreak > nul)
if %errorlevel%==4 (
    del HaxiboMini.exe
    call :gotoSafe Aitools
)

call :gotoSafe Haxibo

:oHaxibo
cls
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| HaxiboMini              ^|
echo ^| By Chroma               ^|
echo ============================
echo Ultra Light Image Generation AI 
echo.
echo.
HaxiboMini.exe
echo.
echo Would you like to..
choice /c 12 /m "Run Again [1] - Exit [2}"
if errorlevel 2 del HaxiboMini.exe && call :gotoSafe ouiAitools
if errorlevel 1 call :gotoSafe oHaxibo
del HaxiboMini.exe && call :gotoSafe ouiAitools

:HaxGPT
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 5
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 75
   )
)
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
START /b curl -L https://github.com/HaxMultiTool/ai-tools/releases/download/AIGpt/HaxGPT.exe -o HaxGPT.exe -s 
:GPTspinner
cls
echo.
set mSpinner=%mSpinner%.
echo origin:https://github.com/HaxMultiTool/ai-tools
echo fetching resources%mSpinner%
if %mSpinner%'==....' (set mSpinner=.)
ping localhost -n 2 >nul
tasklist /FI "IMAGENAME eq curl.exe" 2>NUL | find /I "curl.exe" >NUL
if NOT %ERRORLEVEL% == 0 (
    echo task done.
    call :gotoSafe HGPT
)
call :gotoSafe GPTspinner

:HGPT
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 5
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 75
   )
)
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe oHGPT
    )
)
cls
echo.
echo.
echo.
echo                                        Chroma
echo                                        AI Tools
echo                                        8   8                 8""""8 8""""8 ""8"" 
echo                                        8   8 eeeee e    e    8    " 8    8   8   
echo                                        8eee8 8   8 8    8    8e     8eeee8   8e  
echo                                        88  8 8eee8 eeeeee    88  ee 88       88  
echo                                        88  8 88  8 88   8    88   8 88       88  
echo                                        88  8 88  8 88   8    88eee8 88       88  
                                          
call button 1 0 "Hax v3" 42 13 "Start" 56 13 "Info" 69 13 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (
    del HaxGPT.exe
    call :gotoSafe startmenu
)
if %errorlevel%==2 (
    echo. 
    echo. 
    HaxGPT.exe 
    echo.
    pause
    call :gotoSafe HGPT 
)
if %errorlevel%==3 (echo. && echo. && echo                               Intelligent and fast chat-based text generating model.&& echo                               To safely close the chat, type "exit", or "stop". && timeout -t 4 -nobreak > nul)
if %errorlevel%==4 (
    del HaxGPT.exe
    call :gotoSafe Aitools
)

call :gotoSafe HGPT

:oHGPT
cls
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| HaxGPT                  ^|
echo ^| By Chroma               ^|
echo ============================
echo Intelligent and fast chat- 
echo based text generating model
echo.
echo To safely close the chat, 
echo type "exit", or "stop".
echo.
HaxGPT.exe
echo.
echo Would you like to..
choice /c 12 /m "Run Again [1] - Exit [2]"
if errorlevel 2 del HaxGPT.exe && call :gotoSafe ouiAitools
if errorlevel 1 call :gotoSafe oHGPT

del HaxGPT.exe && call :gotoSafe ouiAitools


:TTTS
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color 5
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 75
   )
)
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe oTTS
    )
)
cls
echo.
echo.
echo.
echo                                         Chroma
echo                                         AI Tools
echo                                         8   8  8        ""8"" ""8"" 8""""8 
echo                                         8   8  8 e  eeeee 8     8   8      
echo                                         8e  8  8 8  8   8 8e    8e  8eeeee 
echo                                         88  8  8 8e 8e  8 88    88      88 
echo                                         88  8  8 88 88  8 88    88  e   88 
echo                                         88ee8ee8 88 88  8 88    88  8eee88 
                                   
call button 1 0 "Hax v3" 40 13 "Start" 54 13 "Info" 67 13 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 ( call :gotoSafe startmenu )
if %errorlevel%==2 ( call :gotoSafe WinTTS )
if %errorlevel%==3 (echo. && echo. && echo                               Uses Windows functions to convert text to speech. && timeout -t 4 -nobreak > nul)
if %errorlevel%==4 ( call :gotoSafe Aitools )

call :gotoSafe TTTS
:oTTS
cls
echo ============================
echo ^| Hax MultiTool v3        ^|
echo ^| WinTTS                  ^|
echo ^| By Chroma               ^|
echo ============================
echo Uses Windows functions to 
echo convert text to speech.
echo.
:WinTTS
set "TS=Placeholder"

set /p T2S=^>
if not "%T2S%"=="" set "TS=%T2S%"

powershell -command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('%TS%');"
pause
if "!gm!"=="oui" (
    call :gotoSafe ouiAitools
) else if "!gm!"=="cui" (
    call :gotoSafe TTTS
) else if "!gm!"=="cli" (
    call :gotoSafe commandline
)
cls
echo.
echo This is an error and shouldn't happen.
echo Please report this bug.
echo Error code:
echo [NGMS3TT]
pause >nul
exit

:______Troll______
:MSW
IF "!whm!" == "0 " (
   IF NOT "%cmode%"=="none" (
       color !cmode!
   ) else (
       color F
   )
) else (
   IF NOT "%cmode%"=="none" (
       color 7!cmode!
   ) else (
       color 70
   )
)
if "!Ef!"=="0 " (
   set Eff=False
) else (
   set Eff=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    if "!gm!"=="oui" (
        call :gotoSafe oMSW
    )
)
cls
echo.
echo.
echo.
echo                                         Chroma
echo                                         Trolls Tools
echo                 __  __    U  ___ u   _   _   ____   U _____ u      ____                      _       ____     ____   U _____ u   ____     
echo               U^|' ^\^/ '^|u   ^\^/"_ ^\^/U ^|"^|u^| ^| ^/ __"^| u^\^| ___"^|^/     ^/ __"^| u  __        __ U  ^/"^\  u U^|  _"^\ uU^|  _"^\ u^\^| ___"^|^/U ^|  _"^\ u  
echo               ^\^| ^|^\^/^| ^|^/   ^| ^| ^| ^| ^\^| ^|^\^| ^|^<^\___ ^\^/  ^|  _^|"      ^<^\___ ^\^/   ^\"^\      ^/"^/  ^\^/ _ ^\^/  ^\^| ^|_^) ^|^/^\^| ^|_^) ^|^/ ^|  _^|"   ^\^| ^|_^) ^|^/  
echo                ^| ^|  ^| ^|.-,_^| ^|_^| ^|  ^| ^|_^| ^| u___^) ^|  ^| ^|___       u___^) ^|   ^/^\ ^\ ^/^\ ^/ ^/^\  ^/ ___ ^\   ^|  __^/   ^|  __^/   ^| ^|___    ^|  _ ^<    
echo                ^|_^|  ^|_^| ^\_^)-^\___^/  ^<^<^\___^/  ^|____^/^>^> ^|_____^|      ^|____^/^>^> U  ^\ V  V ^/  U^/_^/   ^\_^\  ^|_^|      ^|_^|      ^|_____^|   ^|_^| ^\_^\   
echo               ^<^<,-,,-.       ^\^\   ^(__^) ^)^(    ^)^(  ^(__^)^<^<   ^>^>       ^)^(  ^(__^).-,_^\ ^/^\ ^/_,-. ^\^\    ^>^>  ^|^|^>^>_    ^|^|^>^>_    ^<^<   ^>^>   ^/^/   ^\^\_  
echo                ^(.^/  ^\.^)     ^(__^)      ^(__^)  ^(__^)    ^(__^) ^(__^)     ^(__^)      ^\_^)-'  '-^(_^/ ^(__^)  ^(__^)^(__^)__^)  ^(__^)__^)  ^(__^) ^(__^) ^(__^)  ^(__^) 
                                   
call button 1 0 "Hax v3" 40 13 "Start" 54 13 "Info" 67 13 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 ( call :gotoSafe startmenu )
if %errorlevel%==2 ( echo. && echo. && call :gotoSafe rundswap )
if %errorlevel%==3 ( echo. && echo. && echo                               Swaps mouse buttons. An annoying troll to do to to your friends. :^) && timeout -t 4 -nobreak > nul)
if %errorlevel%==4 ( call :gotoSafe TrollsTools )
call :gotoSafe MSW

:oMSW
cls
color F
echo.
echo ============================
echo ^| Hax Multitool v3        ^|
echo ^| Mouse Swapper           ^|
echo ^| By Chroma               ^|
echo ============================
echo Swaps mouse buttons.
echo An annoying troll to do to 
echo your friends. ^:^)
echo.
echo.
choice /c YN /n /m "Do you want to continue? [Y/N]: "
if %errorlevel% equ 2 (
    call :gotoSafe ouiTrollsTools
)
:rundswap
rundll32 user32, SwapMouseButton
echo have fun lol.
echo.
echo.
pause
goto TrollsTools
:rick
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    IF "!gm!"=="cui" (
        if "!anms!"=="0 " (
           set anims=False
           @mode 70,30
        ) else (
           set anims=True
           @mode 118, 31
           @mode 100, 31
           @mode 90,31
           @mode 80,31
           @mode 70,30
        )
    ) else if "!gm!"=="oui" (
        if "!anms!"=="0 " (
           set anims=False
           @mode 70,30
        ) else (
           set anims=True
           @mode 118, 31
           @mode 100, 31
           @mode 90,31
           @mode 80,31
           @mode 70,30
        )
    ) else if "!gm!"=="cli" (
        @mode 70,30
    )
) else (
    cls
    echo This should not happen, and its an error
    echo Please contact support.
    echo Error code: [U1C4LLN0GM]
    pause >nul
    exit
)
@mode 70, 37 && curl ascii.live/rick

:__________Function______
:gotoSafe
set target=%1

findstr /r /i /c:"^:%target%\>" "%~f0" >nul
if %errorlevel% equ 0 (
    goto %target%
) else (
    cls
    echo.
    echo "Not yet implemented. Sorry."
    pause >nul
    goto haxMultiToolv3
)
goto :eof
:gbcheck
if EXIST goback.txt (
    del goback.txt
    if exist settings/gm.txt (
        set /p gm=<settings\gm.txt
        set "gm=!gm: =!"
        IF "!gm!"=="cui" (
            call :gotoSafe %gobach%
        ) else if "!gm!"=="oui" (
            call :gotoSafe oui%gobach%
        ) else if "!gm!"=="cli" (
            call :gotoSafe ucli
        )
    ) else (
        cls
        echo This should not happen, and its an error
        echo Please contact support.
        echo Error code: [U1C4LLN0GM]
        pause >nul
        exit
    )
)
call :gotoSafe gbcheck

:load_settings
set "folder=%~1"
if not exist "%folder%\" (
    call :create_settings
    echo Reconstructing settings..
    timeout -t 1 -nobreak >nul
)

for /f "delims=" %%f in ('dir /b /a:-d-h-s "%folder%\*.txt" 2^>nul') do (
    set "file_path=%folder%\%%f"
    set "variable_name=%%~nf"
    echo Loading variable "!variable_name!" from file "!file_path!"
    for /f "usebackq delims=" %%a in ("!file_path!") do set "!variable_name!=%%a"
    set "var_list=!var_list! !variable_name!"
)
goto :eof

:create_settings
if not exist settings (
    mkdir settings
    powershell -Command "Start-Sleep -Milliseconds 50"
    echo 0 >settings\anims.txt
    powershell -Command "Start-Sleep -Milliseconds 50"
    echo DEFAULT >settings\clr.txt
    powershell -Command "Start-Sleep -Milliseconds 50"
    echo 0 >settings\dbg.txt
    powershell -Command "Start-Sleep -Milliseconds 50"
    echo cui >settings\gui.txt
    powershell -Command "Start-Sleep -Milliseconds 50"
    echo 0 >settings\S1.txt
    powershell -Command "Start-Sleep -Milliseconds 50"
    echo 1 >settings\S2.txt
    powershell -Command "Start-Sleep -Milliseconds 50"
    echo 0 >settings\sudo.txt
    powershell -Command "Start-Sleep -Milliseconds 50"
    echo 0 >settings\wm.txt
)
goto :eof