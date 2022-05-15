#!/bin/bash

curr_dir=`pwd`
apt-get update -y
apt-get upgrade -y
apt-get install -y curl neovim cmake g++ clang libclang-dev git tmux ccls nodejs npm exuberant-ctags
npm install yarn -g

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.config/nvim/
cp -rvf init.vim ~/.config/nvim
cp -rvf coc-settings.json ~/.config/nvim/
nvim +PlugInstall +qall
cd ~/.config/nvim/plugged/coc.nvim
yarn install
cd "$curr_dir"
