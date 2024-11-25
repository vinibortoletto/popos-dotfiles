echo_doing 'Removing default apps'

sudo apt purge -y 
	firefox \
	geary \
	eog \
	totem \
	pop-shop 

rm -rf ~/.mozilla
rm -rf ~/.cache/mozilla

echo_done



echo_doing 'Removing Libre Office'

sudo apt purge -y libreoffice-core libreoffice-common

echo_done

