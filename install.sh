#!/bin/bash

# Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

for helper in ./helpers/*.sh; do source $helper; done

echo_doing 'Installing Nala'
sudo apt install nala -y
sudo nala fetch -y
echo_done

echo_doing 'Updating system'
sudo nala upgrade -y
echo_done

for app in ./apps/*.sh; do source $app; done

echo_doing 'Updating installed apps'
sudo nala upgrade -y
echo_done

for setting in ./settings/*.sh; do source $setting; done

echo_doing 'Finishing settings up'
cp -r backgrounds ~/Pictures
cp -r fonts/ dictionaries/ ~/.local/share

echo_done
