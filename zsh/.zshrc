autoload -U compinit && compinit
autoload -U colors && colors

_comp_options+=(globdots)

setopt correct
setopt autocd

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

zmodload zsh/complist

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

for f in $ZSHPLUGS/*; do source "$f"; done
source $ZSHPLUGS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSHPLUGS/zsh-completions/zsh-completions.plugin.zsh
source $ZSHPLUGS/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZSHPLUGS/zsh-you-should-use/you-should-use.plugin.zsh
source $ZSHPLUGS/spaceship-prompt/spaceship.zsh
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
