#!/bin/bash
echo -n "Do you wish to install my vim theme? [Y/n] "
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    if [ ! -d "~/.vim" ]; then
      mkdir $HOME/.vim
    fi

    if [ ! -d "~/.vim/bundle" ]; then
      mkdir $HOME/.vim/bundle
      git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    fi

    mv $HOME/.vimrc $HOME/.vimrc.old
    cp vimrc $HOME/.vimrc
    vim +PluginInstall +qall

    ln -s $HOME/.vim $HOME/.config/nvim
    ln -s $HOME/.vimrc $HOME/.config/nvim/init.vim
fi
