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

call plug#begin()

" NerdTree plugin
Plug 'scrooloose/nerdTree'

" Syntax linting
Plug 'w0rp/ale'

" Comment lines with gc
Plug 'tpope/vim-commentary'

" Surround plugin
Plug 'tpope/vim-surround'

" Targets plugin
Plug 'wellle/targets.vim'

" C++ highlighting plugin
Plug 'octol/vim-cpp-enhanced-highlight'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" QuickRun plugin
Plug 'thinca/vim-quickrun'

" Goyo plugin
Plug 'junegunn/goyo.vim'

" Dracula theme
Plug 'dracula/vim', { 'name': 'dracula' }

call plug#end()

" Map <tab> and <CR> for coc.nvim
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

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

" Set indent to 2 spaces when writing yml
autocmd FileType yml setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 expandtab

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

" F3 to toggle paste mode
set pastetoggle=<F3>

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

" Leader s to spellcheck
map <Leader>s :setlocal spell! spelllang=en_us<CR>

" Shift tab to remove tab
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

" jk to ESC while in Insert mode
" inoremap jk <Esc>

" Remove trailing whitespace on buffer write
" autocmd BufWritePre * %s/\s\+$//e

" :W to write with sudo
:command W w !sudo tee >/dev/null "%"
