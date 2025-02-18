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

$h += [int32] $args[0]

$m=(60*$h)

$krok_m = [int32] $args[1]
$pocitadlo = 1

for ( $minut_3 = $m; $minut_3 -le (($m)+(9*$krok_m)) ; $minut_3+=$krok_m ) {
#echo $minut_2"--"

$timespan = New-TimeSpan -Minutes $minut_3

$out= [string] ""
$out+="Budik cislo"

if ( $pocitadlo -lt 10 ){
$out+="  "
}else{
$out+=" "
}
$out+=[string] $pocitadlo
$out+=" odstup minut = "
if ( $pocitadlo -eq 1 ){
$out+=""
}
#$out+=$aa
$out+=""

$hodin = [string] $timespan.Hours

$d_hodin = $hodin.Length
#echo $d_hodin
if ( $d_hodin -lt 2 ){
$hodin_2="0"
$hodin_2+=$hodin
}else{
$hodin_2=$hodin
}

$out+=$hodin_2
#echo [string] $cas_plus.Hour.GetType()
$out+=":"

$minut = [string] $timespan.Minutes
$d_minut = $minut.Length
#echo $d_minut
if ( $d_minut -lt 2 ){
$minut_2="0"
$minut_2+=$minut
}else{
$minut_2=$minut
}
$out+=$minut_2
echo $out
$pocitadlo++
}





#[string] $h = $timespan.Hours
#[string] $m = $timespan.Minutes
#echo $pocitadlo" "$h":"$m
#$poc++
#echo $hodin.GetType()
#echo $minut.GetType()

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


