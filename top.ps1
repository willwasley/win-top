$sorton = $args[0]
$topn = $args[1]
if ($sorton -eq $null) {
$sorton = "CPU"
}
if ($sorton -eq "MEM" -or $sorton -eq "mem" -or $sorton -eq "Mem") {
$sorton = "WS"
}
if ($topn -eq $null) {
$topn = 10
}

while (1) {
gps | sort -desc $sorton | select -first $topn; 
sleep -seconds 2; 
cls;
echo "Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id  SI ProcessName";
echo "-------  ------    -----      -----     ------     --  -- -----------"
}
