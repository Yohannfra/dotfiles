" ----------------------  README FIRST PLEASE ---------------------------------
" 1. Install monokay theme from : https://github.com/sickill/vim-monokai
" 2. Install Plug : curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 3. Open vim and type :PlugInstall
" 4. Enjoy ! :)
" -----------------------------------------------------------------------------

call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'                        " a nice bar at the bottom
Plug 'vim-airline/vim-airline-themes'           " themes for vim-airline
Plug 'ianks/vim-tsx'                            " allow tsx coloration in vim
Plug 'machakann/vim-highlightedyank'            " make the yanked region apparent
Plug 'scrooloose/nerdtree'                      " nerdTree
Plug 'ryanoasis/vim-devicons'                   " add icons in nerdtree and powerline
Plug 'luochen1990/rainbow'                      " rainbow brackets, parenthesis
Plug 'Townk/vim-autoclose'                      " autoclose brackets, parenthesis
Plug 'rhysd/vim-clang-format'                   " clang-format in vim
Plug 'godlygeek/tabular'                        " quick text alignement
Plug 'tpope/vim-surround'                       " quick edit surround
Plug 'vim-scripts/SearchComplete'               " autocomplete search with tab
Plug 'sheerun/vim-polyglot'                     " Better syntax hilighthing
Plug 'neoclide/coc.nvim', {'branch': 'release'} " LSP
if has("nvim")
Plug 'seletskiy/vim-pythonx'
Plug 'Yohannfra/Nvim-Switch-Buffer'
endif
Plug 'terryma/vim-multiple-cursors'             " Muttiple cursors in vim
Plug 'Yohannfra/Vim-Epitech'                    " Create epitech header
Plug 'Yohannfra/Vim-Goto-Header'                " goto c/cpp header
Plug 'morhetz/gruvbox'                          " a nice theme/colorschemes
Plug 'tell-k/vim-autopep8'                      " autopep8 in vim
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

" set foldmethod to indent
set foldmethod=indent

" start with no folding
set foldlevelstart=99

" to edit the vimrc quicker
nnoremap <Leader>ev :vsplit ~/.vimrc<CR>

" to reload vimrc
nnoremap <Leader>sv :source ~/.vimrc <CR>

" default vim shell
set shell=/bin/zsh

" use system clipboard
set clipboard=unnamedplus

" Persistent undo
set undodir=~/.vim/undo-dir
set undofile

" Disable beeping
set noerrorbells
set vb t_vb=

" fileformat for new file
set fileformats=unix

" show line numbers
set number
" set relativenumber

" show the file title in the terminal titlebar
set title

" enable syntax coloration
syntax enable

" enable mouse
set mouse=a

" don't hilight word when searching
" set nohlsearch

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
" line etc... (disable because i use powerline)
set noruler

" allow autocmd looking for filetype
filetype plugin on

" show a vertical ruller a X columns
set colorcolumn=81

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

" enable rainbow brackets
let g:rainbow_active = 1

" to fix a bug which wrote random code wtf
let g:AutoClosePreserveDotReg = 0

" set airline theme to minimalist
let g:airline_theme = 'minimalist'

" show hidden files in nerdtree
let NERDTreeShowHidden=1

" hide useless files in nerdtree
let NERDTreeIgnore=['\.o$', '\~$', '\.a$']

" colors and theme
if $TERM !=# "rxvt-unicode-256color"
    set termguicolors
endif
if has("nvim")
    let g:gruvbox_italic=1
    let g:gruvbox_contrast_dark='hard'
    let g:gruvbox_contrast_light='hard'
    set background=dark
    colorscheme gruvbox
else
    colorscheme monokai
endif

" set tranparent background to vim
" hi Normal guibg=NONE ctermbg=NONE

" split location
set splitbelow
set splitright

augroup all_files
autocmd!
" Strip whitespaces when save
autocmd BufWritePre * %s/\s\+$//e

" Return to last edit position when opening files
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif
augroup END

" Autoprotect new header files
autocmd BufNewFile *.h,*.hpp :Protect

" Use html syntax for .emProject files
autocmd BufNewFile,BufRead *.emProject set filetype=html

" Automaticly open NERDTree if there are no file as arguments
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" some alias
:command! WQ wq
:command! Wq wq
:command! W w
:command! Q q

" some abbrev
cabbrev tn tabnew
cabbrev te tabedit

" allow to indent with tab and remove indent with shoft + tab
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Keymap to navigate beetween buffer and nerdtree
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <C-k> <C-W>k
nnoremap <C-j> <C-W>j

