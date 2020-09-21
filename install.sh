#!/usr/bin/env bash

export ZSH="$HOME/.config/oh-my-zsh"
export ZSH_CUSTOM="$ZSH/custom"

packagesNeeded='zsh git stow vim curl'

if [ -x "$(command -v apk)" ];       then apk update && apk add --no-cache $packagesNeeded
elif [ -x "$(command -v apt-get)" ]; then apt-get update && apt-get install $packagesNeeded
elif [ -x "$(command -v pacman)" ]; then pacman -Syy && pacman -S $packagesNeeded
elif [ -x "$(command -v dnf)" ];     then dnf install $packagesNeeded
elif [ -x "$(command -v zypper)" ];  then zypper install $packagesNeeded
else echo "FAILED TO INSTALL PACKAGE: Package manager not found. You must manually install: $packagesNeeded">&2; f

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

mkdir -pv $HOME/.cache/zsh
touch $HOME/.cache/zsh/history $HOME/.cache/z
rm $HOME/.zsh*

git clone https://github.com/AgusDOLARD/dotfiles.git $HOME/.dots
cd $HOME/.dots
stow -vt ~ zsh vim
