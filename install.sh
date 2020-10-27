#!/usr/bin/env bash

PACKAGES='zsh git stow neovim curl'

sudo pacman -S $PACKAGES

mkdir -pv $HOME/.cache/zsh
touch $HOME/.cache/zsh/history $HOME/.cache/z
rm $HOME/.zsh*

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

git clone https://github.com/AgusDOLARD/dotfiles.git $HOME/.dots
cd $HOME/.dots
stow -vt ~ zsh nvim
