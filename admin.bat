@echo off
::Adminer Tool By uzif, Feel free to use and modify
if "%1"=="" (
    msg * Parameter Not Found
    exit
)
set "fileName=%~1"
(
    echo Set UAC = CreateObject^("Shell.Application"^)
    echo UAC.ShellExecute "cmd.exe", "/c ""%~dp0%fileName%.bat""", "", "runas", 1
) > "%fileName%.vbs"
cscript //nologo "%fileName%.vbs"
del "%fileName%.vbs"
