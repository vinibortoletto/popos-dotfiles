#!/bin/bash

# Set resolution for HDMI-0
xrandr --output HDMI-0 --mode 1600x900 --rate 60.00 --pos 0x0

# Set resolution for HDMI-1 (primary display)
xrandr --output HDMI-1 --primary --mode 1920x1080 --rate 75.00 --pos 1600x0
