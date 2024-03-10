# set variables
$version = "4.3.0"
$checksum32 = "d70d2bb1e703b27db1f3b8e1f4d52dbebc4f8f6c73ed1b7a81d5d96c589a8b7d"
$checksum64 = "35d4d0e1f00a8b6904acd0e0a32a3e3abd4f33c5143b7ddc569f58a2504d2ece"

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
