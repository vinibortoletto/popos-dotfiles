echo_doing 'Removing Firefox'

sudo apt purge firefox -y
rm -rf ~/.mozilla
rm -rf ~/.cache/mozilla

echo_done
