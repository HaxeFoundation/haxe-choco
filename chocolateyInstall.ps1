# set variables
$version = "4.3.2"
$checksum32 = "6b5dbb697d2f8f0c7315773bde6e99ce78b83e7127f327faf4bb069ae3e0766d"
$checksum64 = "194276aa37e19945e7d993145b2c9442777f8047e78038147a684d1fb7e8e9df"

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
