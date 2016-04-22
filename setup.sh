#!/bin/sh

ln -s `pwd`/.bash_profile ~/.bash_profile
mkdir ~/.config
ln -s `pwd`/.config/nvim ~/.config/nvim
ln -s `pwd`/.gitconfig ~/.gitconfig
ln -s `pwd`/.tmux.conf ~/.tmux.conf
ln -s `pwd`/.vim ~/.vim
