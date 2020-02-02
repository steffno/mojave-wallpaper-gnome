#!/bin/bash
echo "Installing Mojave animated wallpaper..."
mkdir /home/($USER)/.mojave
sed -i "s@\$USER@$USER@" mojave.xml
mv mojave.xml /home/($USER)/.mojave/mojave.xml
mv wallpapers /home/($USER)/.mojave/wallpapers
gsettings set org.gnome.desktop.background picture-uri "file:/home/($USER)/.mojave/mojave.xml"
echo "Done!"
