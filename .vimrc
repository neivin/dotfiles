" .vimrc
" Author - Neivin Mathew (me@neivin.com)
" Date - August 23, 2017

" Disable vi compatibility
set nocompatible


" ---- Plugins

" Execute Pathogen bundler
execute pathogen#infect()


" ---- Appearance

" Search settings
set hlsearch                        " Enable search highlight on startup
set incsearch                       " Highlight matches as you type
set ignorecase                      " Case-insensitive search
set smartcase                       " Case sensitive search if caps

" Syntax highlighting
if !exists("g:syntax_on")
  syntax enable
endif

" ---- Colorscheme settings
set background=dark
set t_Co=256

" Solarized options
let g:solarized_visibility="high"
let g:solarized_contrast="high"

" Use Solarized but don't throw an error if it doesn't exist
:silent! colorscheme solarized

" ---- Other settings

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

" iTerm dynamic cursor shape
let &t_SI="\<Esc>]50;CursorShape=1\x7"
let &t_SR="\<Esc>]50;CursorShape=2\x7"
let &t_EI="\<Esc>]50;CursorShape=0\x7"


" ---- Key Mappings

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

" Highlight trailing whitespace in red to not piss off Git
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
