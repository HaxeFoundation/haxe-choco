# set variables
$version = "4.3.4"
$checksum32 = "97cf6851d82e8d18eaa64b50e2157c2459a311256a711aca5c155114cef3d278"
$checksum64 = "402ca2e8fd08477b5c08191bddc0e9af3b58484308dde4558f670a455bc3e503"

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
