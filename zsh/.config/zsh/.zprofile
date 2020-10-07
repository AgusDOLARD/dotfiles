if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx "$XINITRC"
fi

if [ -d "$HOME/.config/scripts" ]; then
	 PATH="$HOME/.config/scripts:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
	 PATH="$HOME/.local/bin:$PATH"
	 PATH="$HOME/.local/share/npm/bin/:$PATH"
fi

[[ -f ~/.zshenv ]] && . ~/.zshenv
