#!/bin/bash

echo 
echo "Executing 'git submodule update --init'"
echo 
git submodule update --init

echo 
echo "Executing 'applyPatches.sh'"
echo 
./applyPatches.sh

echo 
echo "Executing 'mvn -U clean install'"
echo 
mvn -U clean install

echo 
echo "Moving and renaming final server file"
echo 
mv PaperSpigot-Server/target/paperspigot-1.7.10-R0.1-SNAPSHOT.jar paper-1.7.10.jar

echo 
echo "Done! Copy 'paper-1.7.10.jar' and have fun!"
echo 