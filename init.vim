set number

let mapleader = ","

" Plugins
call plug#begin()
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
" Deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
call plug#end()

syntax on
set background=dark
colorscheme tomorrow-night

" Keybindings
inoremap jk <Esc>

" Search settings
set hlsearch                        " Enable search highlight on startup
set incsearch                       " Highlight matches as you type
set ignorecase                      " Case-insensitive search
set smartcase                       " Case sensitive search if caps

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

