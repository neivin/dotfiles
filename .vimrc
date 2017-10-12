" --------------------------------------------------
" .vimrc - Vim Configuration Settings
"
" Author: Neivin Mathew (me@neivin.com)
" Date: August 23, 2017
" --------------------------------------------------

" Disable vi compatibility
set nocompatible

" PLUGINS:
" -------------------------------------------------- 
" Execute Pathogen bundler
execute pathogen#infect()

" Autocomplete parenthesis, quotes, etc.
let delimitMate_expand_cr=1

" Search settings
set hlsearch                        " Enable search highlight on startup
set incsearch                       " Highlight matches as you type
set ignorecase                      " Case-insensitive search
set smartcase                       " Case sensitive search if caps 

" APPEARANCE: 
" -------------------------------------------------- 
" Syntax highlighting 
if !exists("g:syntax_on")
  syntax enable
endif

" Colors
set background=dark
set t_Co=256
colorscheme solarized

filetype indent plugin on

" Line information 
set number                          " Show line numbers
set cursorline                      " Highlight current line
set ruler

" Tab settings
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

" iTerm dynamic cursor shape 
let &t_SI="\<Esc>]50;CursorShape=1\x7"
let &t_SR="\<Esc>]50;CursorShape=2\x7"
let &t_EI="\<Esc>]50;CursorShape=0\x7"

" KEY MAPPING:
" --------------------------------------------------
" Map esc to jk and unmap esc key
inoremap jk <esc>`^

inoremap <esc> <nop>
vnoremap <esc> <nop>

" Habit breaking - Unmap arrow keys
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

