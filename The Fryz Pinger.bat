:: I take no Responsibiluty of what you do with this program, use at your own risk

@echo off
mode 45,12
set /a num=%random% %%9
color %num%
title Fryz Pinger - Idle
echo.
echo   ____                           
echo  /\  _`\                         
echo  \ \ \L\_\_ __   __  __  ____    
echo   \ \  _\/\`'__\/\ \/\ \/\_ ,`\  
echo    \ \ \/\ \ \/ \ \ \_\ \/_/  /_ 
echo     \ \_\ \ \_\  \/`____ \/\____\
echo      \/_/  \/_/   `/___/  \/____/
echo                      /\___/      
echo                      \/__/       
echo.
set /p ip="[41;37m>[40;37m"
:top
PING -n 1 %IP% | FIND "TTL=">nul
IF ERRORLEVEL 1 goto offline
IF NOT ERRORLEVEL 1 goto ping
:ping
::set /a num=%random% %%9
::color %num%
title Fryz Pinger - Ctrl+C Exit - Online
echo [40;37m [41;37m%IP%[40;30m [40;37mis [42;37mpinging[40;30m
ping localhost -n 2 >nul
goto top
:offline
title Fryz Pinger - Ctrl+C Exit - Offline
echo [40;37m [41;33m%IP%[40;31m is offline
ping localhost -n 2 >nul
goto top