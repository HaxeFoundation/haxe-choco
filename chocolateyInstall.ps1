$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-4.2.2-win.zip" `
    -Checksum 'dbe5ff4529e4b140f719e981807821a6c4e9f08006711009a10070ecbe3c602a' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-4.2.2-win64.zip" `
    -Checksum64 'c7c97b48009d0390f614c82771a93488b38037892b674836d44b4c030166a4dc' `
    -ChecksumType64 'sha256'
