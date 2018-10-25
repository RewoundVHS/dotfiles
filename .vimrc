" Turns off compatibility mode
set nocompatible
filetype off

" UTF-8 encoding
set encoding=utf-8

" Remap leader key to comma
let mapleader=","
let maplocalleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
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

" Whole file text object
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-user'

" Statusline plugin
Plugin 'itchyny/lightline.vim'

" Surround plugin
Plugin 'tpope/vim-surround'

" Targets plugin
Plugin 'wellle/targets.vim'

" Spotify plugin
Plugin 'HendrikPetertje/vimify'

" YouCompleteMe plugin
Plugin 'Valloric/YouCompleteMe'

" C++ highlighting plugin
Plugin 'octol/vim-cpp-enhanced-highlight'

" vim-orgmode Plugin
Plugin 'jceb/vim-orgmode'

" speeddating Plugin
Plugin 'tpope/vim-speeddating'

" Fuzzy file Plugin
Plugin 'junegunn/fzf.vim'

" Gruvbox theme
Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Vimify config
let g:spotify_token='N2YxYWZlZjVlNzhkNDVkNDhlNzQ4NmViZjNkZTM2YTM6MDIxMmU1OWQ0NmFmNDY1NDgyODlmMzVlNDAwY2M3MGU='

" lightline configuration
let g:lightline = {}
set laststatus=2

set background=dark
colorscheme gruvbox

" Current line number and lines relative to current
set number relativenumber

" Set tab to 4 spaces
set tabstop=4 shiftwidth=4
" set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Automatically indent next line
set autoindent
set cindent
set smartindent

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

" Alt+arrow to navigate splits
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
 
" Leader n to toggle NerdTree
nnoremap <Leader>n :NERDTreeToggle<Enter>

" Leader f to open fzf
nnoremap <Leader>f :FZF<Enter>

" F6 to spellcheck
map <F6> :setlocal spell! spelllang=en_us<CR>

" Ctrl-S to save
command -nargs=0 -bar Update if &modified
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <c-s> <c-o>:Update<CR>

" Shift tab to remove tab
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

" if empty(v:servername) && exists('*remote_startserver')
"     call remote_startserver('VIM')
" endif

" jk to ESC while in Insert mode
inoremap jk <Esc>

" HTML and PHP automatic tags
autocmd FileType php,html inoremap ;h1 <h1></h1><Enter><Enter><++><Esc>2kf<i
autocmd FileType php,html inoremap ;h2 <h2></h2><Enter><Enter><++><Esc>2kf<i
autocmd FileType php,html inoremap ;h3 <h3></h3><Enter><Enter><++><Esc>2kf<i
autocmd FileType php,html inoremap ;p <p></p><Enter><Enter><++><Esc>02kf>a
autocmd FileType php,html inoremap ;a <a<Space>href=""><++></a><Space><++><Esc>14hi
autocmd FileType php,html inoremap ;e <a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
autocmd FileType php,html inoremap ;ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
autocmd FileType php,html inoremap ;li <Esc>o<li></li><Esc>F>a
autocmd FileType php,html inoremap ;ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
autocmd FileType php,html inoremap ;im <table<Space>class="image"><Enter><caption align="bottom"></caption><Enter><tr><td><a<space>href="pix/<++>"><img<Space>src="pix/<++>"<Space>width="<++>"></a></td></tr><Enter></table><Enter><Enter><++><Esc>4kf>a
autocmd FileType php,html inoremap ;td <td></td><++><Esc>Fdcit
autocmd FileType php,html inoremap ;tr <tr></tr><Enter><++><Esc>kf<i
autocmd FileType php,html inoremap ;th <th></th><++><Esc>Fhcit
autocmd FileType php,html inoremap ;tab <table><Enter></table><Esc>O
