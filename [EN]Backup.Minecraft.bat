@echo off
title Backup .minecraft folder
echo Your .minecraft folder is backup on %appdata%\.minecraftold
pause
if not exist "%appdata%\.minecraft" (
echo .minecraft folder doesn't exist !
pause
exit
) else (
if exist "%appdata%\.minecraftold" (
echo A .minecraftold already exist. The folder while be deleted and a new folder are create.
pause
rd "%appdata%\.minecraftold" /s /q
echo Delete complete !
echo Press a touch to make the backup
pause
goto:copy
)
:copy
xcopy "%appdata%\.minecraft" "%appdata%\.minecraftold" /e /i /w /q
echo Copy end !
pause
)
