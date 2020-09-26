# XDG paths
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

# export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export MACHINE_STORAGE_PATH="$XDG_DATA_HOME"/docker-machine
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/config
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
export PYLINTHOME="$XDG_CACHE_HOME/pylint"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export XINITRC="$XDG_CONFIG_HOME/xinitrc"
export ZSH="$XDG_CONFIG_HOME/oh-my-zsh"
export _Z_DATA="$XDG_CACHE_HOME/z"
export HISTFILE="$XDG_CACHE_HOME/zsh/history"

# Apps
export EDITOR="nvim"
export READER="zathura"

export WINSDD='/mnt/c/Users/agust'
export WINHDD='/mnt/d'
export DISPLAY=:0
export SCRIPT_DIR=~/.config/scripts
# NNN env
export NNN_FIFO="/tmp/nnn.fifo"
export NNN_COLORS="7634"
export NNN_BMS="d:$WINHDD;c:$WINSDD"
export NNN_OPTS="e"
export NNN_PLUG='s:suedit;'
