#!/bin/bash

# stop at first error
set -e

mkdir .config/nvim/

# mon vimrc
wget -O ~/.vimrc https://raw.githubusercontent.com/Yohannfra/dotfiles/master/vim/.vimrc

# coc-settings
wget -O ~/.config/nvim/coc-settings.json https://raw.githubusercontent.com/Yohannfra/dotfiles/master/vim/coc-settings.json
# to use coc with vim too
ln -s ~/.config/nvim/coc-settings.json ~/.vim/

# init.vim
wget -O ~/.config/nvim/init.vim https://raw.githubusercontent.com/Yohannfra/dotfiles/master/vim/init.vim

# install Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install all plug plugins
vim -c "PlugInstall" -c qa
# install coc-python (lsp python)
vim -c "CocInstall coc-python" -c qa

# tools for python
pip install python-language-server --user
pip install jedi --user

# install coc-rls (rust lsp)
vim -c "CocInstall coc-rls" -c qa

echo -e "\nDone!"
echo "You should install clang and clang extra tools if you want to have the autocompletion and lsp features in c/c++"
