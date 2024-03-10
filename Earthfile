VERSION 0.8
FROM ubuntu:jammy

haxe-win.zip:
    FROM curlimages/curl:7.85.0
    WORKDIR /tmp
    ARG --required HAXE_VERSION
    RUN curl -fsSLO "https://github.com/HaxeFoundation/haxe/releases/download/${HAXE_VERSION}/haxe-${HAXE_VERSION}-win.zip"
    SAVE ARTIFACT "haxe-${HAXE_VERSION}-win.zip" AS LOCAL .

haxe-win64.zip:
    FROM curlimages/curl:7.85.0
    WORKDIR /tmp
    ARG --required HAXE_VERSION
    RUN curl -fsSLO "https://github.com/HaxeFoundation/haxe/releases/download/${HAXE_VERSION}/haxe-${HAXE_VERSION}-win64.zip"
    SAVE ARTIFACT "haxe-${HAXE_VERSION}-win64.zip" AS LOCAL .

haxe-archives:
    ARG --required HAXE_VERSION
    BUILD --pass-args +haxe-win.zip
    BUILD --pass-args +haxe-win64.zip

build.n:
    FROM haxe:4.3.4-alpine
    COPY src src
    COPY build.hxml .
    RUN haxelib install build.hxml --always --quiet
    RUN haxe build.hxml
    SAVE ARTIFACT build.n AS LOCAL .

build:
    FROM +build.n
    ARG --required HAXE_VERSION
    COPY --pass-args +haxe-win.zip/* +haxe-win64.zip/* .
    COPY template template
    RUN neko build.n "$HAXE_VERSION"
    SAVE ARTIFACT chocolateyInstall.ps1 AS LOCAL .
    SAVE ARTIFACT haxe.nuspec AS LOCAL .
    SAVE ARTIFACT haxe-*.zip AS LOCAL .
    SAVE ARTIFACT LICENSE.txt AS LOCAL .
