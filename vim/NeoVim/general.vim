set encoding=utf-8
set fileformat=unix

set showcmd
set wildmenu

set noswapfile
set nobackup
set nowrap

" Don't use arrow
let g:elite_mode = 1

" wrap lines 
"set wrap
"set textwidth=80
"set colorcolumn=+1

" searching
set ignorecase
set smartcase
set incsearch
set showmatch
"set hlsearch

" highlight current line
set cursorline

" set relative line number
set number relativenumber

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Split to the right
set splitright

" Color settings
colorscheme molokai

" TAB settings
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

augroup rails_tab
    autocmd!
    autocmd FileType ruby,html,css set tabstop=2
    autocmd FileType ruby,html,css set shiftwidth=2
augroup END

" Fuzzy finder
set path+=**
