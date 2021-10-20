# Yabai Scripts
## Intro
- This is just a bunch of scripts for yabai that I find useful, enjoy.
- I'm assuming you use MacOS.
- PRs are welcome.
- Bugs are welcome.
- Ideas are welcome.


## Prerequisites
- Yabai with scripting-addons installed. This requires disabling the SIP in MacOS. Follow the instructions in [Yabai's repo](https://github.com/koekeishiya/yabai/wiki) carefully.
- jq for command-line processing of json-formatted data. `brew install jq` using homebrew or follow [jq repo](https://github.com/stedolan/jq/wiki/Installation) for further instructions.
- `choose`, for presenting a gui menu. Can be done using `brew install choose-gui` from homebrew or follow [choose-gui repo](https://github.com/chipsenkbeil/choose) for further instructions.

## Description of scripts

| Name | Description | 
|---|----|
| [break_current_window.sh](./scripts/break_current_window.sh) | Breaks currently focused window into a new space and focuses on that space.|
| [focus_next_window_of_app.sh](./scripts/focus_next_window_of_app.sh) | If an app has multiple windows open, focuses on the next window of the app.|
| [warp_window_here.sh](./scripts/warp_window_here.sh) | Opens a window to select a window to warp into current space |
| [pick_window_macos.sh](./scripts/pick_window_macos.sh) | Opens a window to select a windows amongst existing windows. Focuses on the selected window. |
| [remove_empty_space.sh](./scripts/remove_empty_spaces.sh) | Removed empty spaces, this is sometimes very useful as spaces tend to pile up after long periods of usage. One can use this alongside other actions which may leave a space empty, such as moving a window or killing an app. This can also be ran periodically. |

I take no responsibility for the quality of the code, enjoy.