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

For vinegar:
https://github.com/tpope/vim-vinegar/pull/55/files