" open NERDTree with Ctrl + b
map <C-b> :NERDTreeToggle<CR>

" Find and replace easier
nnoremap <C-g> :%s/
xnoremap <C-g> :s/

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

" open a terminal with maj+t
nmap <S-T> :split <bar> resize 20 <bar> term <CR>

" resize buffer with shortcut
nnoremap <silent> <Leader>+ :vertical resize +10 <CR>
nnoremap <silent> <Leader>- :vertical resize -10 <CR>
nnoremap <silent> <Leader>) :resize +10 <CR>
nnoremap <silent> <Leader>( :resize -10 <CR>

" map leader enter to add an empty new line
nmap <Leader><Enter> O<Esc>j

" escape terminal with escape
tnoremap <Esc> <C-\><C-n>

" map semicolon as colon to avoid pressing shift
:nmap ; :

" force neovim to use caret block in insert mode
" set guicursor=

" disable commanmd history (q:)
nnoremap q: <nop>

" map HJKL to hjkl (to avoid mistake if caps lock is on)
vnoremap H 0
vnoremap J j
vnoremap K k
vnoremap L $

nnoremap H 0
nnoremap J j
nnoremap L $

" disable help menu
nnoremap <F1> <nop>
inoremap <F1> <nop>

" map space to i in normal mode
nnoremap <Space> i

" map Ctrl + q to :qa
nnoremap <C-q> :qa<CR>
imap <C-q> <Esc>:qa<CR>

" map Ctrl + s to :w
nnoremap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>

" map F5 to my ao script
nnoremap <F5> :!ao <CR>

" map F12 to the function GotoHeader
nnoremap <F12> :GotoHeader <CR>
imap <F12> <Esc>:GotoHeader <CR>

" Config for GotoHeader
let g:goto_header_includes_dirs = ["/usr/include", ".", "..", "~"]
let g:goto_header_excludes_dirs = ["Music", "Logiciels", "Pictures", "Downloads"]
let g:goto_header_use_find = 0
let g:goto_header_search_flags = "-t f -s"
let g:goto_header_open_in_new_tab = 1

" disable diff window for autopep8 plugin
let g:autopep8_disable_show_diff=1

" Move lines up and down
nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
inoremap <C-Down> <Esc>:m .+1<CR>==gi
inoremap <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv

" Hilight identical word          /!\ it remap m in normal mode
vnoremap <silent> m :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy:mat Error "<C-R><C-R>=substitute(
  \escape(@", '/".*$^~['), '_s+', '\_s\+', 'g')<CR>"<CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

nnoremap m :mat Error "<C-R><C-W>"<CR>
noremap <S-m> :mat none <CR> :noh <CR>

" Ctags
" Map \ + Ctrl + [ to jump to tag in a new tab
nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T

" Map Ctrl + h to jump to header with ctags
nnoremap <C-f> vi"<C-]><CR>

" Map \ + Ctrl + h to jump to header with ctags in a new tab
nnoremap <silent><Leader><C-f> vi"<C-w><C-]><C-w>T<CR>

" map ctrl i to jump back to tag (it's the default maping but a plugin use it)
nnoremap <C-p> <C-i>

" Spawn SwitchBuffer Plugin
nnoremap S :SwitchBuffer <CR>

" change case in insert mode
inoremap <C-u> <Esc>lvawU<Esc>i
inoremap <C-l> <Esc>lvawu<Esc>i

" To not go back one caracter when exiting insert mode
inoremap <Esc> <Esc>l
noremap <C-c> <C-c>l

" exit normal mode with jk to avoid pressing esc
inoremap jk <Esc>

" easy switch to last buffer
nnoremap <Leader>f :b#<CR>

" debug abbrev
iabbrev pflu printf("LUUU\n");

" map " to : so i don't make mistake all the time
nnoremap " :

" map leader [/] to navigate beetween buffers
nnoremap <Leader>[ :bprevious <CR>
nnoremap <Leader>] :bnext <CR>

" FZF Config
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
silent! function! FloatingFZF()
    let buf = nvim_create_buf(v:false, v:true)
    call setbufvar(buf, '&signcolumn', 'no')

    let opts = {'relative': 'editor',
                \ 'row': 0,
                \ 'col': (&columns / 2) - ((&columns / 2) / 2),
                \ 'width': &columns / 2,
                \ 'height': 10
                \}
    call nvim_open_win(buf, v:true, opts)
    nnoremap <buffer> <Esc> :q <CR>
endfunction
nnoremap t :silent! FZF .<CR>

" to select the tag i prefer, easier to type
nnoremap <C-]> g<C-]>

" Use K to show documentation in preview window
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
