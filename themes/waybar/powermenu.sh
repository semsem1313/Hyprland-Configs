#!/bin/bash

# Toggle behavior
if pgrep -x wofi > /dev/null; then
    pkill wofi
    exit 0
fi

printf "󰐥  Shutdown\n󰜉  Reboot\n󰤄  Sleep" | \
wofi --dmenu \
     --width 220 \
     --height 170 \
     --location 1 \
     --xoffset 10 \
     --yoffset 15 \
     --prompt "" \
     --style ~/.config/wofi/style.css | while read -r choice; do

    case "$choice" in
        *Shutdown) systemctl poweroff ;;
        *Reboot) systemctl reboot ;;
        *Sleep) systemctl suspend ;;
    esac

done
