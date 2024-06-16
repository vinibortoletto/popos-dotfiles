echo_doing 'Configuring Pop Shell settings'

# Set active hint
gsettings set org.gnome.shell.extensions.pop-shell active-hint true

# Hide window title
gsettings set org.gnome.shell.extensions.pop-shell show-title false

# Activate tiling mode
xdotool key super+y

# Copy custom Pop theme
sudo cp ./themes/dark.css /usr/share/gnome-shell/extensions/pop-shell@system76.com

echo_done
