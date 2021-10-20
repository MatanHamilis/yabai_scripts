#!/usr/bin/env zsh
yabai -m query --spaces | jq '.[] | select( .windows == [] ) | .index' | xargs -I {} yabai -m space {} --destroy
