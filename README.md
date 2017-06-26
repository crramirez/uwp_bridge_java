# uwp_bridge_java
Skeleton for packing Java applications for publishing them on Windows Store

# Background

Every desktop application converted using the Desktop App Converter is placed in a directory with some extra files and an **AppxManifest.xml** which describe its content.

This project is the result of running the Desktop App Converter to obtain a runnable Java application on Windows Store. Also it includes an executable made with launch4j to run the included java application. 

You won't have to run the Desktop App Converter. Also you don't need to have an installer for your Java application.

This project and the following steps are completely based on this documentation: https://docs.microsoft.com/en-us/windows/uwp/porting/. Please read it and if you have any doubt about the material in this page go there.

# Quick Start

This project includes the example included with the JDK called SwingSet2. Follow these intructions to pack SwingeSet2 as a Windows 10 Application.

1. Download the latest Java JRE for Windows in TAR format from: http://www.oracle.com/technetwork/java/javase/downloads/index.html the file name is like: **jre-8u131-windows-x64.tar.gz** put it in the project folder.
2. Download and install (If you don't have it already) the latest Windows 10 SDK.
3. If you have Cygwin or Windows Subsystem for Linux (WSL) you can run one of the two scripts included: **createAppx-cyg.sh** or **createAppx.sh** respectively. First change the environment variable **WINDOWSSDK** with the installation path of your SDK.
4. If you don't want or can't run the script, do the following steps.
5. Expand the **jre-8u###-windows-x64.tar.gz** in the **PackageFiles** subdirectory and rename the resulting folder to **jre**
6. Call _yourwindows10sdkhome_\ `makeappx.exe" pack  /d PackageFiles /p SwingSet.appx /o /v /l`
7. Call _yourwindows10sdkhome_\ `signtool.exe" sign /a /fd SHA256 /f auto-generated.pfx /p 123456  SwingSet.appx`

If someone can contribute with a .bat or powershell script whould be greatly appreciated.
## Run the resulting package
1. Double-click the **auto-generated.cer** file to install the certificate.

![alt text](https://docs.microsoft.com/en-us/windows/uwp/porting/images/desktop-to-uwp/generated-cert-file.png "Cert file")

2. In the **Certificate** dialog box, choose the **Install Certificate** button.
3. In the **Certificate Import Wizard**, install the certificate onto the **Local Machine**, and place the certificate into the **Trusted People** certificate store.

![alt text](https://docs.microsoft.com/en-us/windows/uwp/porting/images/desktop-to-uwp/trusted-people-store.png "Trusted People Store")

4. In root folder of the packaged app, double click the Windows app package file (SwingSet.appx).
5. Install the app, by choosing the Install button.

![alt text](https://docs.microsoft.com/en-us/windows/uwp/porting/images/desktop-to-uwp/install.png "Install button")

# Pack your own application

_In progress_

