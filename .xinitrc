exec i3 & wmpid=$!

exec udiskie &
exec dunst &
exec mpd &
exec wal -R &
exec xrdb -merge ~/.Xresources &
exec dunst &
bash ~/.screenlayout/layout.sh &
bash ~/.config/polybar/launch.sh &

wait $wmpid
