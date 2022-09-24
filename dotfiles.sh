#!/usr/bin/env sh

INIT="init.lua"
LUA="lua"
NVIM_CONFIG="$HOME/.config/nvim" 
if [ -d "$NVIM_CONFIG" ]; then
  rm -r "$NVIM_CONFIG"
fi
mkdir -p "$NVIM_CONFIG" 
ln -s "$PWD/nvim/$INIT" "$NVIM_CONFIG/$INIT"
ln -s "$PWD/nvim/$LUA" "$NVIM_CONFIG/$LUA"

TMUX=".tmux.conf"
HOME_TMUX="$HOME/$TMUX" 
if [ -f "$HOME_TMUX" ]; then
  rm "$HOME_TMUX"
fi
ln -s "$PWD/$TMUX" "$HOME_TMUX"

BASH=".bash_profile"
HOME_BASH="$HOME/$BASH"
if [ -f "$HOME_BASH" ]; then
  rm "$HOME_BASH"
fi
ln -s "$PWD/$BASH" "$HOME_BASH"

GITCONF=".gitconfig"
HOME_GITCONF="$HOME/$GITCONF"
if [ -f "$HOME_GITCONF" ]; then
  rm "$HOME_GITCONF"
fi
ln -s "$PWD/$GITCONF" "$HOME_GITCONF"
