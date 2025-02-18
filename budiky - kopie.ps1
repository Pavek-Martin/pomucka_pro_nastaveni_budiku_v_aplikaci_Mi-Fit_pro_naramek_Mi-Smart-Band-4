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
sleep 10
Exit
}


<#
[int32] $arg_0 = $args[0]
[int32] $arg_1 = $args[1]
echo $arg_0
echo $arg_0.GetType()
echo $arg_1
echo $arg_1.GetType()

echo $args[0]
echo $args[0].GetType() # Int32
echo $args[1]
echo $args[1].GetType()

sleep 10
exit 
#>

$cas = "01/01/2024 0"
#$cas += "7"
$cas += [string] $args[0]
$cas += ":00" # lze menit i toto napr. ":30" ale nazadava se jako vstupni agrument, mozno pridat
#echo $cas

$cas_2 = [datetime] $cas
#echo $cas_2

#$prirustek_minut = 100
$prirustek_minut = [int32] $args[1]
$pocet_budiku = 10 # celkem 10 budiku ma naramek

$pocitadlo = 1
for ( $aa = 0; $aa -le ( $prirustek_minut * ($pocet_budiku - 1 )); $aa+=$prirustek_minut ) {
#echo $aa

$cas_plus = $cas_2.AddMinutes(+$aa)

$out= [string] ""
$out+="Budik cislo"

if ( $pocitadlo -lt 10 ){
$out+="  "
}else{
$out+=" "
}
$out+=[string] $pocitadlo
$out+=" odstup minut = "
if ( $pocitadlo -eq 1 ){
$out+="  "
}
$out+=$aa
$out+="  "

$hodin = [string] $cas_plus.Hour
$d_hodin = $hodin.Length
#echo $d_hodin
if ( $d_hodin -lt 2 ){
$hodin_2="0"
$hodin_2+=$hodin
}else{
$hodin_2=$hodin
}

$out+=$hodin_2
#echo [string] $cas_plus.Hour.GetType()
$out+=":"
$minut = [string] $cas_plus.Minute
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

