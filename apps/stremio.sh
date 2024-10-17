echo_doing 'Installing Stremio'

flatpak install -y com.stremio.Stremio

# Sets qBittorrent as default torrent handler
gio mime x-scheme-handler/magnet org.qbittorrent.qBittorrent.desktop
gio mime application/x-bittorrent org.qbittorrent.qBittorrent.desktop

echo_done
