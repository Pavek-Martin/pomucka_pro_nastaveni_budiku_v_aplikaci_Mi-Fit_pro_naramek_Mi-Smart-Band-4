cls

$zacatek_hodin = 3
$m = (60*$zacatek_hodin)
$krok_minut = 130

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
#echo "budik cislo $aa budik -a $m"
$m+=$krok_minut
}


