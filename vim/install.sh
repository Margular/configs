#!/bin/bash

# .vimrc
cp -fv .vimrc $HOME/.vimrc

# Vundle
VUNDLE=$HOME/.vim/bundle/Vundle.vim
if [ ! -d $VUNDLE ]; then
    git clone https://github.com/VundleVim/Vundle.vim $VUNDLE
    vim -c ':BundleUpdate' -c ':qa'
fi

# colorscheme
VIMRUNTIME=$(vim --cmd 'echo $VIMRUNTIME|q' 2>&1 | sed -n 2p | grep -o '[[:print:]]*' | head -n 1)
sudo cp -v $HOME/.vim/bundle/molokai/colors/molokai.vim $VIMRUNTIME/colors/

# ycm
echo -n 'do you want to build ycm now? (Y/N) '
read choice
if [ "$choice" = "Y" ] || [ "$choice" = "y" ]; then
    cd $HOME/.vim/bundle/YouCompleteMe
    ./install.py --clang-completer --js-completer
fi

# .ycm_extra_conf.py
echo -n 'now generate isystem in .ycm_extra_conf.py, choose c or c++? (C/C++) '
read ctype
if [ "$ctype" = "C" ] || [ "$ctype" = "c" ]; then
    INCLUDES=$(echo | gcc -Wp,-v -x c - -fsyntax-only 2>&1 | grep '^ ')
elif [ "$ctype" = "C++" ] || [ "$ctype" = "c++" ]; then
    INCLUDES=$(echo | gcc -Wp,-v -x c++ - -fsyntax-only 2>&1 | grep '^ ')
else
    echo 'do nothing with wrong input'
fi
printf "%s\n" $INCLUDES
