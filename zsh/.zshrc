export ZSH="/home/agus/.oh-my-zsh"
ZSH_THEME="spaceship"

plugins=(git z sudo gitfast pip extract zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias cya="rm -rf"
alias p='sudo pacman'
alias byeOrphans='sudo pacman -Rns $(pacman -Qtdq)'
alias mkd='mkdir -pv'
alias n="nnn"
alias sn="sudo nnn"

alias yolo="commit -m "$(curl -s http://whatthecommit.com/index.txt)""
alias v=$EDITOR
alias i3Conf="$EDITOR ~/.config/i3/config"
alias arst="setxkbmap us -option caps:backspace"
alias asdf="setxkbmap us colemak"
alias yt="youtube-dl -f mp4 -o '~/Videos/%(title)s-%(uploader)s.%(ext)s'" -ic
alias ytm="youtube-dl --add-metadata --audio-quality 0 --audio-format mp3 --extract-audio -o '~/Music/%(title)s|%(uploader)s.%(ext)s'" -ic

# Enable ViMode
bindkey -v
