cls

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
echo "budiky_3.ps1 7 110"
echo "7 = zacit v 7 hodin rano"
echo "110 = odstup minut mezi budikama je 110"
echo "apod."
#sleep 10
Exit
}


$zacatek_hodin = [int32] $args[0]
$zacatek_minut=(60*$zacatek_hodin)
$krok_minut = [int32] $args[1]
#echo $zacatek_minut
#echo $krok_minut

$minut_2= (New-TimeSpan -Minutes $zacatek_minut).ToString()
#echo $minut_2
#$minut_2b=$minut_2.Substring(0,5)
#echo "budik cislo  1 = $minut_2b"
echo "budik cislo  1 = $minut_2"

$krok_minut_2=$zacatek_minut+$krok_minut
for ($budik = 2; $budik -le 10; $budik++) {
$minut_3= (New-TimeSpan -Minutes $krok_minut_2).ToString()
$krok_minut_2+=$krok_minut
$out=""
$out+="budik cislo"

if ( $budik -lt 10 ) {
$out+="  "
}else{
$out+=" "
}

$out+=$budik

$out+=" = "
#$out+=$minut_3.Substring(0,5)

$out+=$minut_3
echo $out
}

#sleep 10


