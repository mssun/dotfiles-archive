#!/bin/sh

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
export QT_STYPE_OVERRIDE=GTK+

compton --config .config/compton/compton.conf &
#compton -cCfz -i 0.5 --backend glx --vsync opengl-swc &
fcitx-autostart > /dev/null 2>&1 &

feh --bg-scale "/home/mssun/Dropbox/Desktop Pictures/Solid Colors/Solid Aqua Dark Blue.png" --bg-scale "/home/mssun/Dropbox/Desktop Pictures/Bristle Grass.jpg" &

xset -dpms; xset s 900 &
xset r rate 400 70
xsetroot -cursor_name left_ptr &

dunst -config ~/.config/dunst/dunstrc &
sxhkd -c ~/.config/sxhkd/sxhkdrc &
dropbox-cli start &
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
xrandr --dpi 96
if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi
urxvtd -q -f -o &
wmname LG3D &

exec bspwm
