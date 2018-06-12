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
Plug 'nathanaelkane/vim-indent-guides'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/AutoComplPop'
call plug#end()

" Load some plugins now to override them
runtime! plugin/sensible.vim

" Colors
syntax enable
set background=dark
set term=xterm-256color
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

" Omnicompletion
set completeopt=longest,menuone

let g:ctrlp_custom_ignore = 'vendor\|node_modules\|DS_Store\|git'

" Ale
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_delay = 10

" Multiple coursors
let g:multi_cursor_quit_key = '<c-c>'

augroup AfterEverythingElse
  autocmd!
  " Utis
  autocmd VimEnter * :inoremap <c-c> <esc>
  autocmd VimEnter * :nnoremap <c-w><c-w> :w<cr>
  autocmd VimEnter * :nnoremap <c-c><c-c><c-c> :qa!<cr>
  " Moving
  autocmd VimEnter * :nnoremap <c-j> 3j
  autocmd VimEnter * :nnoremap <c-k> 3k
  " Buffers
  autocmd VimEnter * :nnoremap <c-n> :bn<cr>
  autocmd VimEnter * :nnoremap <c-b> :bp<cr>
  autocmd VimEnter * :nnoremap <c-x><c-x> :bd<cr>
augroup END
