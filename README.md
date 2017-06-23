# uwp_bridge_java
Skeleton for packing Java applications for publishing them on Windows Store

# Background

Every desktop application converted using the Desktop App Converter is placed in a directory with some extra files and an **AppxManifest.xml** which describe its content.

This project is the result of running the Desktop App Converter to obtain a runnable Java application on Windows Store. Also it includes an executable made with launch4j to run the included java application.

# Quick Start

This project includes the example included with the JDK called SwingSet2. Follow these intructions to pack SwingeSet2 as a Windows 10 Application.

1. Download the latest Java JRE for Windows in TAR format from: http://www.oracle.com/technetwork/java/javase/downloads/index.html the file name is like: **jre-8u131-windows-x64.tar.gz**
