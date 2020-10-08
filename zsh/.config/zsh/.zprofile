if [[ "$(tty)" = "/dev/tty1" ]]; then
  exec startx "$XDG_CONFIG_HOME/X11/xinitrc"
fi

[[ -f ~/.zshenv ]] && . ~/.zshenv
