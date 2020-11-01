#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [ "$1" = "--strap" ] | [ "$1" = "-s" ]; then

	sudo pacman -Syu
	sudo pacman -S nvim rofi python-pywal compton rxvt-unicode i3lock paru feh fish firefox dunst curl
	paru -S i3-gaps polybar

fi

cp $DIR/.bashrc $HOME
cp $DIR/.Xresources $HOME
mkdir -p $HOME/.config/compton && cp $DIR/.config/compton.conf $HOME/.config/
mkdir -p $HOME/.config/i3 && cp $DIR/.config/i3/* $HOME/.config/i3/
mkdir -p $HOME/.config/polybar && cp $DIR/.config/polybar/* $HOME/.config/polybar/
mkdir -p $HOME/.config/dunst && cp $DIR/.config/dunst/* $HOME/.config/dunst/
mkdir -p $HOME/.config/rofi && cp $DIR/.config/rofi/* $HOME/.config/rofi/
mkdir -p $HOME/.config/nvim && cp $DIR/.config/nvim/* $HOME/.config/nvim/

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
