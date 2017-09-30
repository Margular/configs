#!/bin/bash

pushd `pwd`
cd `dirname $0`
cp .vimrc ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 2> /dev/null
vim -c ':BundleUpdate' -c ':q' -c ':q'

pushd `pwd`
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --tern-completer

popd
popd
