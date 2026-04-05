#!/bin/bash
# Mode indicator for tmux
# Returns current mode based on tmux variables

prefix=$(tmux display-message -p '#{client_prefix}')
mode=$(tmux display-message -p '#{pane_mode}')
mouse=$(tmux show-option -gv mouse 2>/dev/null)

if [ "$mode" = "copy-mode" ]; then
    echo "COPY"
elif [ "$prefix" = "1" ]; then
    echo "PREFIX"
elif [ "$mouse" = "on" ]; then
    echo "MOUSE"
else
    echo "NORMAL"
fi
