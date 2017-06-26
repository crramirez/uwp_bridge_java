# uwp_bridge_java
Skeleton for packing Java applications for publishing them on Windows Store

# Background

Every desktop application converted using the Desktop App Converter is placed in a directory with some extra files and an **AppxManifest.xml** which describe its content.

This project is the result of running the Desktop App Converter to obtain a runnable Java application on Windows Store. Also it includes an executable made with launch4j to run the included java application. 

You won't have to run the Desktop App Converter. Also you don't need to have an installer for your Java application.

# Quick Start

This project includes the example included with the JDK called SwingSet2. Follow these intructions to pack SwingeSet2 as a Windows 10 Application.

1. Download the latest Java JRE for Windows in TAR format from: http://www.oracle.com/technetwork/java/javase/downloads/index.html the file name is like: **jre-8u131-windows-x64.tar.gz** put it in the project folder.
2. Download and install (If you don't have it already) the latest Windows 10 SDK.
3. If you have Cygwin or Windows Subsystem for Linux (WSL) you can run one of the two scripts included: **createAppx-cyg.sh** or **createAppx.sh** respectively. First change the environment variable **WINDOWSSDK** with the installation path of your SDK.
4. If you don't want or can't run the script, do the following steps.
5. Expand the **jre-8u###-windows-x64.tar.gz** in the **PackageFiles** subdirectory and rename the resulting folder to **jre**
6. 
