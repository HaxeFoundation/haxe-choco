# set variables
$version = "4.3.1"
$checksum32 = "260d0afd6e5a5ded14761ec8b23ecab7deaea552d7b6230bfc19411fdf248780"
$checksum64 = "8f77bf1dc3fae88b3174e311c60e69ab25c02093a0801bd3e49b28609f465e1e"

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
