$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-*-win.zip" `
    -Checksum 'de0c7b668dfc11cc293f055bcb5bd949158276df51f43d05dad311b6568684ae' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-*-win64.zip" `
    -Checksum64 '9b914263bf1e1fb7b9fc5b830a4c43f333fefdabb5a6358cd0104f33eabfec4d' `
    -ChecksumType64 'sha256'
