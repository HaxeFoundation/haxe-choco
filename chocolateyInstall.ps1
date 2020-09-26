$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-4.1.4-win.zip" `
    -Checksum '44a5da95bc801ecf71ea90c177d0555c5cf7eca6e1467739f4667a7f7e37ace1' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-4.1.4-win64.zip" `
    -Checksum64 'cb55d37560a4deb227fd8577bc8c880124b0260398456eb34a007a6a4d15f170' `
    -ChecksumType64 'sha256'
