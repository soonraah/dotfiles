#!/bin/sh

set -eu

cd ~/dotfiles

if [ ! -L ~/.zprezto -a -d ~/dotfiles/prezto ]; then
    ln -s ~/dotfiles/prezto ~/.zprezto
fi

# copy dot fliles to ~
for file in .*; do
    if [[ $file =~ ^\.git || $file =~ ^\.\.?$ ]]; then
        continue
    fi
    echo "Making link of $file"
    rm -f -i ~/$file
    ln -s ~/dotfiles/$file ~/$file
done

# for tmux copy mode
if [ `uname` = "Darwin" ]; then
    brew update

    echo 'This is MacOS. Installing reattach-to-user-namespace by homebrew'
    brew install reattach-to-user-namespace

    brew install starship
    brew tap homebrew/cask-fonts
    brew install font-jetbrains-mono-nerd-font
else
    curl -sS https://starship.rs/install.sh | sh
fi

# install ZI
sh -c "$(curl -fsSL https://git.io/get-zi)" --

# config file for Starship
if [ ! -d ~/.config ]; then
    mkdir ~/.config
fi
rm -f -i ~/.config/starship.toml
ln -s ~/dotfiles/starship.toml ~/.config/starship.toml
