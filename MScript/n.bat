@echo off
 
if "%*" == "wifi" goto wifi
if "%*" == "cable" goto cable

if "%*" ==  "help" goto help
if "%*" == "?" goto ?

echo No such definition.
goto help
goto end

:?
:help
echo Try :
echo wifi 		Switch to wifi
echo cable	Switch to cable
goto end

:wifi
netsh interface set interface "Cable" disabled
netsh interface set interface "Wifi" enabled
exit
goto end

:cable
netsh interface set interface "Wifi" disabled
netsh interface set interface "Cable" enabled
exit
goto end

:end
