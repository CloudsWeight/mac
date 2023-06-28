#!/bin/sh

cp kali-logos/* /usr/share/kali-logos/

unzip apple-mac-plymouth.zip

mv apple-mac-plymouth macOS

cp -r macOS /usr/share/plymouth/themes/.  

echo "Checking if theme copied"

plymouth-set-default-theme -l
# -R flag rebuilds initrd
plymouth-set-default-theme -R macOS

echo "If there are no errors please reboot when you can"


