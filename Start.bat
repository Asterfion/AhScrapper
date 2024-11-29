@echo off
title Custodia-Detector by @Asterfion - Version 1.0
echo.
echo By @Asterfion - Version 1.0
echo Github: https://github.com/Asterfion
echo Thanks for using my tools!
echo.
echo ----------------------------------------------
echo.

where python >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [!] Python is not installed or not found in PATH.
    echo Please install Python and try again.
    pause
    exit /b
)

if not exist "AhScrapper.py" (
    echo [!] Custodia-Detector.py not found in the current directory.
    echo Make sure the file exists and try again.
    pause
    exit /b
)

echo [+] Running AhScrapper.py...
echo.
python AhScrapper.py

if %ERRORLEVEL% EQU 0 (
    echo.
    echo [+] The script executed successfully!
) else (
    echo.
    echo [!] There was an error executing the script.
)

pause
