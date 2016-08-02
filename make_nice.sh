#!bin/bash
projectName=${PWD##*/}

echo $projectName

if [[ -a $projectName.xcodeproj ]]
then

mkdir prj
mkdir res
mkdir inc
mkdir src

mv $projectName.xcodeproj ./prj
mv ./$projectName/Info.plist ./prj
mv ./$projectName/main.m ./prj
mv ./$projectName/AppDelegate.h ./inc
mv ./$projectName/AppDelegate.m ./src
mv ./$projectName/Assets.xcassets ./res
mv ./$projectName/Base.lproj ./res
mv ./$projectName/*.h ./inc
mv ./$projectName/*.m ./src
mv ./*.h ./inc
mv ./*.m ./src
mv ./$projectName/*.png ./res
mv ./$projectName/*.gif ./res
mv ./$projectName/*.jpeg ./res
mv ./*.png ./res
mv ./*.gif ./res
mv ./*.jpeg ./res


else
exit 0
fi
