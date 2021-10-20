#!/usr/bin/env zsh
ID=$(yabai -m query --windows | jq -c -r '.[] | (.id|tostring) + " - " + .app + " - " + .title' | choose | cut -f 1 -d ' ')
current_id=$(yabai -m query --windows | jq '.[] | select(.focused ==1).id')
yabai -m window "$ID" --warp "${current_id}"
