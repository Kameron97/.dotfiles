execute pathogen#infect()
filetype plugin indent on
set number

syntax on
" Use vim with light color theme
set background=dark

" Use solarized theme
colorscheme solarized

" Set the standard encoding
set encoding=utf8


" Always show the status line
set laststatus=2

" Always show tab line
set showtabline=1

" Show (partial) command in status line
set showcmd



" Set whether a line that doesn't fit into a window is wrapped around
" at the end of the window.
set nowrap

" Make Vim wrap long lines at specified characters instead of wrapping
" at the last character in the line.
set linebreak






" set window sizing
set winminwidth=20
set winheight=7
set winminheight=7

" Set the maximum width of text that is being inserted without breaking
" it to a new line.
" Setting this value to '0' disables this option.
set textwidth=80

" autocomplete commands and filepaths in the vim-cl
set wildchar=<Tab> wildmenu wildmode=full

" Show the cursor line by default
set cursorline











runtime! plugin/sensible.vim

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
