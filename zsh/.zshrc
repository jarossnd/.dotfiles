#!/usr/bin/env zsh

for _dotzsh in ~/.config/zsh/aliases.zsh; do
  if [[ -f "$_dotzsh" ]]; then
    source "$_dotzsh"
  fi
done
unset _dotzsh

eval "$(starship init zsh)"
