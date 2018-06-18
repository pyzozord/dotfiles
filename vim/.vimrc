call plug#begin('~/.vim/plugged')
" Utils
Plug 'christoomey/vim-system-copy'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'
Plug 'nathanaelkane/vim-indent-guides'
" Programming
Plug 'sheerun/vim-polyglot'
" Plug 'ternjs/tern_for_vim'
Plug 'w0rp/ale'
" Themes
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Completion
" Plug 'vim-scripts/AutoComplPop'
" Plug 'aperezdc/vim-lift'
Plug 'maralla/completor.vim'
call plug#end()

" Load some plugins now to override them
runtime! plugin/sensible.vim

" Colors
if empty($TMUX)
  let g:solarized_termcolors=256
  colorscheme solarized
else
  set termguicolors
  let base16colorspace=256
  colorscheme base16-tomorrow-night
endif
syntax enable
set background=dark
set term=xterm-256color
highlight Normal guibg=NONE
highlight LineNr guibg=NONE

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
set splitright

" Omnicompletion
set completeopt=longest,menuone

let g:ctrlp_custom_ignore = 'vendor\|node_modules\|DS_Store\|git'

" Ale
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1

" Multiple coursors
let g:multi_cursor_quit_key = '<c-c>'

" Completor
let g:completor_min_chars = 1

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
