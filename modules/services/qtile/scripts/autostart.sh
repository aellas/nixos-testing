xrandr --output DisplayPort-0 --mode 1920x1080 --rate 239.76
xrandr --output eDP-1 --off
/usr/libexec/polkit-gnome-authentication-agent-1 &
picom &
xclip &
greenclip daemon &
wal -R &
dunst -config /home/array/.cache/wal/dunstrc &
syncthing &
