#!/bin/bash

song=$(playerctl -p spotify metadata --format "  {{title}}" 2>/dev/null)

if [ -n "$song" ]; then
    echo "$song"
fi
