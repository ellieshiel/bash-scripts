#!/bin/bash

cd ~/Desktop

# get image from site
curl -O https://web.whatsapp.com/desktop/mac/files/WhatsApp.dmg

# mount image
hdiutil attach WhatsApp.dmg

# copy app, remove old version first if installed
if [[ -d /Applications/WhatsApp.app ]]; then
    sudo rm -rf /Applications/WhatsApp.app
fi
sudo cp -r /Volumes/WhatsApp\ Installer/WhatsApp.app  /Applications/WhatsApp.app

# unmount and remove image
hdiutil detach /Volumes/WhatsApp\ Installer
mv WhatsApp.dmg ~/.Trash/
