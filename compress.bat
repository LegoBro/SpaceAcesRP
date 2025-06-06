@echo off
set "zipName=resources.zip"
set "sourceFiles=assets pack.mcmeta pack.png"

:: Ensure 7-Zip is installed and accessible
if not exist "%ProgramFiles%\7-Zip\7z.exe" (
    echo 7-Zip not found. Please install it first.
    pause
    exit /b
)

:: Create zip with store (no compression) setting
"%ProgramFiles%\7-Zip\7z.exe" a -tzip "%zipName%" %sourceFiles% -mx1

echo Zip archive created: %zipName%
pause