#!/bin/bash

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs universal-ctags ranger
mkdir -p ~/.config
mkdir -p ~/.config/nvim

ln -f nvim/init.vim ~/.config/nvim/init.vim

mkdir -p ~/.config/nvim/colors
ln -f nvim/colors/sunbather.vim ~/.config/nvim/colors/sunbather.vim
