$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
    -PackageName 'haxe' `
    -UnzipLocation "$packDir" `
    -Url "$packDir\haxe-*-win.zip" `
    -Checksum 'd98b0f0e5c5bb000e9b9e99817c45af362658c9273e66ce5cb52359e6ade15a6' `
    -ChecksumType 'sha256' `
    -Url64bit "$packDir\haxe-*-win64.zip" `
    -Checksum64 '609acdcb58a2253e357487d495ffe19e9034165f3102f8716ca968afbee8f1b2' `
    -ChecksumType64 'sha256'
