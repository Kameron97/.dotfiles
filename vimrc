execute pathogen#infect()
filetype plugin indent on
set number
set mouse =a
autocmd FileType * setlocal formatoptions-=c formatoptions-=r 
"formatoptions-=o
set nocompatible

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12

"auto indenting"
filetype indent on
"set smartindent
autocmd BufRead,BufWritePre *.sh normal gg=G


"=================THEMES================"
syntax on
set encoding=utf8
set laststatus=2
set showtabline=1
set showcmd
set nowrap
"set linebreak

set winminwidth=20
set winheight=7
set winminheight=7
set textwidth=80
set wildchar=<Tab> wildmenu wildmode=full

hi clear CursorLine
hi CursorLine gui=underline cterm=underline guifg=NONE 
"ctermfg=NONE"
set cursorline

set clipboard=unnamedplus
"NERD TREEE
map <C-l> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


"NERD TREE GIT
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_c_checkers = ['gcc']
let g:syntastic_c_compiler_options = ' -std=gnu11'

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn



let g:pymode_python = 'python3'


"AIRLINE
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='bubblegum'




