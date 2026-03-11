#! /usr/bin/env bash

if [ "$1"  = "hyprpaper" ]; then  
    killall hyprpaper
    hyprpaper &
fi

if [ "$1" = "hypridle" ]; then
    if [ "$2" = "active" ]; then
        notify-send "Idle mode activated"
        killall hypridle
        hypridle &
    fi
    if [ "$2" = "disactive" ]; then
        notify-send "Idle mode disactivated"
        killall hypridle
    fi
fi
