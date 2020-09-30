#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh install.sh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp -r ./colors ~/.vim

locations="tmux.conf zshrc oh-my-zsh vimrc"  

for location in $locations; do
    echo "Creating symlink to $location into my home folder"
    ln -s dotfiles/$location/.$location ~/.$location
done
