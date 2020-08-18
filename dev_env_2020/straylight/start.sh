#!/bin/zsh

if [ $# -gt 0 ];then # pass command through
  exec "$@"
else # kick off tmux if there is no explicit start command
  tmux new -s "metux" && \
  tmux attach
fi