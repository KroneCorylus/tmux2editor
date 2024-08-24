# tmux2editor

tmux2editor send the current window-pane scrollback buffer to your predefined editor. 

## Install

```sh
set-option -g @plugin 'KroneCorylus/tmux2editor'
```

## Configure

```sh
EDITOR='nvim'
set -g @send_to_editor C-e
```
