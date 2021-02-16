$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-4.2.0-win.zip" `
    -Checksum 'a797243e081e98eace34113292b0b199e5f738bfed284c07b417f0b89b09b72e' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-4.2.0-win64.zip" `
    -Checksum64 '83be481d03892562155ed77c4f0f2ac30f34683cb0b55b57765ef90fc1d623ee' `
    -ChecksumType64 'sha256'
