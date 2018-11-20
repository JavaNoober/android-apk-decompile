#!/bin/bash
apkFile=$1
jarFile=$apkFile.jar
echo "$apkFile"
echo "$jarFile"
echo .........apktool..........
java -jar /Users/xiaoqi/Desktop/mac/onekey-decompile-apk-1.0.1/onekey-decompile-apk/_tools/apktool/apktool_2.0.3.jar if /Users/xiaoqi/Desktop/mac/onekey-decompile-apk-1.0.1/onekey-decompile-apk/_tools/apktool/framework-res.apk
java -jar "/Users/xiaoqi/Desktop/mac/onekey-decompile-apk-1.0.1/onekey-decompile-apk/_tools/apktool/apktool_2.0.3.jar" d -d -f "$apkFile"
echo .........dex2jar..........
sh /Users/xiaoqi/Desktop/mac/onekey-decompile-apk-1.0.1/onekey-decompile-apk/_tools/dex2jar/d2j-dex2jar.sh -f "$apkFile" -o "$jarFile"
echo .........jd-gui...........
java -jar /Users/xiaoqi/Desktop/mac/onekey-decompile-apk-1.0.1/onekey-decompile-apk/_tools/jd-gui/jd-gui-1.4.0.jar "$jarFile"
