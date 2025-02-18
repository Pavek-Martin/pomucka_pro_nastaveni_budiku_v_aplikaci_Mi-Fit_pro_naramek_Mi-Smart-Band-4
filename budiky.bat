@echo off
title budiky nastaveni naramek
cls

set /p zacatek="v kolik hodin rano zacit ? "
@echo %zacatek%

set /p krok="krok budiku v minutach ? "
@echo %krok%

pause

REM powershell -File .\budiky.ps1 %zacatek% %krok%

budiky.exe %zacatek% %krok%

pause
@echo on
