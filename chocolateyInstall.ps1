$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-4.2.1-win.zip" `
    -Checksum '5987dd1b11823a4754f3cc638ebd0febbc7d39c4372f610cd16dc5f56ec9d215' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-4.2.1-win64.zip" `
    -Checksum64 '68caf3d86f6e707a0f0a655a9bc367a8489233f08daafb90945d2b195090f307' `
    -ChecksumType64 'sha256'
