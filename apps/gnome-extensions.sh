echo_doing 'Installing Gnome Extensions'

sudo nala install -y gnome-shell-extension-manager pipx
pipx install gnome-extensions-cli --system-site-packages

gext install just-perfection-desktop@just-perfection
gext install space-bar@luchrioh
gext install vitals@CoreCoding.com

echo_done
