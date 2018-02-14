$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-*-win.zip" `
    -Checksum 'ba669ef1085c9fd5b7cf0db4ac19b5f302c6706c138497e1d7bc7cce6af3b291' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-*-win64.zip" `
    -Checksum64 '561fbebebfe481076c5a028a2e191da7b85bff92a50f9dfb0b32ee34090d6ee8' `
    -ChecksumType64 'sha256'
