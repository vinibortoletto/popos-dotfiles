echo_doing 'Configuring Gnome settings'

# Set workspace only on primary monitor
gsettings set org.gnome.mutter workspaces-only-on-primary true

# Remove Gnome animations
gsettings set org.gnome.desktop.interface enable-animations false

# Set focus on hover
gsettings set org.gnome.desktop.wm.preferences focus-mode mouse

# Set background
gsettings set org.gnome.desktop.background picture-uri file:///home/$USER/Pictures/backgrounds/pexels-pixabay-458983.jpg
gsettings set org.gnome.desktop.background picture-uri-dark file:///home/$USER/Pictures/backgrounds/pexels-pixabay-458983.jpg

# Swap Win key with Alt key
gsettings set org.gnome.desktop.input-sources xkb-options "['altwin:swap_alt_win']"

# Enable night light
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 3700
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-from 6.0
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-to 6.0

# Disable left control pointer location
gsettings set org.gnome.desktop.interface locate-pointer false

echo_done
