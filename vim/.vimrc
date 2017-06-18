execute pathogen#infect()
filetype plugin indent on
set number
set mouse =a
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o






"auto indenting"
filetype indent on
set smartindent
autocmd BufRead,BufWritePre *.sh normal gg=G


"=================THEMES================"
syntax on
" Use vim with light color theme
"set background=dark

" Use solarized theme
colorscheme lucario

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
hi clear CursorLine
hi CursorLine gui=underline cterm=underline guifg=NONE ctermfg=NONE
set cursorline


"paste"











"=====================PLUGINS=============================="
"sensible vim"
runtime! plugin/sensible.vim


"NerdTree"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif





"NerdFont"
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11


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

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn


"Lightline"
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \   'git': '%{fugitive#statusline()}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }




"UNDOTREE"
if has("persistent_undo")
	    set undodir=~/.undodir/
	        set undofile
	endif


"EASYMOTION"

  let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)






"CTRLP"
set runtimepath^=~/.vim/bundle/ctrlp.vim









"SNIPPETS"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"




"vim-commentary"
autocmd FileType apache setlocal commentstring=#\ %s




"nerdcommenter"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
