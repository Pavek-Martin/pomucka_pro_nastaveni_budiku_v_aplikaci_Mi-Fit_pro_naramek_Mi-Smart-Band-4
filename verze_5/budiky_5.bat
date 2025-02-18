@echo off
title budiky 5 nastaveni naramek
cls

set /p zacatek_hodin="v kolik hodin rano zacit ? "
REM echo %zacatek_hodin%

echo "pro celou hodinu zadat pocet minut jako nula"
set /p zacatek_minut="plus kolik minut ? "
REM echo %zacatek_minut%

set /p krok="krok budiku v minutach ? "
REM echo %krok%

REM powershell -File .\budiky_5_zacatek_minut_2.ps1 %zacatek_hodin% %zacatek_minut% %krok%

budiky_5.com %zacatek_hodin% %zacatek_minut% %krok%

REM aby to mluvilo cesky
@echo zmackni nejakou klavesu pro ukonceni
pause>nul
REM  ^--- jako na tucnakovy ma Bill, odeslat standartni vystup do /dev/null
REM akorat zde spravne psano pouze z jednim "l" :)

@echo on

REM pozn. pri spusteni pres tento davkovy soubor a nebo v cmd.exe prijdou souboru budiky_5.com vstupni argumety
REM v datovem typu strings, proto je na radkach 27,29 a 31 zajisten prevod do [int32] by fungovala aritmetika
REM viz Screenshot-03_06_2024_07-03-28.jpg

REM pri spusteni v editoru Powershell viz. Screenshot-03_06_2024_06-59-44.jpg prevod string do int32 byt nemusi
REM jiz se bere automaticky vstupni parametr jako typ int32





