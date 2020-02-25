" ----------------------  README FIRST PLEASE ---------------------------------
" 1. Install monokay theme from : https://github.com/sickill/vim-monokai
" 2. Install Plug : curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 3. Open vim and type :PlugInstall
" 4. Enjoy ! :)
" -----------------------------------------------------------------------------

call plug#begin('~/.vim/plugged')
Plug 'AndrewRadev/linediff.vim'                   " vimdiff within a file
" Plug 'PeterRincker/vim-argumentative'             " change arguments position
Plug 'Townk/vim-autoclose'                      " autoclose brackets, parenthesis
Plug 'Yohannfra/Vim-Epitech'                    " Create epitech header
Plug 'Yohannfra/Vim-Flip'                         " flip booleans
Plug 'Yohannfra/Vim-Goto-Header'                " goto c/cpp header
Plug 'Yohannfra/Vim-Protect-Header'               "protect c/cpp header files
Plug 'Yohannfra/Vim-Vim-Project'                 " Vim project
Plug 'airblade/vim-gitgutter'                     " git diff in vim
Plug 'godlygeek/tabular'                        " quick text alignment
Plug 'joereynolds/vim-minisnip'                   " snippets engine
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " FZF
Plug 'junegunn/fzf.vim'                                           " FZF
Plug 'junegunn/goyo.vim'
Plug 'luochen1990/rainbow'                      " rainbow brackets, parenthesis
Plug 'machakann/vim-highlightedyank'            " make the yanked region apparent
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' } " tagbar
Plug 'morhetz/gruvbox'                          " a nice theme/colorschemes
Plug 'neoclide/coc.nvim', {'branch': 'release'} " LSP
Plug 'rhysd/vim-clang-format'                   " clang-format in vim
Plug 'sheerun/vim-polyglot'                     " Better syntax highlighting
Plug 'tell-k/vim-autopep8'                      " autopep8 in vim
Plug 'tpope/vim-commentary'                     " quick commenting
Plug 'tpope/vim-fugitive'                         " git integration
Plug 'tpope/vim-surround'                       " quick edit surround
Plug 'tpope/vim-vinegar'                        " file explorer
Plug 'itchyny/lightline.vim'                    " A statusline
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

" --------------------------  General Config ------------------------------- "

" set foldmethod to indent
set foldmethod=indent

" start with no folding
set foldlevelstart=99

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
set relativenumber

" show the file title in the terminal titlebar
set title

" enable syntax coloration
syntax enable

" enable mouse
set mouse=a

" encode with utf-8
set encoding=utf-8
set fileencodings=utf-8

" hilight the cursorline
set cursorline

" autoread file, if the file is changed outside of vim, it will ask you if you
" want to reload it
set autoread

" set a gap of X lines when scrolling vertically, so the scrolling start X lines
" before the last line
set so=5

" show a bar at the bottom of the file with some infos about the cursor, the
" line etc... (disable because i use powerline)
set noruler

" allow autocmd looking for filetype
filetype plugin on
filetype indent on

" show a vertical ruler a X columns
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

" autoindent when you're on an indented line and hit Enter, it will adjust the
" indentation of the new line
set autoindent
set smarttab

" show trailing spaces
set listchars=tab:>>,trail:_
set list

" set undolevel to max
set undolevels=9999

" split location
set splitbelow
set splitright

" vim update time
set updatetime=300

" Try to find open buffer before creating it
set switchbuf=usetab

" force neovim to use caret block in insert mode
set guicursor=

" Options for :mksession
" set sessionoptions="blank,curdir,tabpages,winsize,options,help,buffers,folds"

" Path var
set path+=**

" vimgrep ignore list
set wildignore+=a.out,*.o,*.png,*.jpg,*.ttf,tags,*.ogg*.wav

" To replace vim airline
set rulerformat=%30(%{&fileencoding?&fileencoding:&encoding}\ \ %y\ \ %P\ %l\/%L\ \:\ %c%)

set noshowmatch

" Highlight search
set hlsearch

" Hilight while typing
set incsearch

" nocompatible mode
set nocompatible

" always show tabline
set showtabline=2

" remove the _ from the separators list (FIXME)
" set iskeyword-=_

" --------------------------  Plugins Config ------------------------------- "

" enable rainbow brackets
let g:rainbow_active = 1

" Arduino plugin path
let g:arduino_dir="~/Logiciels/arduino/arduino-1.8.10"

" to fix a bug which wrote random code
let g:AutoClosePreserveDotReg = 0

