# set variables
$version = "4.3.3"
$checksum32 = "4de9ecba4a54fd81243ca343ee1e3f306b9575217db3bf78d3232a80fe10dad5"
$checksum64 = "70953a966b90bceb664639d1a690567e39cf9e3ebacf8c622c17df76fa0a199b"

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
