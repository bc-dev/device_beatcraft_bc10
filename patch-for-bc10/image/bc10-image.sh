#!/bin/bash
cd ${HOME}/bc10
cd out/target/product/bc10/
pwd
echo "Make directory for android rootfilesystem"
mkdir -p bc10-image
pwd
echo "copy android-root"
cp -afr root/* bc10-image/
echo "copy android-system"
cp -afr system/* bc10-image/system/
echo "change permission and owner"
chmod 777 -R bc10-image/system/usr/keychars
chmod 777 -R bc10-image/system/usr/keylayout
sudo chown -R root.root bc10-image/
sudo chmod -R 777 bc10-image/

