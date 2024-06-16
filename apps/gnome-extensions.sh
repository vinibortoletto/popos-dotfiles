echo_doing 'Installing Gnome Extensions'

sudo nala install -y gnome-shell-extension-manager pipx
pipx install gnome-extensions-cli --system-site-packages
pipx ensurepath
source ~/.bashrc

gext install just-perfection-desktop@just-perfection
gext install space-bar@luchrioh
gext install vitals@CoreCoding.com

# Vitals dependencies
sudo nala install -y gir1.2-gtop-2.0 lm-sensors

# Compile gsettings schemas in order to be able to set them
sudo cp ~/.local/share/gnome-shell/extensions/just-perfection-desktop\@just-perfection/schemas/org.gnome.shell.extensions.just-perfection.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/space-bar\@luchrioh/schemas/org.gnome.shell.extensions.space-bar.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/Vitals@CoreCoding.com/schemas/org.gnome.shell.extensions.vitals.gschema.xml /usr/share/glib-2.0/schemas/ 
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

# Just Perfection settings
gsettings set org.gnome.shell.extensions.just-perfection top-panel-position 1
gsettings set org.gnome.shell.extensions.just-perfection clock-menu-position 1
gsettings set org.gnome.shell.extensions.just-perfection clock-menu-position-offset 20
gsettings set org.gnome.shell.extensions.just-perfection notification-banner-position 5

# Vitals settings
gsettings set org.gnome.shell.extensions.vitals position-in-panel 0

echo_done
