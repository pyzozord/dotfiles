call plug#begin('~/.vim/plugged')
Plug 'christoomey/vim-system-copy'
Plug 'tpope/vim-sensible'
Plug 'altercation/vim-colors-solarized'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ternjs/tern_for_vim'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
" Plug 'mhinz/vim-startify'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
" Plug 'vim-syntastic/syntastic'
call plug#end()

" Load sensible now so we can override it
runtime! plugin/sensible.vim

" Colors
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Random
set path+=**
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
set noruler
set nowrap
set list
set listchars=tab:-\ ,trail:·
set colorcolumn=80

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Ale
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1

" Syntastic
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntastic_aggregate_errors = 1
" let g:syntastic_javascript_checkers = ["eslint"]
" let g:syntastic_javascript_eslint_exe="$(npm bin)/eslint"

" Windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
