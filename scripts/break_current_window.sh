#!/usr/bin/env zsh
set -x
CURRENT_WINDOW=$(yabai -m query --windows | jq '.[] | select(.focused == 1) | .id')
[ -z "$CURRENT_WINDOW" ] && exit
CURRENT_SPACE=$(yabai -m query --windows --window ${CURRENT_WINDOW}| jq '.space')
NUMBER_OF_WINDOWS_IN_SPACE=$(yabai -m query --spaces --space "${CURRENT_SPACE}" | jq '.windows | length')
[ "${NUMBER_OF_WINDOWS_IN_SPACE}" -lt 2 ] && exit
yabai -m space --create
EMPTY_SPACES=$(yabai -m query --spaces | jq '[.[] | select(.windows == []) | .index] | min')
yabai -m window "${CURRENT_WINDOW}" --space "${EMPTY_SPACES}"
yabai -m window --focus "${CURRENT_WINDOW}"
