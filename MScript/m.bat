@echo off
 
if "%*" == "ts" goto tunsafe
if "%*" == "zzone" goto zzone
if "%*" == "vps" goto vps
if "%*" == "fvps" goto fvps
if "%*" ==  "help" goto help
if "%*" == "?" goto ?

echo No such definition.
goto help
goto end

:?
:help
echo Try :
echo ts 		Open tunsafe
echo zzone	Open file path Yaoliming
echo vps		Connect ming's vps host via ssh
echo fvps		Connect ming's vps host via fstp
goto end

:zzone
start G:\Yaoliming\
exit
goto end

:tunsafe
start G:\Yaoliming\VPS\tunSafe1.5rc2x64\tunsafe.exe
exit
goto end

:vps
ssh -o "ServerAliveInterval 60" -o "ServerAliveCountMax 120" -p 28994 root@45.78.24.84
goto end

:fvps
sftp -P 28994 root@45.78.24.84
goto end

:end

