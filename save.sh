#!/bin/bash

# VIM
cp ~/.vimrc ./vim/
cp ~/.vim/colors/monokai.vim ./vim/colors/
cp -r ~/.vim/plugin/epitech_header/ ./vim/plugin/
cp -r ~/.vim/plugin/snippet ./vim/plugin/
cp ~/.vim/plugin/rainbow_main.vim ./vim/plugin/
cp ~/.vim/plugin/NERD_tree.vim ./vim/plugin/
cp ~/.vim/plugin/AutoClose.vim ./vim/plugin/
rm -rf ./vim/plugin/epitech_header/.git
rm -rf ./vim/plugin/snippet/.git

# ZSH
cp ~/.zshrc ./zsh/
cp ~/.zsh_history ./zsh/

# GIT
cp ~/.gitignore ./git/
cp ~/.gitconfig ./git/

# EMACS
cp -r ~/.emacs.d ./emacs/
cp ~/.emacs ./emacs/

# I3
cp ~/.config/i3/config ./i3/
cp /usr/bin/tap_to_click.sh ./i3/
cp /usr/bin/inverse_scroll.sh ./i3/
cp /usr/bin/my_status ./i3
