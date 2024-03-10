import haxe.crypto.Sha256;
import haxe.Template;
import sys.io.File;
import sys.FileSystem;

class Build {
    static function win32Url(version:String)
        return 'https://github.com/HaxeFoundation/haxe/releases/download/$version/haxe-$version-win.zip';
    static function win64Url(version:String)
        return 'https://github.com/HaxeFoundation/haxe/releases/download/$version/haxe-$version-win64.zip';

    static function cmd(cmd:String, args:Array<String>):Void {
        switch (Sys.command(cmd, args)) {
            case 0:
                //pass
            case r:
                throw 'Command failed: $cmd ${args.join(" ")}';
        }
    }

    static function downloadBinaries(version:String):{
        path32:String,
        path64:String,
    } {
        final path32 = 'haxe-$version-win.zip';
        final path64 = 'haxe-$version-win64.zip';
        if (FileSystem.exists(path32)) {
            Sys.println('File $path32 already exists, skipping download.');
        } else {
            cmd("curl", ["-fsSL", win32Url(version), "-o", path32]);
        }
        if (FileSystem.exists(path64)) {
            Sys.println('File $path64 already exists, skipping download.');
        } else {
            cmd("curl", ["-fsSL", win64Url(version), "-o", path64]);
        }
        return {
            path32: path32,
            path64: path64,
        };
    }

    static function checksum(path:String):String {
        return Sha256.make(File.getBytes(path)).toHex();
    }

    static function writeInstallScript(version:String, checksum32:String, checksum64:String):Void {
        final tmpl = new Template(File.getContent("template/chocolateyInstall.ps1"));
        File.saveContent("chocolateyInstall.ps1", tmpl.execute({
            version: version,
            checksum32: checksum32,
            checksum64: checksum64,
        }));
    }

    static function writeNuSpec(version:String):Void {
        final tmpl = new Template(File.getContent("template/haxe.nuspec"));
        File.saveContent("haxe.nuspec", tmpl.execute({
            version: version,
        }));
    }

    static function extractLicense(zipPath:String):Void {
        final zip = new format.zip.Reader(File.read(zipPath, true));
        final entries = zip.read();
        for (entry in entries) {
            switch entry.fileName.split("/") {
                case [_, "LICENSE.txt"]:
                    format.zip.Tools.uncompress(entry);
                    File.saveBytes("LICENSE.txt", entry.data);
                    return;
                case _:
                    // pass
            }
        }
        throw 'LICENSE.txt not found in $zipPath';
    }

    static function main():Void {
        switch (Sys.args()) {
            case []:
                throw "No version parameter was passed in.";
            case [version]:
                Sys.println('Downloading Haxe $version');
                final bins = downloadBinaries(version);
                Sys.println('Checksum ${bins.path32}: ${checksum(bins.path32)}');
                Sys.println('Checksum ${bins.path64}: ${checksum(bins.path64)}');
                Sys.println('Extracting LICENSE.txt');
                extractLicense(bins.path64);
                Sys.println('Writing chocolateyInstall.ps1');
                writeInstallScript(version, checksum(bins.path32), checksum(bins.path64));
                Sys.println('Writing haxe.nuspec');
                writeNuSpec(version);
                Sys.println('Done. Run `choco pack` to create the package.');
        }
    }
}