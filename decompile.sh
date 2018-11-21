#!/bin/bash
apkFile=$1
jarFile=$apkFile.jar
echo "$apkFile"
echo "$jarFile"
echo .........apktool..........

cd $(dirname $apkFile)
java -jar tools/apktool/apktool_2.0.3.jar if tools/apktool/framework-res.apk
java -jar "tools/apktool/apktool_2.0.3.jar" d -d -f "$apkFile"
echo .........dex2jar..........
sh tools/dex2jar/d2j-dex2jar.sh -f "$apkFile" -o "$jarFile"
echo .........jd-gui...........
java -jar tools/jd-gui/jd-gui-1.4.0.jar "$jarFile"
