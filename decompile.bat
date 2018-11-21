@echo off

set apkFile=%1
set jarFile=%apkFile%.jar

cd /d %apkFile%\..

echo .........apktool..........
java -jar "tools\apktool\apktool-2.0.3.jar" if "tools\apktool\framework-res.apk"
java -jar "tools\apktool\apktool-2.0.3.jar" d -d -f "%apkFile%"
echo .........dex2jar..........
call tools\dex2jar\d2j-dex2jar -f "%apkFile%" -o "%jarFile%"
echo .........jd-gui...........
call tools\jd-gui\jd-gui "%jarFile%"