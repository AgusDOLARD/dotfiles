# XDG paths
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

export DOTS="$HOME/.dots"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export TMUX_CONF="$XDG_CONFIG_HOME/tmux/tmux.conf"
export FZF_DEFAULT_OPTS="--height 40% --reverse"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export JAVA_OPTS="-XX:+IgnoreUnrecognizedVMOptions"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export MACHINE_STORAGE_PATH="$XDG_DATA_HOME/docker-machine"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NPM_CONFIG_USERCONFIG"=$XDG_CONFIG_HOME/npm/config"
export NPM_CONFIG_PREFIX="$XDG_CONFIG_HOME/npm/global"
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"
export PYLINTHOME="$XDG_CACHE_HOME/pylint"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export STACK_ROOT="$XDG_DATA_HOME/stack"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

# ZSH
export HISTFILE="$XDG_CACHE_HOME/zsh/history"
export SAVEHIST=10000
export HISTSIZE=10000
export ZSHPLUGS="$XDG_CONFIG_HOME/zsh/plugins"
export _Z_DATA="$XDG_CACHE_HOME/z"
export LS_COLORS="no=00;37:fi=00:di=00;33:ln=04;36:pi=40;33:so=01;35:bd=40;33;01:"
export ZDOTDIR="$HOME/.config/zsh"
# export ZSH="$XDG_CONFIG_HOME/oh-my-zsh"

# Apps
if [ -x "$(command -v nvim)" ]; then
	export EDITOR="nvim"
	export EDITOR="nvim"
	export VISUAL="nvim"
else
	export EDITOR="vim"
	export EDITOR="vim"
	export VISUAL="vim"
fi

export READER="zathura"
export LESSHISTFILE=-
export TERMINAL="alacritty"
export BROWSER="firefox"
export IMAGE="feh"
export WM="bspwm"
export PAGER="nvim -c 'set ft=man' -"
export GIT_PAGER="less"
export TERM="xterm-256color"

export WINSDD="/mnt/c/Users/agust"
export WINHDD="/mnt/d"
export DISPLAY=:0
export SCRIPT_DIR="$XDG_CONFIG_HOME/scripts"

# NNN env
export NNN_FIFO="/tmp/nnn.fifo"
export NNN_COLORS="7634"
export NNN_BMS="d:$WINHDD;c:$WINSDD"
export NNN_OPTS="e"
export NNN_PLUG='s:suedit;d:_dragon-drag-and-drop -a -x $nnn*'

# Clipmenu
export CM_SELECTIONS="primary clipboard"
export CM_MAX_CLIPS=20

# Android SDK
export ANDROID_SDK_ROOT='/opt/android-sdk'
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools/
export PATH=$PATH:$ANDROID_HOME/tools/bin/
export PATH=$PATH:$ANDROID_HOME/tools/
PATH=$ANDROID_HOME/emulator:$PATH

path=("$SCRIPT_DIR"  "$NPM_CONFIG_PREFIX/bin" "$HOME/.local/bin" "$XDG_DATA_HOME" "$path[@]]")
export PATH
