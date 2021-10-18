#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install -y curl neovim cmake g++ clang libclang-dev git tmux ccls nodejs npm
npm install yarn -g

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.config/nvim/
cp -rf init.vim ~/.config/nvim
cp -rf coc-settings.json ~/.config/coc-settings.json
nvim +PlugInstall +qall
cd ~/.config/nvim/plugged/coc.nvim
yarn i
