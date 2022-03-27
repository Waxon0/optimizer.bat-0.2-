@echo off
color 81
goto main

:main
set path=%~dp0
title optimizer
cls
cd C:\Windows\System32
cmdMenuSel f870 "RAM" "GPU" "CPU" "MTU" "System" "delete temporary files" "help" "exit"
if %ERRORLEVEL%==1 goto RAM
if %ERRORLEVEL%==2 goto GPU
if %ERRORLEVEL%==3 goto CPU
if %ERRORLEVEL%==4 goto MTU
if %ERRORLEVEL%==5 goto System
if %ERRORLEVEL%==6 goto deltemp
if %ERRORLEVEL%==7 goto help
if %ERRORLEVEL%==8 exit

:GPU
setx GPU_FORCE_64BIT_PTR 0
::you can set this option to 1 for mining,sharing resources or servers::
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100
cd %path:~0,-1%
delays.reg
goto main
pause>nul

:CPU
setx CPU_FORCE_64BIT_PTR 0
::you can set this option to 1 for mining,sharing resources or servers::
setx CPU_MAX_HEAP_SIZE 100
setx CPU_USE_SYNC_OBJECTS 1
setx CPU_MAX_ALLOC_PERCENT 100
setx CPU_SINGLE_ALLOC_PERCENT 100
cls
cd %path:~0,-1%
if %64%==1 set 32=0
if %32%==1 set 64=0
cmdMenuSel f870 "64" "32"
if %ERRORLEVEL%==1 set 64=1
if %ERRORLEVEL%==2 set 32=1
if %64%==1 64
if %64%==1 goto main
if %32%==1 32
if %32%==1 goto main
goto main
pause>nul

:RAM
set /p in=How much GB of RAM do you have?
set /a out=!in!*1000/2
fsutil behavior set memoryusage 2
bcdedit /set increaseuserva %out%
goto main_restart
pause>nul

:System
cd %path:~0,-1%
SystemProfile.reg
goto main

:deltemp
del %temp%
goto main
pause>nul

:MTU
cls
cmdMenuSel f870 "Wi-fi" "Ethernet" "local network" "go back"
if %ERRORLEVEL%==1 goto wifi
if %ERRORLEVEL%==2 goto ethernet
if %ERRORLEVEL%==3 goto ln
if %ERRORLEVEL%==4 goto main

:wifi
cd C:\Windows\System32
netsh interface ipv4 show interfaces
set /p mtu= How much MTU do you have?
netsh int ipv4 set subinterface "Wi-Fi" mtu = %mtu% store = persistent
goto main
pause>nul

:ethernet
cd C:\Windows\System32
netsh interface ipv4 show interfaces
set /p mtu= How much MTU do you have?
netsh int ipv4 set subinterface "Ethernet" mtu = %mtu% store = persistent
goto main
pause>nul

:ln
cd C:\Windows\System32
netsh interface ipv4 show interfaces
set /p mtu= How much MTU do you have?
netsh int ipv4 set subinterface "Local Network" mtu = %mtu% store = persistent
goto main
pause>nul

:help
cls
cmdMenuSel f870 "RAM" "GPU" "CPU" "MTU" "delete temporary files" "go back"
if %ERRORLEVEL%==1 goto help_RAM
if %ERRORLEVEL%==2 goto help_GPU
if %ERRORLEVEL%==3 goto help_CPU
if %ERRORLEVEL%==4 goto help_MTU
if %ERRORLEVEL%==5 goto help_temp
if %ERRORLEVEL%==6 goto main

:help_RAM
cls
echo All instructions executed by the CPU(Central Processing Unit),program data and another parts of the pc are echo loaded into RAM(Random Access Memory).
pause>nul
goto help

:help_GPU
cls
echo The GPU(Graphical Processing Unit) helps renders all the things on screen and is dedicated to
echo graphics processing and floating comma operations.
pause>nul
goto help

:help_CPU
cls
echo The CPU(Central Processing Unit) is used to interpret the instructions of the programs.
pause>nul
goto help

:help_MTU
cls
echo MTU(Maximum Transmission Unit) defines how much a packet of bytes can send by the internet connection
pause>nul
goto help

:help_temp
cls
echo a temporary file is a file that is generated by a program so that if you lose any data
echo you can use the program normally
pause>nul
goto help

:main_restart
cls
title restart to save changes
cmdMenuSel f870 "restart" "go back"
if %ERRORLEVEL%==1 goto restart
if %ERRORLEVEL%==2 goto main

:restart
shutdown -r -t 1
exit
