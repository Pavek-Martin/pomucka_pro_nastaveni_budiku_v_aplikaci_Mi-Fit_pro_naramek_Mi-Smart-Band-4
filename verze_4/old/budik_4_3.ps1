cls


$zacatek_hodin = 5
$m = (60*$zacatek_hodin)
#$m=300
$krok_minut = 110

function budik {
Param ($a)
$hodin = (New-TimeSpan -Minutes $a).Hours
#echo $hodin.GetType()
$minut = (New-TimeSpan -Minutes $a).Minutes
#echo $minut.GetType()
echo "$hodin : $minut"
}


for ($aa = 1; $aa -le 10; $aa++) {
budik -a $m
$m+=$krok_minut
}







<#
$m=5*60
$minut_2= (New-TimeSpan -Minutes $m).ToString()
#echo $minut_2
echo "budik cislo 1 = $minut_2"


for ($aa = 2; $aa -le 10; $aa++) {
$m+=110
$minut_3= (New-TimeSpan -Minutes $m).ToString()
echo "budik cislo $aa = $minut_3"
}
#>


