" ----------------------------- Plug --------------------------------------
set nocompatible
"filetype off

call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ianks/vim-tsx'
Plug 'junegunn/goyo.vim'
Plug 'vim-scripts/CycleColor'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'scrooloose/nerdtree'
Plug 'luochen1990/rainbow'
call plug#end()

" Disable annoying beeping
set noerrorbells
set vb t_vb=

""-------------------------------------------------------------------------""
" -------------------------------- config -----------------------------------
set number
"set relativenumber
set title
syntax enable
set mouse=a
set nohlsearch
set encoding=utf-8
set fileencodings=utf-8
set cursorline
set autoread
set so=5
set ruler
"set foldcolumn=1
set encoding=utf8

" Epitech coding style
set cc=81
set textwidth=0
set nowrap
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
set listchars=tab:..,trail:_
set list
set autoindent
set undolevels=9999
" ---------------------------------------------------------------------------

" -------------------------------Plugins -----------------------------------
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" to fix a bug who wrote radom code wrf
let g:AutoClosePreserveDotReg = 0

" set airline theme to minimalist
let g:airline_theme = 'minimalist'

" show hidden files in nerdtree
let NERDTreeShowHidden=1

" hide useless files in nerdtree
let NERDTreeIgnore=['\.o$', '\~$', '\.a$']

"---------------------------------------------------------------------------


 " -------------------------------Theme--------------------------------------
colorscheme monokai
set termguicolors
" --------------------------------------------------------------------------

" Strip whitespaces when save
autocmd BufWritePre * %s/\s\+$//e

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" --------------------------------alias --------------------------------------
 :command WQ wq
 :command Wq wq
 :command W w
 :command Q q

" ----------------------------------------------------------------------------
map <C-b> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>
" Keymap to navigate beetween buffer and nerdtree
noremap <C-Left> <C-W>h
noremap <C-Right> <C-W>l
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" shift+arrow selection
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>


vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i
map <C-v> pi
imap <C-v> <Esc>pi
imap <C-z> <Esc>ui
