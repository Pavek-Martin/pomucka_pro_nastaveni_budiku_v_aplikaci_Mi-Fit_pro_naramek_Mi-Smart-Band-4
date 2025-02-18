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

