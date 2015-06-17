export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

compton --config .config/compton/compton.conf -cGb &
fcitx-autostart > /dev/null 2>&1 &
sogou-autostart > /dev/null 2>&1 &

feh --bg-scale /usr/share/archlinux/wallpaper/archlinux-poolclouds.jpg &
xsetroot -cursor_name left_ptr &
dunst -config ~/.config/dunst/dunstrc &
sxhkd &
dropbox-cli start &
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
xrandr --dpi 96
exec bspwm
