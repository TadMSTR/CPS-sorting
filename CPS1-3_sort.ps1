# Sort CPS1, CPS2, and CPS3
# Place your FBalpha or FBneo pack in the $source folder

$source = "roms"

$path = "cps1"
If (!(Test-Path $path)) {
	New-Item -ItemType Directory -Force -Path $path
}
$files = Get-Content cps1.txt
ForEach ($file in $files) {
    Copy-Item $source\$file $path
}

$path = "cps2"
If (!(Test-Path $path)) {
	New-Item -ItemType Directory -Force -Path $path
}
$files = Get-Content cps2.txt
ForEach ($file in $files) {
    Copy-Item $source\$file $path
}

$path = "cps3"
If (!(Test-Path $path)) {
	New-Item -ItemType Directory -Force -Path $path
}
$files = Get-Content cps3.txt
ForEach ($file in $files) {
    Copy-Item $source\$file $path
}
