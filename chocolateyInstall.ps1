$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-4.1.2-win.zip" `
    -Checksum '7fcfd146afdadaac61ae2f89eb89e39913b0b921db748c47d48930f339e266ee' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-4.1.2-win64.zip" `
    -Checksum64 'a75a685f7ab975fa4749ba990e8aeb395403ab2e977ffecfe5321fc9c6c7000b' `
    -ChecksumType64 'sha256'