" Config for GotoHeader
let g:goto_header_includes_dirs = ["/usr/include", ".", "..", "~"]
let g:goto_header_excludes_dirs = ["Music", "Logiciels", "Pictures", "Downloads"]
let g:goto_header_use_find = 0
let g:goto_header_search_flags = "-t f -s"
let g:goto_header_open_in_new_tab = 0
let g:goto_header_use_shorter_path = 1

" disable diff window for autopep8 plugin
let g:autopep8_disable_show_diff = 1

" hilight duration (1000 default)
let g:highlightedyank_highlight_duration = 200

" Protect Header add comment on endif line
let g:Protect_Header_Endif_Comment = 1

" Goyo config
let g:goyo_width = 120
let g:goyo_height = 100

" Fzf :Buffers config, jump to existing window if possible
let g:fzf_buffers_jump = 1


if has("nvim")
" FZF Window Config
let g:fzf_layout = { 'window': {'width': 0.9, 'height': 0.9} }
endif

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Coc fix
command! Fix :CocFix

" not hide .h in netrw
set suffixes-=.h

" Default size for :Lexplore
let g:netrw_winsize = 15

" tree view for netrw
let g:netrw_liststyle=3

" vimproject custom text
let g:vim_project_custom_variables= [
            \"\"If it is a project for Epitech",
            \"let g:is_epitech_project = 0",
            \"",
            \"\"autocmd for epitech projects",
            \"if g:is_epitech_project == 1",
            \"  augroup vimprojectAutocmds",
            \"      autocmd!",
            \"      autocmd BufReadPost,BufNewFile *.c,*.h,*.py,Makefile,*.cpp,*.hpp",
            \"          \\ call epitech_header#Check_epitech_header()",
            \"  augroup END",
            \"else",
            \"  augroup vimprojectAutocmds",
            \"      autocmd!",
            \"  augroup END",
            \"endif"
            \]

" skip epitech header if ther is one
let g:Protect_Header_Skip_Epitech_Header = 1

" Commands to overide FZF default options
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options':
    \ ['--layout=reverse', '--info=inline', '--preview', 'bat -p --color always {}']}, <bang>0)

" command! -bang -nargs=* Rg call fzf#vim#grep
"             \("rg --column --line-number --no-heading --color=always --smart-case "
"             \.shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'},
"             \<bang>0)

  " \{'options': '--delimiter : --nth 4..'},
command! -bang -nargs=* Rg
  \ call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case ' . shellescape(<q-args>), 1,
  \ fzf#vim#with_preview(),
  \ <bang>0)

command! -nargs=0 Cd call fzf#run(fzf#wrap(
  \ {'source': 'fd '.' -t d',
  \  'sink': 'cd'}))

" ----------------- Shortcuts for plugins / external stuff ----------------- "

" space as leader key
let mapleader=" "
nmap \ <Leader>

" map F12 to the function GotoHeader
nnoremap <F12> :GotoHeader <CR>
inoremap <F12> <Esc>:GotoHeader <CR>

" a command to format json files easily
command! Jq :%!jq .

" map gh to GotoHeader#Switch
nnoremap gh :GotoHeaderSwitch <CR>

" navigate through tags with fzf
nnoremap ]] :Tags <CR>

" Switch buffer with fzf
nnoremap S :Buffers<CR>

" FZF
nnoremap t :silent! Files .<CR>

" FZF search through files with :Rg
nnoremap <Leader>g :Rg <CR>

" FZF search in files lines
nnoremap <Leader>/ :BLines <CR>

" autocomplete path using <C-f>
imap <c-f> <plug>(fzf-complete-path)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Generate ctags
command! Gt :execute "! ctags --extra=+f --c-kinds=+p -R ."

" Toggle TagBar
nnoremap <Leader><F8>  :TagbarToggle<CR>

" map F5 to my ao script
nnoremap <F5> :!ao <CR>

" Gen Cpp Class
command! -nargs=1 -complete=file Gclass :r !gen_cpp_class <f-args>
command! -nargs=1 -complete=file Uclass :r !gen_cpp_class <f-args> '%:p'

" Vim-Project plugin
nnoremap <F3> :VimProjectBuild <CR>
nnoremap <F4> :VimProjectRun<CR>

" Flip plugin
nnoremap <Leader>p :Flip <CR>
let g:vim_flip_dict = {
            \"true" : "false",
            \"True" : "False",
            \ "TRUE": "FALSE",
            \ "0"   : "1",
            \ "on"  : "off"
            \}

