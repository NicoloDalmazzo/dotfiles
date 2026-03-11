#!/bin/bash

count=$(hyprctl monitors -j | jq 'length') 


if [ "$1" -le 5 ]; then
    workspace_hdmi=$(($1+5))
    if [ "$count" -eq 1 ]; then
        hyprctl dispatch workspace $1
    else
        hyprctl dispatch workspace $1
        hyprctl dispatch workspace $workspace_hdmi
    fi
fi



