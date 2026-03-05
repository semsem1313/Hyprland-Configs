#!/bin/bash

chosen=$(printf "󰐥 Shutdown\n󰜉 Reboot\n󰤄 Sleep" | wofi --dmenu --width 200 --height 200)

case "$chosen" in
    *Shutdown) systemctl poweroff ;;
    *Reboot) systemctl reboot ;;
    *Sleep) systemctl suspend ;;
esac
