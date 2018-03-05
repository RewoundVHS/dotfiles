" Current line number and lines relative to current
set number relativenumber

" Set tab to 4 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

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

" Sets how many lines of history VIM has to remember
set history=500

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
