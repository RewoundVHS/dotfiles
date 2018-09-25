#!/bin/bash
# i3 lock script: pixelates screen and adds lock pic
# requires imagemagick and scrot

tmpbg="/tmp/lockscreen.png"
#text="/tmp/locktext.png"
dir="$HOME/Pictures/lockscreen/"
images=($(find ${dir}))
rnd=($(seq 0 $(expr ${#images[@]} - 1) | shuf))
pic=$dir'froppy.png'

scrot "$tmpbg"
convert "$tmpbg" -blur 0x3 "$tmpbg"

if [ -f "$pic" ]; then
	convert "$tmpbg" "$pic" -gravity center -geometry +0+0 -composite -matte "$tmpbg"
fi

i3lock -u -n -e -i "$tmpbg" >> /dev/null
