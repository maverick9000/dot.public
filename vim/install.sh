#!/usr/bin/env bash
mv ~/.vimrc ~/.vimrc.bak
mv ~/.gvimrc ~/.gvimrc.bak
mv ~/.vim ~/.vim.bak

mkdir -p ~/.vim/.backup ~/.vim/.swp ~/.vim/.undo ~/.vim/config ~/.config/nvim

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

ln -s $SCRIPTPATH/config ~/.vim/config
ln -s $SCRIPTPATH/nvimrc ~/.config/nvim/init.vim
ln -s $SCRIPTPATH/vimrc ~/.vimrc
ln -s $SCRIPTPATH/gvimrc ~/.gvimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo 'run this inside vim => :PlugInstall'
