@echo off
title budiky nastaveni naramek
cls

set /p zacatek="v kolik hodin rano zacit ? "
echo %zacatek%

set /p krok="krok budiku v minutach ? "
echo %krok%

pause

powershell -File .\budik_3_3.ps1 %zacatek% %krok%

REM budiky_3.exe %zacatek% %krok%

pause
@echo on
