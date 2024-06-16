echo_doing 'Installing Stremio'

flatpak install -y com.stremio.Stremio
gio mime x-scheme-handler/magnet org.qbittorrent.qBittorrent.desktop

echo_done
