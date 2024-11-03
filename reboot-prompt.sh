#! /bin/bash

read -p "Do you want to reboot the system? [Y/n]: " response

response=${response:-y}
response=$(echo "$response" | tr '[:upper:]' '[:lower:]')

if [[ "$response" == "y" ]]; then
    reboot
else
    echo "Reboot canceled."
fi
