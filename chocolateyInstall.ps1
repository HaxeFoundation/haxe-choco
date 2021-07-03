$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-4.2.3-win.zip" `
    -Checksum '1ed146e231dca8607f51da2ef9ad179e759bb7e2c3231ffb09cafaa236c80a78' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-4.2.3-win64.zip" `
    -Checksum64 '6a5b19f6fa9f46c42c4df9f154b02d55cbacf0cc76ea5a03906cfd8300216a32' `
    -ChecksumType64 'sha256'
