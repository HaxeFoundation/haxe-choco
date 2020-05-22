$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-4.1.0-win.zip" `
    -Checksum '7c38c50b6ec76e0dabbbbaa6a3c563fcc6dd130b929968ddef36fef30dbe979e' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-4.1.0-win64.zip" `
    -Checksum64 'ed5d323a565cc9a51891f9a79fdb516a87110d4f36fa6b334d000690d3a1cfb1' `
    -ChecksumType64 'sha256'
