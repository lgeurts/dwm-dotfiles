#!/bin/bash

options=(
"DWM
Dmenu
Dunst
Nvim
St
Slstatus
Slock
Bash
Zsh
Starship
Tmux")

choice=$(echo -e "${options[@]}" | dmenu -c -g 1 -fn "JetBrainsMono Nerd Font:weight=bold:size=10:antialias=true:hinting=true" -nb '#1e1e2d' -nf "#abe9b3" -sb "#d5aeea" -sf "#1e1d2d" -shb "#cba6f7" -shf "#585b70" -nhb "#1e1e2e" -nfh "#585b70" -l 15 -h 30 -p 'Dotfiles: ')

case "$choice" in
DWM)
	choice="$HOME/.config/suckless/dwm/"
  ;;
Dmenu)
	choice="$HOME/.config/suckless/dmenu/"
  ;;
Dunst)
	choice="$HOME/.config/dunst/"
  ;;
Nvim)
    choice="$HOME/.config/nvim"
    ;;
St)
    choice="$HOME/.config/suckless/st/"
    ;;
Slstatus)
    choice="$HOME/.config/suckless/slstatus/"
    ;;
Slock)
    choice="$HOME/.config/suckless/slock/"
    ;;
Bash)
    choice="$HOME/.bashrc"
    ;;
Zsh)
    choice="$HOME/.zshrc"
    ;;
Starship)
    choice="$HOME/.config/starship.toml"
    ;;
Tmux)
    choice="$HOME/.tmux.conf"
    ;;
*)
	exit 1
	;;
esac

st -e nvim "$choice"
