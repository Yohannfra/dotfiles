" A super light minimal version of my vim config

syntax enable
set number

" Indent with 4 spaces
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4

nnoremap L $
nnoremap H 0
inoremap jk <Esc>

nnoremap ; :
inoremap <Esc> <Esc>l
inoremap <C-c> <C-c>l
nnoremap gr gT

cabbrev tn tabnew
