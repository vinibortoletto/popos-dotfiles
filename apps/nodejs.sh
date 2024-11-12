echo_doing 'Installing Nodejs and NPM'

curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs npm

echo_done
