#!/usr/bin/env zsh
ID=$(yabai -m query --windows | jq -c -r '.[] | (.id|tostring) + " - " + .app + " - " + .title' | choose | cut -f 1 -d ' ')
yabai -m window --focus "$ID"
