@echo off

setlocal enabledelayedexpansion

set colors=F4C6EA2B91D5
set /a index=%1
call :changeColor

:changeColor
set colorMap[0]=DEFAULT
set colorMap[1]=RED
set colorMap[2]=SALMON
set colorMap[3]=MUSTARD
set colorMap[4]=SUN
set colorMap[5]=HACKERMAN
set colorMap[6]=LEAF
set colorMap[7]=DIAMOND
set colorMap[8]=SKY
set colorMap[9]=OCEAN
set colorMap[10]=PEONY
set colorMap[11]=RETRO

if exist settings/wm.txt (
   set /p whm=<settings/wm.txt
) else (
   set whm=0
   echo 0 > settings/wm.txt
)

IF "%whm%" == "0 " (
   color !colors:~%index%,1!
) else (
   color 7!colors:~%index%,1!
)
rem echo colorindex: !colors:~%index%,1!

set currentColorName=!colorMap[%index%]!
rem echo colorname: !colorMap[%index%]!

echo %currentColorName% > settings/clr.txt
rem echo index: %index%