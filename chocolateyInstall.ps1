$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-*-win.zip" `
    -Checksum '2785b1781dc7c45054b488d074fdb452b8f55b831aaf3202744af20c9f9afc9a' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-*-win64.zip" `
    -Checksum64 '782f1a6036d25e9fbcfe4877cb14632321d80c5ac487046ecf267934a1e8d24d' `
    -ChecksumType64 'sha256'
