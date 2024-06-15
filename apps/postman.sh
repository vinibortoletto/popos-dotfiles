echo_doing 'Installing Postman'

flatpak install -y com.getpostman.Postman
mkdir -p ~/.var/app/com.getpostman.Postman/config/Postman/proxy
openssl req -subj '/C=US/CN=Postman Proxy' -new -newkey rsa:2048 -sha256 -days 365 -nodes -x509 -keyout ~/.var/app/com.getpostman.Postman/config/Postman/proxy/postman-proxy-ca.key -out ~/.var/app/com.getpostman.Postman/config/Postman/proxy/postman-proxy-ca.crt

echo_done
