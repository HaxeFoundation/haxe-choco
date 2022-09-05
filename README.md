# Haxe Chocolatey Packaging Scripts

This repository contains a script that can be used to generate the chocolatey package for Haxe.

The `Build-Package.ps1` script should be run in powershell to generate the package.

Example usage:

```powershell
.\Build-Package -Version 4.2.4 # builds the package contents in the .\out directory
.\Build-Package -Version 4.2.4 -Output C:\some\path # builds them into the specified directory
```

This prepares the package contents in the output directory, which can then be packaged by doing:

```powershell
cd .\out # or wherever the output is
choco pack
```
