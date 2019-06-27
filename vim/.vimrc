call plug#begin('~/.vim/plugged')
Plug 'roxma/nvim-yarp'
Plug 'christoomey/vim-system-copy'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'jiangmiao/auto-pairs'
Plug 'wellle/targets.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'qpkorr/vim-bufkill'
Plug 'iamcco/markdown-preview.vim'
Plug 'luochen1990/rainbow'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'fatih/vim-go'
Plug 'sheerun/vim-polyglot'
" Plug 'peitalin/vim-jsx-typescript'
Plug 'w0rp/ale'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'StanAngeloff/php.vim'
call plug#end()

" Load some plugins now to override them
runtime! plugin/sensible.vim

" Colors
set termguicolors
colorscheme base16-tomorrow-night
colorscheme base16-chalk
syntax enable
set background=dark
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE
highlight SignifySignAdd ctermbg=NONE guibg=NONE
highlight SignifySignDelete ctermbg=NONE guibg=NONE
highlight SignifySignChange ctermbg=NONE guibg=NONE

" Random
let mapleader=" "
set path+=**
set encoding=utf-8
filetype plugin indent on
set smarttab
set shiftwidth=2
set shiftround
set expandtab
set autoindent
set smartindent
" set softtabstop=2
set laststatus=0
set incsearch
set wildmode=full
set bufhidden=hide
set hidden
set mouse=a
set noruler
set nowrap
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:␣,trail:·
set splitright
set completeopt=noinsert,menuone,noselect
" set spell
set diffopt=vertical

" Rainbow
let g:rainbow_active = 1

" CtrlP
let g:ctrlp_custom_ignore = 'vendor\|node_modules\|DS_Store\|\.git'

" Targets
let g:targets_argOpening = '[({[]'
let g:targets_argClosing = '[]})]'

" Ale
let g:ale_linters = {'typescript': ['tsserver', 'prettier'], 'javascript': ['eslint'], 'go': ['gometalinter']}
let g:ale_fixers = {'typescript': ['prettier'], 'javascript': ['eslint'], 'go': ['gofmt', 'goimports']}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

map \ <leader>
inoremap <c-c> <esc>
nnoremap <c-w><c-w> :w<cr>
nnoremap <c-c><c-c> :qa!<cr>
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeFind<cr>
nnoremap <leader>g :TagbarToggle<cr>

noremap <c-j> 3j
noremap <c-k> 3k
noremap <c-h> ^
noremap <c-l> $

nnoremap <c-n> :bn<cr>
nnoremap <c-b> :bp<cr>
nnoremap <c-x><c-x> :BD!<cr>

autocmd BufWritePost .vimrc :source %
