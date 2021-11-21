# set variables
::SET_VARIABLES::

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
