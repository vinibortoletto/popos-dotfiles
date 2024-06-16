#!/bin/bash

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

echo_doing 'Finishing settings up'
cp -r backgrounds ~/Pictures
cp -r fonts/ dictionaries/ ~/.local/share

# Set workspace only on primary monitor
gsettings set org.gnome.mutter workspaces-only-on-primary true

# Remove Gnome animations
gsettings set org.gnome.desktop.interface enable-animations false

echo_done
