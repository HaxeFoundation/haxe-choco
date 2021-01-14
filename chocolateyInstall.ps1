$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-4.1.5-win.zip" `
    -Checksum 'fc9f10e32a36cb7274283d6f8cc4953e1bbaf3f5a18a53bce633280b13481834' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-4.1.5-win64.zip" `
    -Checksum64 'ce4134cdf49814f8f8694648408d006116bd171b957a37be74c79cf403db9633' `
    -ChecksumType64 'sha256'
