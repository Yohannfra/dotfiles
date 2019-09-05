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

# MY SCRIPTS
cp ~/my_scripts/ao ./my_scripts/
cp ~/my_scripts/dl ./my_scripts/
cp ~/my_scripts/clean ./my_scripts/
cp ~/my_scripts/apply_correct_rights ./my_scripts/
cp ~/my_scripts/poule ./my_scripts/
cp ~/my_scripts/prepare_my_repo ./my_scripts/
cp ~/my_scripts/cit ./my_scripts/

# TMUX
cp ~/.tmux.conf ./tmux/

# AWESOME
cp ~/.config/awesome/rc.lua ./awesome
