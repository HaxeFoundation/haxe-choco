$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-*-win.zip" `
    -Checksum '72c6015616bfec77c74b6402318b5cca667ef0010077d7db5b0210fa529ca7eb' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-*-win64.zip" `
    -Checksum64 '93130ae2b1083efbcd9b8911afe2ba00d5af995f016149fd7ec629fa439c6120' `
    -ChecksumType64 'sha256'
