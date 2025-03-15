echo_doing 'Installing Rune Lite'

curl -fSsL https://raw.githubusercontent.com/USA-RedDragon/jagex-launcher-linux-flatpak/main/install.sh | bash
flatpak install --user JagexLauncher com.jagex.Launcher.ThirdParty.RuneLite

echo_done
