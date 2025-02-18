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
echo "budiky_4.exe 7 110"
echo "7 = zacit v 7 hodin rano"
echo "110 = odstup minut mezi budikama je 110"
echo "apod."
sleep 10
Exit
}


$zacatek_hodin = [int32] $args[0]
$m = (60*$zacatek_hodin)
#echo $m
$krok_minut = [int32] $args[1]
#echo $zacatek_minut
#echo $krok_minut


function budik {
Param ($a)
$hodin = (New-TimeSpan -Minutes $a).Hours
#echo $hodin.GetType()

if ( $hodin -lt 10 ) {
$hodin_2="0"
$hodin_2+=[string] $hodin
}else{
$hodin_2=$hodin
}

$minut = (New-TimeSpan -Minutes $a).Minutes
#echo $minut.GetType()

if ( $minut -lt 10 ) {
$minut_2="0"
$minut_2+=[string] $minut
}else{
$minut_2=$minut
}

echo $hodin_2":"$minut_2
}

for ($aa = 1; $aa -le 10; $aa++) {
#budik -a $m

$out=""
$out+="budik cislo"

if ( $aa -lt 10 ) {
$out+="  "
}else{
$out+=" "
}

$out+=$aa 
$out+=" = "
$out+= budik -a $m

echo $out
$m+=$krok_minut
}


