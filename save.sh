#!/bin/bash

# VIM
cp ~/.config/nvim/init.vim ./vim/
cp ~/.vimrc ./vim/
cp ~/.vim/colors/monokai.vim ./vim/colors/
cp ~/.config/nvim/coc-settings.json ./vim/
cp -r ~/.vim/minisnip/ ./vim/minisnip/
cp ~/.ideavimrc ./vim/

# ZSH
cp ~/.zshrc ./zsh/
cp ~/.zshenv ./zsh/
cp ~/.oh-my-zsh/custom/my_custom_zsh.zsh ./zsh/

# GIT
cp ~/.gitignore ./git/
cp ~/.gitconfig ./git/

# URXVT
cp ~/.Xresources ./urxvt

# I3 (config)
cp ~/.config/i3/config ./i3/
cp ~/.xinitrc ./i3/
cp ~/.config/libinput-gestures.conf ./i3/
cp ~/.config/i3status/i3status.conf ./i3/i3status/

# I3 (scripts)
cp /usr/bin/tap_to_click.sh ./i3/scripts/
cp /usr/bin/inverse_scroll.sh ./i3/scripts/
cp /usr/bin/i3exit ./i3/scripts/
cp /usr/bin/my_new_status ./i3/scripts/
cp /usr/bin/swap_workspaces ./i3/scripts/
cp /usr/bin/rofi-web ./i3/scripts/
cp /usr/bin/clementine-remote ./i3/scripts/
cp /usr/bin/volumecontrol ./i3/scripts/
cp /usr/bin/set_wallpaper ./i3/scripts/
cp /usr/bin/connect_monitor ./i3/scripts/
cp /usr/bin/apply_keyboard_conf ./i3/scripts/

# PICOM
cp ~/.config/picom/picom.conf ./picom

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
cp ~/.config/alacritty/alacritty.yml ./alacritty/
