#!/bin/bash
echo -n "Do you wish to install my vim theme? [Y/n] "
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    if [ ! -d "~/.vim" ]; then
      mkdir ~/.vim
    fi

    if [ ! -d "~/.vim/bundle" ]; then
      mkdir ~/.vim/bundle
      git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    fi

    mv ~/.vimrc ~/.vimrc.old
    cp vimrc ~/.vimrc
    vim +PluginInstall +qall
fi
