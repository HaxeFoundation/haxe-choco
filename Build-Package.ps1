param ([string] $version, [string] $output)
$ErrorActionPreference = "Stop"

If ( $version -eq "" ) {
	Write-Error "No version parameter was passed in."
	Exit 1
}

$SOURCE = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
If ( $output -eq "" ) {
	$output = "$SOURCE\out"
}

$file32 = "haxe-$version-win.zip"
$file64 = "haxe-$version-win64.zip"

Function Clear-Output {
	If ( Test-Path -Path $OUTPUT) {
		Get-ChildItem -Path $OUTPUT -File | foreach { $_.Delete()} # delete all contents
	} Else {
		New-Item -Path $OUTPUT -ItemType "directory" -Force > $null # Create empty
	}
}

Function Copy-File {
	param ([string] $file)
	Write-Host "Copying $file"
	Copy-Item $file $OUTPUT
}

Function Copy-Binaries {
	# Copy over zipped up binaries
	ForEach ($file in @("$SOURCE\$file32", "$SOURCE\$file64")) {
		If ( ! (Test-Path -Path $file -PathType Leaf) ) {
			Write-Error "File $file missing"
			Exit 2
		}
		Copy-File $file
	}
}

Function Write-InstallScript {
	# Generate install script
	Write-Host "Generating install script"

	# Load template
	$template = (Get-Content -Path "$SOURCE\chocolateyInstall.ps1" -Raw)

	# Get checksums
	$checksum32 = (Get-FileHash $OUTPUT\$file32).Hash.ToLower()
	$checksum64 = (Get-FileHash $OUTPUT\$file64).Hash.ToLower()

	$setVariables = @"
`$version = "$version"
`$checksum32 = "$checksum32"
`$checksum64 = "$checksum64"
"@

	# Generate install script with correct variable values
	$installScript = $template ` -Replace '::SET_VARIABLES::', $setVariables

	Out-File -FilePath "$OUTPUT\chocolateyInstall.ps1" -InputObject $installScript -NoNewline
}

Function Write-NuSpec {
	# Generate haxe.nuspec file
	$nuspec = (Get-Content -Path "$SOURCE\haxe.nuspec" -Raw) -Replace '::VERSION::', $version
	Out-File -FilePath "$OUTPUT\haxe.nuspec" -InputObject $nuspec -NoNewLine
}

Function Copy-Remaining {
	# Copy over general files
	$toCopy = @("$SOURCE\LICENSE.txt", "$SOURCE\VERIFICATION.txt")

	ForEach ($item in $toCopy) {
		Copy-File $item
	}
}

Clear-Output
Copy-Binaries
Write-InstallScript
Write-NuSpec
Copy-Remaining
