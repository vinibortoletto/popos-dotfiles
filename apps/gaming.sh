if [ "$installation_type" == "Desktop" ]; then
	echo_doing 'Installing Steam'
	flatpak install com.valvesoftware.Steam -y
	sudo nala install steam-devices -y
	echo_done

	echo_doing 'Installing PCSX2'
	flatpak install pcsx2 -y
	echo_done

	echo_doing 'Installing Duckstation'
	flatpak install duckstation -y
	echo_done

	echo_doing 'Installing Bottles'
	flatpak install -y com.usebottles.bottles
	echo_done
fi
