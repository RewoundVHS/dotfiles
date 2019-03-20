#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [ "$1" = "--strap" ] | [ "$1" = "-s" ]; then

	sudo pacman -Syu
	sudo pacman -S gvim rofi python-pywal compton rxvt-unicode i3lock yay feh fish firefox dunst
	yay -S i3-gaps polybar

fi

cp $DIR/.bashrc $HOME
cp $DIR/.vimrc $HOME
cp $DIR/.Xresources $HOME
mkdir -p $HOME/.config/compton && cp $DIR/.config/compton.conf $HOME/.config/
mkdir -p $HOME/.config/polybar && cp $DIR/.config/polybar/* $HOME/.config/polybar/
mkdir -p $HOME/.config/dunst && cp $DIR/.config/dunst/* $HOME/.config/dunst/
mkdir -p $HOME/.config/rofi && cp $DIR/.config/rofi/* $HOME/.config/rofi/
