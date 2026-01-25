@echo off
REM Script pour activer la mise en veille prolongée dans le menu Démarrer
REM Doit être exécuté en tant qu'administrateur

echo Activation de la mise en veille prolongée...

REM Active la fonction de mise en veille prolongée
powercfg /hibernate on

REM Ajoute l'option dans le menu d'arrêt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v HibernateEnabled /t REG_DWORD /d 1 /f

REM Active l'affichage dans le menu
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v ShowHibernateOption /t REG_DWORD /d 1 /f

echo.
echo Terminé ! La mise en veille prolongée devrait maintenant apparaître
echo dans le menu Démarrer (bouton d'alimentation).
echo.
echo Vous devrez peut-être redémarrer votre session pour voir les changements.
echo.
pause