@echo off
:: Windows 8/8.1 Ultimate White Glass (silent)

reg add "HKCU\Control Panel\Desktop" /v WallPaper /t REG_SZ /d "C:\Users\Tuyen\Downloads\undefined - Imgur.jpg" /f >nul

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\DWM" /v ColorizationColor /t REG_DWORD /d 0xCBFFFFFF /f >nul
reg add "HKCU\Software\Microsoft\Windows\DWM" /v ColorizationColorBalance /t REG_DWORD /d 99 /f >nul
reg add "HKCU\Software\Microsoft\Windows\DWM" /v AccentColor /t REG_DWORD /d 0xCBFFFFFF /f >nul
reg add "HKCU\Software\Microsoft\Windows\DWM" /v EnableAeroPeek /t REG_DWORD /d 0 /f >nul

taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe >nul
exit