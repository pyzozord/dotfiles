call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'altercation/vim-colors-solarized'
Plug 'sheerun/vim-polyglot'
"Plug 'tpope/vim-fugitive'
"Plug 'terryma/vim-multiple-cursors'
call plug#end()

" load sensible now so we can override it
runtime! plugin/sensible.vim

" colors
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" random
set encoding=utf-8
filetype plugin indent on
set cursorline
set number
set tabstop=2
set softtabstop=2
set smarttab
set shiftwidth=2
set shiftround
set expandtab
set autoindent
set smartindent
set laststatus=0
set hlsearch
set ttyfast
set incsearch
set wildmode=full
set bufhidden=hide
set hidden
set mouse=a
set rulerformat=%f
set nowrap
"set fillchars+=vert:\ 
"match ErrorMsg '\%>80v.\+'
"set spell spelllang=en_us

"windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
