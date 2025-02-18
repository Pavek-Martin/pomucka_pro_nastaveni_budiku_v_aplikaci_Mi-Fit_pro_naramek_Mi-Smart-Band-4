cls


<#
Clear-Variable a -ErrorAction Ignore
Clear-Variable aa -ErrorAction Ignore
Clear-Variable b -ErrorAction Ignore
Clear-Variable bb -ErrorAction Ignore
Clear-Variable c -ErrorAction Ignore
Clear-Variable cc -ErrorAction Ignore
#>

Clear-Variable a,aa,b,bb,c,cc -ErrorAction Ignore



#$a="123" # zadano v uvozovkach, vznikne typ strings
#echo $a.GetType()
#[int32]$a=123
$a=123 # zadano takto, bude jako typ int32
echo $a.GetType()

$aa = [int32] $a # int32 do int32 nehodi error, akorat nic neprevede 
# (asi ta funkce samotna uz ma kontrolu vstupu, coz je celkem logicky)
echo $aa.GetType() # vypise typ promenne $aa
#echo $aa

echo "-----------"

$b="123"
echo $b.GetType()
$bb = [string] $b
echo $bb.GetType()

echo "------------------------------"

$c="456"
$c++ # tady bude hazet chybu (pritoze typ je string, cili nelze pricist +1)
echo $c.GetType() # zde je $cc typy string
$cc = [int32] $c # tady dela to co s deje pri spusteni pres davkovy soubor a nebo a cmd.exe
echo $cc.GetType() # zde jez preveden na typ int32
$cc++ # inkrementuje $cc o jedna 
echo $cc

pause


