#!/bin/bash

locations="tmux.conf zshrc oh-my-zsh vimrc"  

for location in $locations; do
    echo "Creating symlink to $location into my home folder"
    ln -s dotfiles/$location/.$location ~/.$location
done

