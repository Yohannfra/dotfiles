#!/bin/bash

if (( $EUID != 0 )); then
    echo "Please run as root"
    exit 1
fi

# VIM
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.config/nvim/ ~/.vim/minisnip
cp -f ./vim/init.vim ~/.config/nvim/
cp -f ./vim/coc-settings.json ~/.config/nvim/
cp -f ./vim/.vimrc ~/
cp -f ./vim/minisnip/minisnip/* ~/.vim/minisnip/

# ZSH
cp -f ./zsh/.zshrc ~
cp -f ./zsh/.zshenv ~
cp -f ./zsh/my_custom_zsh.zsh ~/.oh-my-zsh/custom/

# GIT
cp -f ./git/.* ~/

# URXVT
cp -f urxvt/.Xresources ~/

# TMUX
cp -f tmux/.tmux.conf ~/

# CLANG-FORMAT
cp ./clang-format/.clang-format ~/
