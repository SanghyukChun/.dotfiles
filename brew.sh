#!/bin/bash
echo "installing homebrew..."

# Install homebrew if not installed
if test ! $(which brew); then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "brew is found in this system. Skip brew install"
fi

echo -n "Do you wish to install packages in Brewfile? [Y/n] "
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "start brew bundle"
    brew bundle
else
    echo "skip brew bundle"
fi
