#!/bin/bash

cd `dirname $0`
cp .vimrc ~
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
vim -c ':BundleUpdate' -c ':qa'

echo 'now move your molokai theme to /usr/share/vim manually.'

echo 'you may need to install exuberant-ctags for plugin tagbar.'

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --js-completer
