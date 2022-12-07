#!/usr/bin/env zsh

echo "\n<<< External Apps Setup >>>\n"

echo "\n< Installing Logitech Options+ >\n"

curl -O https://download01.logi.com/web/ftp/pub/techsupport/optionsplus/logioptionsplus_installer.zip --output-dir ~/Downloads

cd ~/Downloads && unzip -q logioptionsplus_installer.zip && open logioptionsplus_installer.app

echo "Finish setting up the application. Press \033[1mANY KEY\033[0m to continue."
read -k1 -s

echo "Uninstalling the intaller and all files related to it"
rm -rf __MACOSX logioptionsplus_installer.zip logioptionsplus_installer.app


echo "\n<<< External Apps Setup Complete >>>\n"
