#!/bin/bash

# VIM
cp ~/.vimrc ./vim/
cp ~/.vim/colors/monokai.vim ./vim/colors/
cp -r ~/.vim/plugin/protect_header/ ./vim/plugin/
cp -r ~/.vim/plugin/generate_class/ ./vim/plugin
cp ~/.config/nvim/coc-settings.json ./vim/

# ZSH
cp ~/.zshrc ./zsh/

# GIT
cp ~/.gitignore ./git/
cp ~/.gitconfig ./git/

# I now use spacemacs. I dont need to save it for now.
# the last version of my emacs config is now in : emacs/paul_config
# EMACS
# cp -r ~/.emacs.d ./emacs/
# cp ~/.emacs ./emacs/

# I3 (config)
cp ~/.config/i3/config ./i3/
cp ~/.xinitrc ./i3/
cp ~/.config/libinput-gestures.conf ./i3/
# if (scripts)
cp /usr/bin/tap_to_click.sh ./i3/scripts
cp /usr/bin/inverse_scroll.sh ./i3/scripts
cp /usr/bin/i3exit ./i3/scripts
cp /usr/bin/my_new_status ./i3/scripts
cp /usr/bin/swap_workspaces ./i3/scripts
cp /usr/bin/rofi-web ./i3/scripts
cp /usr/bin/clementine-remote ./i3/scripts
cp /usr/bin/volumecontrol ./i3/scripts
cp /usr/bin/set_wallpaper ./i3/scripts
cp /usr/bin/connect_monitor ./i3/scripts

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
cp ~/.config/awesome/rc.lua ./awesome/

# NANO
cp ~/.nanorc ./nano/

# CLANG-FORMAT
cp ~/.clang-format ./clang-format/

# DESKTOP FILES
cp /usr/share/applications/cura.desktop ./desktop_files/
cp /usr/share/applications/freecad.desktop ./desktop_files/
cp /usr/share/applications/godot.desktop ./desktop_files/

# TEMPLATES
cp ~/Templates/Makefile ./templates/
cp ~/Templates/main.c ./templates/
cp ~/Templates/csfml_basic.c ./templates/

# CONKY
cp /usr/bin/start_conky ./conky/
cp /usr/share/conky/data.conky ./conky/

# TERMINATOR
cp ~/.config/terminator/config ./terminator/

# VS CODE
cp ~/.config/Code/User/settings.json ./vs_code/

# FISH
cp ~/.config/fish/config.fish ./fish/
cp ~/.local/share/omf/themes/godfather/fish_prompt.fish ./fish/

# Alacritty
cp ~/.config/alacritty/alacritty.yml ./alacritty
