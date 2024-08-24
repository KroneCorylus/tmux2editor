file=`mktemp`.sh
history_limit=$(tmux show-options -gqv history-limit)
tmux capture-pane -pS -$history_limit > $file
tmux new-window -n:mywindow "$EDITOR '+ normal G $' $file"

