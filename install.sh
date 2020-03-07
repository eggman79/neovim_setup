#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install -y curl neovim cmake python3 python3-dev g++ golang npm git tmux exuberant-ctags

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.config/nvim/
cp -rf init.vim ~/.config/nvim
