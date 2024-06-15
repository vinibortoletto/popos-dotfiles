#!/bin/bash
source ~/Code/pop_os_config/.functions.sh

echo_doing 'Updating apt'
sudo nala upgrade -y
echo_done

echo_doing 'Updating flatpak'
flatpak upgrade -y
echo_done

echo_doing 'Cleaning dependencies'
sudo nala autoremove -y
sudo nala autopurge -y
sudo nala clean
echo_done

echo_doing 'Settings PopOs CSS'
sudo cp system-theme/dark.css /usr/share/gnome-shell/extensions/pop-shell@system76.com
echo_done