let g:startify_bookmarks = ["~/.vimrc", "~/.config/i3/config", "~/.zshrc"]

function! OpenFiles(...)
    if a:0 == 1
        let fp = a:1
    else
        let fp = '.'
    endif
    execute "! xdg-open " . fp
endfunction
command! -narg=? -complete=file OP :call OpenFiles(<f-args>)

" ------------------------ Color and Themes ------------------------------ "

if $TERM !=# "rxvt-unicode-256color" && $TERM !=# "xterm-256color"
            \ && $TERM != "screen"
    set termguicolors
endif

if has("nvim")
    let g:gruvbox_italic = 0
    let g:gruvbox_contrast_dark = 'hard'
    let g:gruvbox_contrast_light = 'hard'
    let g:gruvbox_invert_tabline = 1
    set background=dark
    colorscheme gruvbox
else
    colorscheme monokai
endif

" set the color of the error column the same as the bg
hi! link SignColumn Normal

" Toggle transparency
let g:is_transparent = 0
function! Toggle_transparent()
    if g:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let g:is_transparent = 1
    else
        colorscheme gruvbox
        let g:is_transparent = 0
    endif
endfunction
nnoremap <Leader>t : call Toggle_transparent()<CR>

" Highlight _t in c and in cpp
augroup highlight_t_in_c
    autocmd!
    autocmd Syntax c,cpp syntax match cStructure /\w*_t\s/
    autocmd Syntax c,cpp syntax match cStructure /\w*_t;/
    autocmd Syntax c,cpp syntax match cStructure /\w*_t)/
augroup end

" ------------------------ Autocmds ------------------------------ "

augroup all_files
autocmd!
" Strip whitespace when save
autocmd BufWritePre * %s/\s\+$//e

" Return to last edit position when opening files
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   execute "normal! g`\"" |
            \ endif

augroup END

" Autoprotect new header files
autocmd BufNewFile *.h,*.hpp :Protect

" Use html syntax for .emProject files
autocmd BufNewFile,BufRead *.emProject set filetype=html
autocmd BufNewFile,BufRead pymakr.conf set filetype=json

" Indent with tabs in makefiles
autocmd FileType make setlocal noexpandtab shiftwidth=8 softtabstop=0

" ------------------------ Internals Shortcuts ------------------------------ "

" to edit the vimrc quicker
nnoremap <Leader>ev :vsplit ~/.vimrc<CR>

" to reload vimrc
nnoremap <Leader>sv :source ~/.vimrc <CR>

" map semicolon as colon to avoid pressing shift
:nmap ; :

" map " to : so i don't make mistake all the time
nnoremap " :
nnoremap '; :
nnoremap ': :

" map ! to :! to type in shell commands easily
nnoremap ! :!

" map space to i in normal mode
" nnoremap <Space> i
nnoremap <Leader><Leader> i

" allow to indent with tab and remove indent with shift + tab
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Shortcuts to navigate between buffers
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <C-k> <C-W>k
nnoremap <C-j> <C-W>j

" Find and replace easier
nnoremap <C-g> :%s/
xnoremap <C-g> :s/

" increment and decrement numbers in code
nnoremap + <C-a>
nnoremap _ <C-x>

" switch buffer easily
nnoremap ( gT
nnoremap ) gt
nnoremap gr gT

" open a terminal with maj+t
nnoremap <S-T> :split <bar> resize 20 <bar> term <CR>

" escape terminal with escape
autocmd! FileType fzf tnoremap <buffer> <ESC> <C-c>
tnoremap <Esc> <C-\><C-n>

