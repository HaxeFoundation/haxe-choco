$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-4.1.1-win.zip" `
    -Checksum '2347658c6d542742ab0f218d3cf3a662879784298e3cb6037984cef3794f286d' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-4.1.1-win64.zip" `
    -Checksum64 '427298eb0ff442854075cc73e210818371a4b4a090172687e3ae436f5ad89281' `
    -ChecksumType64 'sha256'
