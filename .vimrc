" Turns off compatibility mode
set nocompatible
filetype off

" UTF-8 encoding
set encoding=utf-8

" Mouse drag enters visual mode
set mouse=a

" Remap leader key to comma
let mapleader=","
let maplocalleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NerdTree plugin
Plugin 'scrooloose/nerdTree'

" Syntax linting
Plugin 'w0rp/ale'

" Comment lines with gc
Plugin 'tpope/vim-commentary'

" Statusline plugin
Plugin 'itchyny/lightline.vim'

" Surround plugin
Plugin 'tpope/vim-surround'

" Targets plugin
Plugin 'wellle/targets.vim'

" Spotify plugin
Plugin 'HendrikPetertje/vimify'

" C++ highlighting plugin
Plugin 'octol/vim-cpp-enhanced-highlight'

" Autocompletion
" Plugin 'Valloric/YouCompleteMe'

" QuickRun plugin
Plugin 'thinca/vim-quickrun'

" Goyo plugin
Plugin 'junegunn/goyo.vim'

" Gruvbox theme
Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" lightline configuration
let g:lightline = {}
set laststatus=2

" Colorscheme configuration
set background=dark
colorscheme gruvbox

" Current line number and lines relative to current
set number relativenumber

" Tab completion for vim commands
set wildmode=longest,list,full

" Remap j and k to gj and gk, also accounts for jumps
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'

" Set tab to 4 spaces
set tabstop=4 shiftwidth=4
" set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Automatically indent next line
set autoindent
set cindent
set smartindent

" Set indent to 2 spaces when writing html
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 expandtab

" Wrap lines
set wrap

" Remove tab with backspace
set backspace=indent,eol,start

" Syntax highlighting
syntax on

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" No bell sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set ruler to 80 chars
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Helps with pasting from other terminals
set clipboard=unnamed

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Wrap words in LaTeX files
autocmd BufNewFile,BufRead *.tex Goyo | setlocal wrap linebreak nolist

" Sets default splits to below and right side
set splitbelow splitright

" Leader arrow to navigate splits
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Leader n to toggle NerdTree
nnoremap <Leader>n :NERDTreeToggle<Enter>

" Leader r to execute current buffer
nnoremap <Leader>r :QuickRun<Enter>

" Leader q to close current buffer
nnoremap <Leader>q :q<Enter>

" Leader x to write and close all buffers
nnoremap <Leader>x :xa<Enter>

" F6 to spellcheck
map <F6> :setlocal spell! spelllang=en_us<CR>

" Shift tab to remove tab
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

" if empty(v:servername) && exists('*remote_startserver')
"     call remote_startserver('VIM')
" endif

" jk to ESC while in Insert mode
inoremap jk <Esc>

" Remove trailing whitespace on buffer write
autocmd BufWritePre * %s/\s\+$//e

" :W to write with sudo
:command W w !sudo tee >/dev/null "%"
