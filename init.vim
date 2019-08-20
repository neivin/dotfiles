" init.vim
"
" Neivin Mathew - me@neivin.com
" Aug 20, 2019

let mapleader = ","

" Plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'airblade/vim-gitgutter'
set updatetime=100

" Deoplete
" Plug 'Shougo/deoplete.nvim', { 'do': ':NeoBundleRemotePlugins' }
" let g:deoplete#enable_at_startup = 1
call plug#end()

" Colorscheme settings
syntax on
set background=dark
colorscheme tomorrow-night
let g:airline_theme='base16_tomorrow'

" Keybindings
inoremap jk <Esc>

" Search settings
" Enable highlight searching
set hlsearch
" Incremental search (match as you type)
set incsearch
" Case insensivite search
set ignorecase
" Case sensitive if caps detected
set smartcase

filetype indent plugin on

" Use mouse
" In iTerm2 this is in Preferences > Profiles > Terminal > Enable mouse
" reporting/Report mouse wheel events
set mouse=a

" Show command
set showcmd

" Backspace
set backspace=indent,eol,start

" Line information
set ruler
set number                          " Show line numbers
set cursorline                      " Highlight current line

" Tab settings
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

