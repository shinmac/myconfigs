#!/usr/bin/zsh
tmux new-session -s neo \; \
  send-keys 'vim' C-m \; \
  split-window -v \; \
  resize-pane -D 10 \; \
  rename-window VIM \; \
  new-window \; \
  rename-window ZSH \; \
  new-window \; \
  rename-window IPython \; \
  send-keys 'python3' C-m \; \
  select-window -t 0 \; \
  select-pane -t 0 \;
