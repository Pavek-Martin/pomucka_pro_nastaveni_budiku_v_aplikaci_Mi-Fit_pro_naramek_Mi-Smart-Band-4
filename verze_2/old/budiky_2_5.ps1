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

$hodin = [string] $timespan.Hours
$d_hodin = $hodin.Length
#echo $d_hodin
if ( $d_hodin -lt 2 ){
$hodin_2=" "
$hodin_2+=$hodin
}else{
$hodin_2=$hodin
}

$out+=$hodin_2
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

