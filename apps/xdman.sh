echo_doing 'Installing Xtreme Download Manager'

FILE="xdman_gtk_8.0.25_amd64.deb""
URL="https://github.com/subhra74/xdm-experimental-binaries/releases/download/8.0.25-beta/xdman_gtk_8.0.25_amd64.deb"

wget -O "$FILE" "$URL"
sudo dpkg -i "$FILE"
rm "$FILE"

echo_done


