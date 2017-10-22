#!/bin/bash

cd `dirname $0`
cp .vimrc ~
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
vim -c ':BundleUpdate' -c ':qa'

echo 'move your molokai theme to /usr/share/vim manually.'

echo 'you need to install exuberant-ctags for plugin tagbar.'

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --js-completer
echo 'you can invoke :YcmGenerateConfig to generate a .ycm_extra_conf.py for a build system like make.'
echo 'copy .ycm_extra_conf.py.c[pp] to your home directory and rename it to .ycm_extra_conf.py.'
echo 'you can use gcc -xc[++] -E -v - to see default include directory of c or c++ and replace it in .ycm_extra_conf.py.'
