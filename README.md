# RewoundVHS' dotfiles

These configuration files define my desktop GNU/Linux systems.

## Screenshots

![scrot1](https://user-images.githubusercontent.com/23706925/46371416-4f04c580-c656-11e8-840c-6ffbd1fbdf9c.png)

![scrot2](https://user-images.githubusercontent.com/23706925/46371127-7f982f80-c655-11e8-8865-b8cf1ebae6ff.png)

## Dependencies

In order to properly use my configs you'll need a few packages. I'm currently using the following:
- nvim
- i3-gaps
- polybar
- fish
- rofi
- python-pywal
- compton
- i3lock
- urxvt

## deploy.sh

This bash script deploys my dotfiles on an Arch Linux system. Please read through this script before running it as it installs packages.

## randwall.py

This short script chooses a random wallpaper from ~/Pictures/Wallpapers and sets the theme with pywal. This also is useless as pywal will select a random image if you point it at a directory.
