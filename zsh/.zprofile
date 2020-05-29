if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

if [ -d "$HOME/.local/bin" ]; then
	 PATH="$HOME/.local/bin:$PATH"
fi
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
[[ -f ~/.zshenv ]] && . ~/.zshenv
