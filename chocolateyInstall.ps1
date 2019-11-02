$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-*-win.zip" `
    -Checksum '8bdf805a4d26c63664a4f6ba765b5bd72ad06c7566f8e465654b5f1330c29883' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-*-win64.zip" `
    -Checksum64 '68e3d4cb8ebb881ed52b574901a75b8190112e5a9b1370c45d7a8ab37df83498' `
    -ChecksumType64 'sha256'
