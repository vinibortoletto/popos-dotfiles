## Install Github CLI
```
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y
```
```
gh auth login
```
## Add password feedback to terminal

```
cd /etc/ 
sudo -s
EDITOR=nano visudo

// Update line
env_reset,pwfeedback
```


## Fix audio 
```
sudo apt reinstall pipewire pipewire-pulse
```
```
systemctl --user --now enable pipewire pipewire-pulse
```
```
reboot
```

##
Add ZSH to Intellij terminal (flatpak version):
```
flatpak-spawn --host --env=TERM=xterm-256color zsh
```

## Make Alt key act as Super and vice verse
- Install Gnome Tweaks
- In Keyboard & Mouse, go to Additional Layout Options
- Select: Alt and Win Behavior > Left Alt is swapped with left Win
# popos-dotfiles
