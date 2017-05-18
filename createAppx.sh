#! /bin/bash

export WINDOWSSDK="/mnt/c/Program Files (x86)/Windows Kits/10/bin/10.0.15063.0/x64"

#Make appx
"${WINDOWSSDK}/makeappx.exe" pack  /d PackageFiles /p SwingSet.appx /o /v /l

#Sign
"${WINDOWSSDK}/signtool.exe" sign /a /fd SHA256 /f auto-generated.pfx /p 123456  SwingSet.appx
