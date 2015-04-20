export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

compton --config .config/compton/compton.conf -cGb &
fcitx-autostart &
sogou-autostart &

xsetroot -cursor_name left_ptr &
sxhkd &
exec bspwm
