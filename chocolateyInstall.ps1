$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-*-win.zip" `
    -Checksum 'aae6667d94ff45603df0757bea0762c871985f66e5d4755a039b7a4efbf4d70d' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-*-win64.zip" `
    -Checksum64 '80cff2d8fbfd46a5be79413411554eea4de81f5c3dbfe780546f59e12f536c24' `
    -ChecksumType64 'sha256'
