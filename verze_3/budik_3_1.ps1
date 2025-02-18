cls

#$minut = (New-TimeSpan -Minutes 567).Minutes
#echo $minut

$zacatek_hodin = 5

$zacatek_minut=($zacatek_hodin*60)
$minut_2= (New-TimeSpan -Minutes $zacatek_minut).ToString()
#echo $minut_2
$minut_2b=$minut_2.Substring(0,5)
echo "budik cislo  1 = $minut_2b"


for ($budik = 2; $budik -le 10; $budik++) {
$krok_minut+=110
$minut_3= (New-TimeSpan -Minutes $krok_minut).ToString()

$out=""
$out+="budik cislo"

if ( $budik -lt 10 ) {
$out+="  "
}else{
$out+=" "
}

$out+=$budik

$out+=" = "
$out+=$minut_3.Substring(0,5)
echo $out
}

sleep 10


