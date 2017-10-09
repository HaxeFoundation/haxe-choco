$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-*-win.zip" `
    -Checksum 'b06fe00689490688c94e3152823786ce473c5b1112ca0b81be3e3cca4c9cc6e9' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-*-win64.zip" `
    -Checksum64 'fac48d13f50f625709a88226b9f946b3fb8e2f673de856eecd98331aa1830a02' `
    -ChecksumType64 'sha256'
