call plug#begin('~/.vim/plugged')
" Vim / Nvim stuff
if has('nvim')
  Plug 'roxma/nvim-yarp'
else
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" Utils
Plug 'christoomey/vim-system-copy'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'jiangmiao/auto-pairs'
Plug 'wellle/targets.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'qpkorr/vim-bufkill'
Plug 'iamcco/markdown-preview.vim'
Plug 'luochen1990/rainbow'
" Programming
Plug 'sheerun/vim-polyglot'
" Plug 'ternjs/tern_for_vim'
Plug 'w0rp/ale'
" Themes
Plug 'chriskempson/base16-vim'
" Git
Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Completion
" Plug 'vim-scripts/AutoComplPop'
" Plug 'aperezdc/vim-lift'
" Plug 'maralla/completor.vim'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'filipekiss/ncm2-look.vim'
Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
" Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
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
set incsearch
set wildmode=full
set bufhidden=hide
set hidden
set mouse=a
set noruler
set nowrap
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:␣,trail:·
" set colorcolumn=80
set splitright
set completeopt=noinsert,menuone,noselect
set spell

" Rainbow
let g:rainbow_active = 1

" Signify
highlight SignifyLineChangeDelete ctermbg=NONE guibg=NONE
highlight SignifyLineDeleteFirstLine ctermbg=NONE guibg=NONE

" Nerdtree
let NERDTreeShowHidden=1

" CtrlP
let g:ctrlp_custom_ignore = 'vendor\|node_modules\|DS_Store\|git'

" Targets
let g:targets_argOpening = '[({[]'
let g:targets_argClosing = '[]})]'

" Multiple coursors
let g:multi_cursor_quit_key = '<c-c>'
function! Multiple_cursors_before()
  call ncm2#lock('vim-multiple-cursors')
endfunction
function! Multiple_cursors_after()
  call ncm2#unlock('vim-multiple-cursors')
endfunction

" Ale
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1

" Deoplete.
" let g:deoplete#enable_at_startup = 1
" call deoplete#custom#option({
" \ 'auto_complete_delay': 200,
" \ 'smart_case': v:true,
" \ })

" Completor
" let g:completor_min_chars = 1

" Tern
" let g:tern_request_query = { 'completions': { 'includeKeywords': 1, 'sort': 1, 'guess': 1, 'url': 1, 'caseInsensitive': 1, 'origins': 1 } }

" NCM2
autocmd BufEnter * call ncm2#enable_for_buffer()

augroup AfterEverythingElse
  autocmd!
  " Utis
  autocmd VimEnter * :map \ <leader>
  autocmd VimEnter * :inoremap <c-c> <esc>
  autocmd VimEnter * :nnoremap <c-w><c-w> :w<cr>
  autocmd VimEnter * :nnoremap <c-c><c-c> :qa!<cr>
  autocmd VimEnter * :nnoremap <leader>t :NERDTreeToggle<cr>
  autocmd VimEnter * :nnoremap <leader>f :NERDTreeFind<cr>
  autocmd BufWritePost .vimrc :source %
  if !has('nvim')
    autocmd VimEnter * :noremap <ScrollWheelUp> <c-y>
    autocmd VimEnter * :noremap <ScrollWheelDown> <c-e>
  endif
  " Moving
  autocmd VimEnter * :noremap <c-j> 3j
  autocmd VimEnter * :noremap <c-k> 3k
  " Buffers
  autocmd VimEnter * :nnoremap <c-n> :bn<cr>
  autocmd VimEnter * :nnoremap <c-b> :bp<cr>
  autocmd VimEnter * :nnoremap <c-x><c-x> :BD!<cr>
augroup END

