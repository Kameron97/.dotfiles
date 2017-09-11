
execute pathogen#infect()
filetype plugin indent on
set number
set mouse =a
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set nocompatible





"auto indenting"
filetype indent on
set smartindent
autocmd BufRead,BufWritePre *.sh normal gg=G


"=================THEMES================"
syntax on
set encoding=utf8
set laststatus=2
set showtabline=1
set showcmd
set nowrap
set linebreak

set winminwidth=20
set winheight=7
set winminheight=7
set textwidth=80
set wildchar=<Tab> wildmenu wildmode=full

hi clear CursorLine
hi CursorLine gui=underline cterm=underline guifg=NONE ctermfg=NONE
set cursorline

set clipboard=unnamedplus

