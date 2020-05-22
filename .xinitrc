[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap&
numlockx &
xset r rate 400 25 &
pulseaudio -D &
dunst &
exec i3