" resize buffer with shortcut
nnoremap <silent> <Leader>+ :vertical resize +10 <CR>
nnoremap <silent> <Leader>- :vertical resize -10 <CR>
nnoremap <silent> <Leader>) :resize +10 <CR>
nnoremap <silent> <Leader>( :resize -10 <CR>

" map leader enter to add an empty new line
nnoremap <Enter> O<Esc>j

" disable command history (q:)
nnoremap q: <nop>

" Map L to $
vnoremap L $
nnoremap L $

" Map J to j
vnoremap J j
nnoremap J j

vnoremap KK kk

" disable help menu
nnoremap <F1> <nop>
inoremap <F1> <nop>

" map Ctrl + q to :qa
nnoremap <C-q> :qa<CR>
inoremap <C-q> <Esc>:qa<CR>

" map Ctrl + s to :w
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

" Move lines up and down
nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
inoremap <C-Down> <Esc>:m .+1<CR>==gi
inoremap <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv

" Highlight identical word          /!\ it remap m in normal mode
vnoremap <silent> m :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy:match Error "<C-R><C-R>=substitute(
  \escape(@", '/".*$^~['), '_s+', '\_s\+', 'g')<CR>"<CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

nnoremap m :match Error "<C-R><C-W>"<CR>

nnoremap <Leader>m :match none <CR> :noh <CR>h

" select the line except \n
nnoremap <Leader>hl 0v$h

" Ctags
" Map \ + Ctrl + [ to jump to tag in a new tab
nnoremap <silent><Leader><C-]> <C-w>g<C-]><C-w>T

" Map Ctrl + h to jump to header with ctags
nnoremap <C-f> vi"<C-]><CR>

" Map \ + Ctrl + h to jump to header with ctags in a new tab
nnoremap <silent><Leader><C-f> vi"<C-w><C-]><C-w>T<CR>

" map ctrl i to jump back to tag (it's the default mapping but a plugin use it)
nnoremap <C-p> <C-i>

" to select the tag i prefer, easier to type
nnoremap <C-]> g<C-]>

" To not go back one character when exiting insert mode
inoremap <Esc> <Esc>l
inoremap <C-c> <C-c>l

" exit normal mode with jk to avoid pressing esc
inoremap jk <Esc>l

" easy switch to last buffer
nnoremap <Leader>f :b#<CR>

" map leader [/] to navigate between buffers
nnoremap <Leader>[ :bprevious <CR>
nnoremap <Leader>] :bnext <CR>

" Select word in visual mode
vnoremap W iw

" delete word after cursor in insert mode
inoremap <C-e> <Esc>ldei

" undo in insert mode
inoremap <C-u> <C-o>u

" ------------------------ Abbrev / Alias ------------------------------ "

" save layout easily
command! Sl :mksession! .vimsession
command! Rl :source .vimsession

" some alias
:command! WQ wq
:command! Wq wq
:command! W w
:command! Q q

" some abbrev
cabbrev tn tabnew
cabbrev te tabedit

" to be inside quotes/brackets... in insert mode
" inoremap "" ""<Left>
" inoremap '' ''<Left>
" inoremap () ()<Left>
" inoremap {} {}<Left>
" inoremap [] []<Left>

" I think that this is a better and less anoying solution.
" still need time to figure out
inoremap <C-d> <Left>
inoremap <C-f> <Right>

" got to begening of line the way i like
" stackoverflow.com/questions/2035799/pressing-home-in-vim-on-an-indented-line
function! ExtendedHome()
    let column = col('.')
    normal! ^
    if column == col('.')
        normal! 0
    endif
endfunction

nnoremap H :call ExtendedHome()<CR>
nnoremap 0 :call ExtendedHome() <CR>
nnoremap <silent> <Home> :call ExtendedHome()<CR>
inoremap <silent> <Home> <C-O>:call ExtendedHome()<CR>

" Go to tab by number
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt
nnoremap <Leader>0 :tablast<CR>

" increments in visual block
vnoremap + g<C-a><CR>

" align text easily
nnoremap <Leader>h :left <CR>
vnoremap <Leader>h :left <CR>
nnoremap <Leader>l :right <CR>
vnoremap <Leader>l :right <CR>

" expand function proto to function for c/c++
function! ExpandProtoToFunctionVisual() range
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    execute ":" . (line_start)
    while line_start <= line_end
        execute "normal $s\n{\n\n}\n"
        normal j
        let line_start += 1
    endwhile
endfunction

nnoremap <Leader>q $s<CR>{<CR><CR>}<CR><ESC>j
vnoremap <Leader>q :call ExpandProtoToFunctionVisual() <CR>

" Toggle background color from white to dark
function! ToggleLightDark()
    if &background ==# "dark"
        set background=light
        colorscheme PaperColor
    else
        set background=dark
        colorscheme gruvbox
    endif
endfunction

nnoremap <Leader>B :call ToggleLightDark()<CR>

" Search for the world under cursor
nnoremap <Leader>b #N
vnoremap <Leader>b y/<C-r>"<CR>N

" Kind of find and replace
nnoremap <C-d> #Ncgn
vnoremap <C-d> y/<C-r>"<CR>Ncgn

" disable pageup and pagedown
nnoremap <PageUp> <NOP>
nnoremap <PageDown> <NOP>

" navigate within the file
nnoremap < H
nnoremap > L

" repeat last f or t
nnoremap , ;
