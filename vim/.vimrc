call plug#begin('~/.vim/plugged')
" core shit
Plug 'roxma/nvim-yarp'
Plug 'christoomey/vim-system-copy'
Plug 'chriskempson/base16-vim'
" grok vim bro
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'jiangmiao/auto-pairs'
Plug 'wellle/targets.vim'
Plug 'qpkorr/vim-bufkill'
" excessive shit
Plug 'editorconfig/editorconfig-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'iamcco/markdown-preview.vim'
Plug 'luochen1990/rainbow'
" git shit
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
" Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
" tag shit
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
" language support shit
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
" Plug 'peitalin/vim-jsx-typescript'
Plug 'fatih/vim-go'
Plug 'StanAngeloff/php.vim'
Plug 'StanAngeloff/php.vim'
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'stephpy/vim-php-cs-fixer'
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

let g:rainbow_active = 1

" Ale
let g:ale_linters = {'typescript': ['prettier', 'tsserver'], 'javascript': ['prettier', 'eslint'], 'go': ['gometalinter']}
let g:ale_fixers = {'typescript': ['prettier'], 'javascript': ['prettier', 'eslint'], 'go': ['gofmt', 'goimports']}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

" CtrlP
let g:ctrlp_custom_ignore = 'vendor\|node_modules\|DS_Store\|\.git'

" Targets
let g:targets_argOpening = '[({[]'
let g:targets_argClosing = '[]})]'

" Multiple cursors
let g:multi_cursor_quit_key = '<c-c>'
function! Multiple_cursors_before()
  call ncm2#lock('vim-multiple-cursors')
endfunction
function! Multiple_cursors_after()
  call ncm2#unlock('vim-multiple-cursors')
endfunction

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

nnoremap ]q :cnext<cr>
nnoremap [q :cprevious<cr>
nnoremap [Q :cfirst<cr>
nnoremap ]Q :clast<cr>
nnoremap <leader>q :copen<cr>

nnoremap ]l :lnext<cr>
nnoremap [l :lprevious<cr>
nnoremap [L :lfirst<cr>
nnoremap ]L :llast<cr>
nnoremap <leader>l :lopen<cr>

" function! FormatJson()
"   :'<,'>!jq .
" endfunction

" vnoremap <leader>js :call FormatJson()<cr>
