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
" Plug 'mhinz/vim-startify'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
call plug#end()

" Load some plugins now to override them
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

let g:ctrlp_custom_ignore = 'vendor\|node_modules\|DS_Store\|git'

" Ale
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1

" Multiple coursors
let g:multi_cursor_quit_key = '<c-c>'

augroup AfterEverythingElse
  autocmd!
  " Utis
  autocmd VimEnter * :nnoremap <c-w><c-w> :w<cr>
  autocmd VimEnter * :nnoremap <c-c><c-c><c-c> :qa!<cr>
  " Moving
  autocmd VimEnter * :nnoremap <c-j> 3j
  autocmd VimEnter * :nnoremap <c-k> 3k
  " Windows
  autocmd VimEnter * :nnoremap JJ <c-w>j
  autocmd VimEnter * :nnoremap KK <c-w>k
  autocmd VimEnter * :nnoremap LL <c-w>l
  autocmd VimEnter * :nnoremap HH <c-w>h
  " Buffers
  autocmd VimEnter * :nnoremap <c-n> :bn<cr>
  autocmd VimEnter * :nnoremap <c-b> :bp<cr>
  autocmd VimEnter * :nnoremap <c-x><c-x> :bd<cr>
augroup END
