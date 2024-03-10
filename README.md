# Haxe Chocolatey Packaging

## Update script

This repository contains a script that can be used to update the chocolatey package files.

Example usage:

```powershell
# compile the build script
haxe build.hxml

# run it with an argument of the Haxe version to be packaged
neko build.n 4.2.5

# build the chocolatey package
choco pack

# test install the package
choco install haxe --version 4.2.5 --source .

# upload the package
choco push
```
