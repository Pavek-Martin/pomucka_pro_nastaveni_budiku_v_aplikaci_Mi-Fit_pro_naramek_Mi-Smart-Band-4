#cls

# v zahlavi spusteneho okna zobrazi informoce ( neco jako echo $0 v bash )
[string] $scriptName = pwd
#$scriptName += "\"
$scriptName += $MyInvocation.MyCommand.Name
$host.UI.RawUI.WindowTitle = $scriptName

$delka_args = $args.length
#echo "celkem args $delka_args"
#$delka_args.GetType() #Int32
 
if ($delka_args -ne 2) { # prave 2 argumenty musi dostat

echo "pouziti napr."
echo ""
echo "budiky.ps1 7 110"
echo "7 = zacit v 7 hodin rano"
echo "110 = odstup minut mezi budikama je 110"
echo "apod."
#sleep 10
Exit
}

$hodin += [int32] $args[0]

#$hodin = 3

$minut=(60*$hodin)

#$krok_minut = 140
$krok_minut = [int32] $args[1]
$poc=1

for ( $minut_2 = $minut; $minut_2 -le (($minut)+(9*$krok_minut)) ; $minut_2+=$krok_minut ) {
#echo $minut_2"--"

$timespan = New-TimeSpan -Minutes $minut_2

[string] $h = $timespan.Hours
[string] $m = $timespan.Minutes
echo $poc" "$h":"$m
$poc++
#echo $hodin.GetType()
#echo $minut.GetType()
}

<#
Budik cislo  1 odstup minut =   0  05:00
Budik cislo  2 odstup minut = 110  06:50
Budik cislo  3 odstup minut = 220  08:40
Budik cislo  4 odstup minut = 330  10:30
Budik cislo  5 odstup minut = 440  12:20
Budik cislo  6 odstup minut = 550  14:10
Budik cislo  7 odstup minut = 660  16:00
Budik cislo  8 odstup minut = 770  17:50
Budik cislo  9 odstup minut = 880  19:40
Budik cislo 10 odstup minut = 990  21:30
#>


