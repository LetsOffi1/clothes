@echo off
echo =======================================
echo   Initialisation du depot Git
echo =======================================

REM Supprime l'ancien dossier .git si présent
rmdir /s /q .git

REM Reinitialise le repo
git init

REM Ajoute tous les fichiers
git add .

REM Cree un premier commit
git commit -m "Initial commit"

REM Cree/renomme la branche en main
git branch -M main

REM Ajoute le remote GitHub
git remote add origin https://github.com/LetsOffi1/clothes.git

REM Force le push sur GitHub
git push -u origin main --force

echo =======================================
echo   Push termine !
echo   Verifie sur GitHub :)
echo =======================================
pause
