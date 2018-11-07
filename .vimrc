filetype plugin indent on


call plug#begin('~/.vim/plugs')

Plug 'junegunn/rainbow_parentheses.vim'

call plug#end()

let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(',')'], ['{', '}'], ['[', ']']]
let g:rainbow#blacklist = [40, 255, 0]

"Line numbers, highlight matching parens, command bar to 2 lines, cursor
"location, and 
set nu
set showmatch
set cmdheight=1
set ruler
set smartcase
set ignorecase

" Tabs = 4 spaces, deleting tabs deletes all 4 spaces at once
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" Status line
set laststatus=2

set mouse=a

"Syntax highlighting on
syntax on
"Highlights searched text
set hlsearch

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-/> let @/=""

set t_Co=256
colorscheme monokai-soda
au VimEnter * RainbowParentheses
