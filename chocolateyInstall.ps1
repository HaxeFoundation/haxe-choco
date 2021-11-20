$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-4.2.4-win.zip" `
    -Checksum 'f14d000cc7ad1d8f6d399105cd6f4ceb4e23a9eea6ea046425bd3395188bdf2d' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-4.2.4-win64.zip" `
    -Checksum64 'cdbcec5fee9178a307e6bcbb436f8ff124dd2c18f86ad51e3d0a7a4ef489877a' `
    -ChecksumType64 'sha256'
