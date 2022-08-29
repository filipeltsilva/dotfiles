if status is-interactive
and not set -q TMUX
  exec tmux new-session -A -s workstation
end
