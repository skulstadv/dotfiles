# dotfiles
Dotfiles for vim, tmux and bash

### Installation

    git clone git@github.com:skulstadv/dotfiles.git && mv dotfiles .dotfiles && ./.dotfiles/create_symlinks.sh


### Vim configuration
Make sure you have vim with python3 support
````
vim --version | grep +python3
````
Clone Vundle:

    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Open vim and in command mode write:
```
:PluginInstall
```
Follow guide:
https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64
