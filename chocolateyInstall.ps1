# set variables
$version = "4.2.5"
$checksum32 = "5f72826af28372629b3679149af3d6c2279240dc8bd9631bf47fa5fa49266178"
$checksum64 = "9e7913999eb3693d540926219b45107b3dc249feb44204c0378fcdc6a74a9132"

$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-$version-win.zip" `
    -Checksum "$checksum32" `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-$version-win64.zip" `
    -Checksum64 "$checksum64" `
    -ChecksumType64 'sha256'
