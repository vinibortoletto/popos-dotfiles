echo_doing 'Configuring Gnome settings'

# Set workspace only on primary monitor
gsettings set org.gnome.mutter workspaces-only-on-primary true

# Remove Gnome animations
gsettings set org.gnome.desktop.interface enable-animations false

# Set focus on hover
gsettings set org.gnome.desktop.wm.preferences focus-mode mouse

# Set background
gsettings set org.gnome.desktop.background picture-uri file:///home/vini/Pictures/backgrounds/conscious-design-mpRtviiLfMk-unsplash.jpg
gsettings set org.gnome.desktop.background picture-uri-dark file:///home/vini/Pictures/backgrounds/conscious-design-mpRtviiLfMk-unsplash.jpg

echo_done
