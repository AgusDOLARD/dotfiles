ZSH_THEME="spaceship"
plugins=(git z vi-mode sudo gitfast pip extract zsh-completions zsh-autosuggestions zsh-syntax-highlighting) 
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

HISTFILE=~/.cache/zsh/history

alias c:="$WINSDD"
alias d:="$WINHDD"
alias arst="setxkbmap us -option caps:backspace -option altwin:swap_lalt_lwin"
alias asdf="setxkbmap us colemak -option altwin:swap_lalt_lwin"
alias byeOrphans='sudo pacman -Rns $(pacman -Qtdq)'
alias cya="rm -rf"
alias i3Conf="$EDITOR ~/.config/i3/config"
alias mkd='mkdir -pv'
alias n="nnn"
alias p='sudo pacman'
alias v=$EDITOR
alias wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"
alias yolo="commit -m "$(curl -s http://whatthecommit.com/index.txt)""
alias yt="youtube-dl -f mp4 -o '$WINHDD/Videos/%(title)s-%(uploader)s.%(ext)s' -ic" 
alias ytm="youtube-dl --add-metadata --audio-quality 0 --audio-format mp3 --extract-audio -o '$WINHDD/Musica/%(title)s|%(uploader)s.%(ext)s' -ic"

function h(){
	DEFAULT=20
	RES="history | tail -n ${1:-$DEFAULT} | sed 's/^\s*//'" 
	[[ "$1" -gt "$DEFAULT" ]] && RES+="| less"
	eval "$RES"
}

# Enable ViMode
bindkey -v
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
bindkey -M viins jj vi-cmd-mode 

# ci"
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m $c select-quoted
  done
done

# ci{, ci(, di{ etc..
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $m $c select-bracketed
  done
done
