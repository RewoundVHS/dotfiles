" UTF-8 encoding
set encoding=utf-8

set rtp+=~/.fzf

" Mouse drag enters visual mode
set mouse=a

" Remap leader key to comma
let mapleader=","
let maplocalleader = ","

" let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

call plug#begin('~/.vim/plugged')

" NerdTree plugin
Plug 'scrooloose/nerdTree'

" Syntax linting
Plug 'w0rp/ale'

" Comment lines with gc
Plug 'tpope/vim-commentary'

" Statusline plugin
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Surround plugin
Plug 'tpope/vim-surround'

" Targets plugin
Plug 'wellle/targets.vim'

" Spotify plugin
Plug 'HendrikPetertje/vimify'

" C++ highlighting plugin
Plug 'octol/vim-cpp-enhanced-highlight'

" QuickRun plugin
Plug 'thinca/vim-quickrun'

" Goyo plugin
Plug 'junegunn/goyo.vim'

" Dracula theme
Plug 'dracula/vim', { 'as': 'dracula' }

" Deoplete plugin
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

" airline configuration
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1

" deoplete configuration
let g:deoplete#enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Colorscheme configuration
colorscheme dracula

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

" Enable cursorline highlighting
set cursorline

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

" Leader t to open terminal emulator
nnoremap <Leader>t :terminal<Enter>

" F6 to spellcheck
map <F6> :setlocal spell! spelllang=en_us<CR>

" Shift tab to remove tab
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

" jk to ESC while in Insert mode
inoremap jk <Esc>

" Remove trailing whitespace on buffer write
autocmd BufWritePre * %s/\s\+$//e

" :W to write with sudo
:command W w !sudo tee >/dev/null "%"
