set encoding=utf-8
set fileformat=unix

set showcmd
set wildmenu

set noswapfile
set nobackup

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

" live substitution
set inccommand=nosplit

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
if has ('nvim') || has('termguicolors')
    set termguicolors
endif
colorscheme onehalfdark
let g:airline_theme='deus'

" TAB settings
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

autocmd FileType ruby,eruby,html,htmldjango,css set tabstop=2 shiftwidth=2

" Fuzzy finder
set path+=**
