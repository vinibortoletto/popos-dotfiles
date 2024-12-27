echo_doing 'Removing default apps'

sudo apt purge -y \
	firefox \
	geary \
	eog \
	totem \
	pop-shop \
	libreoffice-core \
	libreoffice-common

rm -rf ~/.mozilla
rm -rf ~/.cache/mozilla

echo_done

