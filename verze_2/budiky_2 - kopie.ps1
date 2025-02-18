#cls

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
echo "budiky_2.ps1 7 110"
echo "7 = zacit v 7 hodin rano"
echo "110 = odstup minut mezi budikama je 110"
echo "apod."
sleep 10
Exit
}

$hh = [int32] $args[0]
$mm=(60*$hh)
$krok_mm = [int32] $args[1]
$pocitadlo = 1

for ( $min = $mm; $min -le (($mm)+(9*$krok_mm)) ; $min+=$krok_mm ) {
#echo $min

$timespan = New-TimeSpan -Minutes $min

$out= [string] ""
$out+="Budik cislo"

if ( $pocitadlo -lt 10 ){
$out+="  "
}else{
$out+=" "
}
$out+=[string] $pocitadlo
$out+=" = "
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

# mnohem jednodussi a vysledek stejnej
