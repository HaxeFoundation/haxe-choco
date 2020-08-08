$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-4.1.3-win.zip" `
    -Checksum 'd13b321cde43c43f6db825fa40e7f8d612a13e0f8f93e4daf5e02df2e7f86292' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-4.1.3-win64.zip" `
    -Checksum64 '547edd2478e5fc17eddbcc473c3ecf84743a20bfd630cb61148c538e179f4a71' `
    -ChecksumType64 'sha256'
