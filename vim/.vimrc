" ----------------------  README FIRST PLEASE ---------------------------------
" 1. Install monokay theme from : https://github.com/sickill/vim-monokai
" 2. Install Plug : curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 3. Open vim and type :PlugInstall
" 4. Enjoy ! :)
" -----------------------------------------------------------------------------

call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline' " a nice bar at the bottom
Plug 'vim-airline/vim-airline-themes' " themes for vim-airline
Plug 'ianks/vim-tsx' " allow tsx coloration in vim
Plug 'junegunn/goyo.vim' " goyo is a distraction free mode :Goyo to activate
Plug 'vim-scripts/CycleColor' " Cycles through available colorschemes, make it easier to test them all
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fuzzy finder for vim
Plug 'junegunn/fzf.vim' " same
Plug 'machakann/vim-highlightedyank' " make the yanked region apparent (try yy)
Plug 'scrooloose/nerdtree' " nerdTree
Plug 'luochen1990/rainbow' " rainbow brackets, parenthesis ...
Plug 'scrooloose/nerdcommenter' " nerdcommenter to quick comment line
Plug 'Townk/vim-autoclose' " autoclose brackets, parenthesis...
call plug#end()

" Disable beeping
set noerrorbells
set vb t_vb=

" show line numbers
set number
"set relativenumber

" show the file title in the terminal titlebar
set title

" enable syntax coloration
syntax enable

" enable mouse
set mouse=a

" don't hilight word when searching
set nohlsearch

" encode with utf-8
set encoding=utf-8
set fileencodings=utf-8

" hilight the cursorline
set cursorline

" autoread file, if the file is changed outside of vim, it will ask you if you
" want to reload it
set autoread

" set a gap of X lines when scolling verticaly, so the scrolling start X lines
" before the last line
set so=5

" show a bar at the bottom of the file with some infos about the cursor, the
" line etc...
set ruler

" allow autocmd looking for filetype
filetype plugin on

" show a vertical ruller a X columns
set cc=81

" remove a bug with cc and NERDTree, keep it
set textwidth=0

" disable line wrapping
set nowrap

" indent with 4 spaces
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4

" autoindent when you're on an indented line and hit Enter, it will ajust the
" indentation of the new line
set autoindent
set smarttab

" show trailing spaces
set listchars=tab:..,trail:_
set list

" set undolevel to max
set undolevels=9999

" NERDCommenter allow to quick comment line using \cc to comment and \cu to uncoment
let g:NERDToggleCheckAllLines = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" enable rainbow brackets
let g:rainbow_active = 1

" to fix a bug who wrote radom code wrf
let g:AutoClosePreserveDotReg = 0

" set airline theme to minimalist
let g:airline_theme = 'minimalist'

" show hidden files in nerdtree
let NERDTreeShowHidden=1

" hide useless files in nerdtree
let NERDTreeIgnore=['\.o$', '\~$', '\.a$']

" colors and theme
colorscheme monokai
set termguicolors

" set tranparent background to vim
" hi Normal guibg=NONE ctermbg=NONE

" Strip whitespaces when save
autocmd BufWritePre * %s/\s\+$//e

" Return to last edit position when opening files
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif


" some alias
:command WQ wq
:command Wq wq
:command W w
:command Q q

" allow to indent with tab and remove indent with shoft + tab
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Keymap to navigate beetween buffer and nerdtree
noremap <C-Left> <C-W>h
noremap <C-Right> <C-W>l

" open NERDTree with Ctrl + b
map <C-b> :NERDTreeToggle<CR>

" open Fzf with Ctrl + p
map <C-p> :FZF<CR>

" Automaticly open NERDTree if there are no file as arguments
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

" map semicolon as colon to avoid pressing shift
:nmap ; :

" force neovim to use caret block in insert mode
set guicursor=

" disable commanmd history (q:)
nnoremap q: <nop>
