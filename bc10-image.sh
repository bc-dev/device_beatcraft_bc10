#!/bin/bash
cd ${HOME}/bc10
cd out/target/product/bc10
pwd
echo "mkdir android for android-rfs"
mkdir -p android
pwd
cd ${HOME}/bc10
echo "copy android-root"
cp -afr out/target/product/bc10/root/* out/target/product/bc10/android/
echo "copy android-system"
cp -afr out/target/product/bc10/system/* out/target/product/bc10/android/system/
echo "change permission and owner"
chmod 777 -R out/target/product/bc10/android/system/usr/keychars
chmod 777 -R out/target/product/bc10/android/system/usr/keylayout
sudo chown -R root.root out/target/product/bc10/android/
sudo chmod -R 777 out/target/product/bc10/android/

