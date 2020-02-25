# My vim config

I use neovim instead of vim but most of my configuration is compatible for both

## Theme

the default theme for my nvim is gruvbox but with vim i prefer monokai.
Install monokai theme from : https://github.com/sickill/vim-monokai

## Plugin manager

Plug is my plugin manager

Install it with :
```
./install_my_conf.sh
```

## Setup

```
:PlugInstall
```

## lsp

python :
```
CocInstall coc-python
```

c/c++ :
install clangd

rust :
```
CocInstall coc-rls
```

## Some custom advanced config

### For vinegar:

To quit it easily using <C-o>\
add :
```vim
nnoremap <buffer> <C-o> :Rexplore<CR>
```
at the end of the last function.

### For lightline:
To hide the ... in the tabline\
In lightline/autoload/lightline.vim line 464\
add :
```vim
return [x, y, z]
```
Just after the endfor in function lightline#tabs().
