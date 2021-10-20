#!/usr/bin/env zsh

current_app=$(yabai -m query --windows | jq '.[] | select(.focused ==1).app')
current_id=$(yabai -m query --windows | jq '.[] | select(.focused ==1).id')
target_id=$(yabai -m query --windows | jq '.[] | select(.app == '"$current_app"').id' | awk \
	'{ if (NR == 1) first = $1; }
	{ if (n != 0 && target == 0) target=$1; }
	{if ($1 == '"$current_id"') n=NR;} \
	{ tot++ } \
		END { if (target == "")
			target = first;
		      print target
	      }')

yabai -m window --focus "$target_id"
