@echo off
title budiky nastaveni naramek
cls

set /p zacatek="v kolik hodin rano zacit ? "
echo %zacatek%

set /p krok="krok budiku v minutach ? "
echo %krok%

pause

REM powershell -File .\budiky_4.ps1 %zacatek% %krok%

budiky_4.exe %zacatek% %krok%

pause
@echo on
