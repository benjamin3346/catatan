@echo off
net session >nul 2>&1
if %errorLevel% neq 0 (
    powershell -Command "Start-Process cmd -ArgumentList '/c \"%~f0\"' -Verb RunAs"
    exit
)

:: Menjalankan perintah pengecualian Windows Defender
powershell -Command "Add-MpPreference -ExclusionPath 'C:\Users\%USERNAME%\Downloads\Video'"
REM cara download file dari cmd
curl -o C:\Users\%USERNAME%\Downloads\video\tailscale-setup-1.80.2.exe https://dl.tailscale.com/stable/tailscale-setup-1.80.2.exe
REM cara menjalankan file tadi leat cmd
start C:\Users\%USERNAME%\Downloads\video\tailscale-setup-1.80.2.exe
