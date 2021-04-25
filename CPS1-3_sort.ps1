# Sort CPS1, CPS2, and CPS3
# Place your FBalpha or FBneo pack in the $source folder

$source = "roms"

$files = Get-Content cps1.txt
foreach ($file in $files) {
    Copy-Item $source\$file "cps1"
}

$files = Get-Content cps2.txt
foreach ($file in $files) {
    Copy-Item $source\$file "cps2"
}

$files = Get-Content cps3.txt
foreach ($file in $files) {
    Copy-Item $source\$file "cps3"
}
