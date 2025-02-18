cls

$a=5*60

function budik {
Param ($a)
$hodin = (New-TimeSpan -Minutes $a).Hours
#echo $hodin
$minut = (New-TimeSpan -Minutes $a).Minutes
#echo $minut
echo "$hodin : $minut"
}


budik -a $a
$a+=110
budik -a $a
$a+=110
budik -a $a






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


