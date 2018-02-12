#! /bin/bash

cd "$(dirname "$0")"

if [ ! -e PackageFiles/jre ]; then
    tar -xvzf jre-8u*-windows-x64.tar.gz
    mv jre1.8.* PackageFiles/jre
fi

export WINDOWSSDK="/mnt/c/Program Files (x86)/Windows Kits/10/bin/10.0.15063.0/x64"

#Make appx
"${WINDOWSSDK}/makeappx.exe" pack  /d PackageFiles /p SwingSet.appx /o /v /l

#Sign
"${WINDOWSSDK}/signtool.exe" sign /a /fd SHA256 /f auto-generated.pfx /p 123456  SwingSet.appx
