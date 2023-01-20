@echo off
color 2
title GrowTopia-Spoofer
net session >nul 2>&1
if %errorlevel% == 0 (
  goto menu
) else (
  echo Not running as admin, please run in admin mode.
  echo.
  echo.
  pause
  exit
)
:menu
echo.
echo Please select an option
echo.
echo 1. Delete registry keys and exit
echo 2. Delete registry keys and loop
echo.
choice /c 12 /n /m "Select an option: "
if %errorlevel% == 1 (
  goto ok
) else (
  goto 4
)
:ok
reg delete "HKEY_CURRENT_USER\567908229" /v 425931171c /f
reg delete "HKEY_CURRENT_USER\567908229" /v 425931171 /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography" /v MachineGuid /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\15180" /v 7590 /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\15180" /v 7590c /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\15180" /v 7590w /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\15180" /v 7590wc /f
pause
exit
:4
reg delete "HKEY_CURRENT_USER\567908229" /v 425931171c /f
reg delete "HKEY_CURRENT_USER\567908229" /v 425931171 /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography" /v MachineGuid /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\15180" /v 7590 /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\15180" /v 7590c /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\15180" /v 7590w /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\15180" /v 7590wc /f
goto 4
