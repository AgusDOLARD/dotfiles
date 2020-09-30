#!/usr/bin/env bash

PACKAGES='zsh git stow neovim curl'

sudo pacman -S $PACKAGES

mkdir -pv $HOME/.cache/zsh
touch $HOME/.cache/zsh/history $HOME/.cache/z
rm $HOME/.zsh*

git clone https://github.com/AgusDOLARD/dotfiles.git $HOME/.dots
cd $HOME/.dots
stow -vt ~ zsh nvim
