cls

$hodin = 3

$minut=(60*$hodin)

$krok_minut = 140
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

