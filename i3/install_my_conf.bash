#!/bin//bash

if (( $EUID != 0 )); then
    echo "Please run with sudo"
    exit 1
fi

# install i3-lock fancy
cd /tmp
git clone https://github.com/meskarune/i3lock-fancy.git
cd i3lock-fancy
sudo make install

# install for clementines remote
sudo apt-get install clementine qdbus

# for rofi
echo "Go to https://github.com/davatorium/rofi to install rofi"

# amixer
sudo apt install alsa-utils

chmod +x clementine-remote
chmod +x i3exit
chmod +x inverse_scroll.sh
chmod +x my_new_status
chmod +x rofi-web
chmod +x swap_workspaces
chmod +x tap_to_click.sh
chmod +x volumecontrol

cp -f clementine-remote /usr/bin/
cp -f clementi i3exit /usr/bin/
cp -f clementi inverse_scroll.sh /usr/bin/
cp -f clementi my_new_status /usr/bin/
cp -f clementi rofi-web /usr/bin/
cp -f clementi swap_workspaces /usr/bin/
cp -f clementi tap_to_click.sh /usr/bin/
cp -f clementi volumecontrol /usr/bin/

mkdir -p ~/.config/i3
cp -f ./config ~/.config/i3/


