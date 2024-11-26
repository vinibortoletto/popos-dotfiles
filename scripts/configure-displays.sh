#!/bin/bash

sudo cp ./scripts/configure-displays.service /etc/systemd/system

sudo systemctl daemon-reload
sudo systemctl enable configure-displays.service 
sudo systemctl start configure-displays.service
