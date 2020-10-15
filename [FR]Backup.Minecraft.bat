@echo off
title Backup dossier .minecraft
echo Votre backup vas être crée dans le répertoire suivant: %appdata%\.minecraftold
pause
if not exist "%appdata%\.minecraft" (
echo Le dossier .minecraft n'existe pas ! Le programme va ce fermer.
pause
exit
) else (
if exist "%appdata%\.minecraftold" (
echo Le répertoire .minecraftold existe déjà ! Le dossier va être supprimer puis remplacer par un nouveau .minecraftold.
pause
rd "%appdata%\.minecraftold" /s /q
echo Suppression terminer !
echo Appuiez sur une touche pour continuer
pause
goto:copy
)
:copy
xcopy "%appdata%\.minecraft" "%appdata%\.minecraftold" /e /i /w /q
echo Copie terminer !
pause
)
