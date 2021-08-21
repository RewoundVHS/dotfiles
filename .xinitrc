exec i3 & wmpid=$!

exec ~/.screenlayout/layout.sh &
exec dunst &
exec xrdb -merge ~/.Xresources &
exec pulseaudio &
exec wal -R &

wait $wmpid
