$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-*-win.zip" `
    -Checksum '7f593bbbbc5be5f0344dc567e7aa69f39a2aaf661f2a088ed349f12849d06001' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-*-win64.zip" `
    -Checksum64 '787cf7d67da5922c9aaf79c0c4b03c3d7350c522915884b70a27e774dac1560f' `
    -ChecksumType64 'sha256'
