exec i3 & wmpid=$!

bash /home/neve/.screenlayout/layout.sh
bash /home/neve/.config/polybar/launch.sh

wait $wmpid
