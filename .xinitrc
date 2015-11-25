export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

compton --config .config/compton/compton.conf -cGb &
fcitx-autostart > /dev/null 2>&1 &
# sogou-autostart > /dev/null 2>&1 &

feh --bg-scale "/home/mssun/Dropbox/Desktop Pictures/Solid Colors/Solid Aqua Dark Blue.png" --bg-scale "/home/mssun/Dropbox/Desktop Pictures/Bristle Grass.jpg" &
xset -dpms; xset s off &
xsetroot -cursor_name left_ptr &
dunst -config ~/.config/dunst/dunstrc &
sxhkd &
dropbox-cli start &
wmname LG3D &
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
xrandr --dpi 96
if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi
exec bspwm
