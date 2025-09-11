@echo off

:: ===== Section 1: Create a startup shortcut for Auto-Login-BMAAP.exe =====
set "EXE_PATH=C:\Auto-Login-BMAAP\Auto-Login-BMAAP.exe"
set "SHORTCUT_PATH_STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Auto-Login-BMAAP.lnk"

:: Create the startup shortcut using PowerShell
powershell -command "$WScriptShell = New-Object -ComObject WScript.Shell; $Shortcut = $WScriptShell.CreateShortcut('%SHORTCUT_PATH_STARTUP%'); $Shortcut.TargetPath = '%EXE_PATH%'; $Shortcut.WorkingDirectory = [System.IO.Path]::GetDirectoryName('%EXE_PATH%'); $Shortcut.Save()"

echo Shortcut for Auto-Login-BMAAP.exe added to Startup folder successfully!

:: ===== Section 2: Create a desktop shortcut for Wifi-Logout.bat =====
set "TARGET_PATH=C:\Auto-Login-BMAAP\Wifi-Logout.bat"
set "SHORTCUT_NAME=Wifi-Logout"
set "DESKTOP_PATH=%USERPROFILE%\Desktop"

:: Create the desktop shortcut using PowerShell
powershell -command "$WScriptShell = New-Object -ComObject WScript.Shell; $Shortcut = $WScriptShell.CreateShortcut('%DESKTOP_PATH%\%SHORTCUT_NAME%.lnk'); $Shortcut.TargetPath = '%TARGET_PATH%'; $Shortcut.Save()"

echo Shortcut for Wifi-Logout.bat added to Desktop successfully!

pause