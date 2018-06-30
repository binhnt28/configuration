set encoding=utf-8
set fileformat=unix

set showcmd

" wildmenu
set wildmenu
set wildignore+=.git,.hg,.svn,.stversions,*.pyc,*.spl,*.o,*.out,*~,%*
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store
set wildignore+=__pycache__,*.egg-info

set noswapfile
set nobackup
set nowrap

" Don't use arrow
let g:elite_mode = 1

" wrap lines 
"set wrap
"set textwidth=80
"set colorcolumn=+1

set errorbells
set magic
set shada='300,<50,@100,s10,h

" searching
set ignorecase
set smartcase
set incsearch
set showmatch
"set hlsearch

" live substitution
set inccommand=nosplit

set list
set ruler
set colorcolumn=81

" set relative line number
set number relativenumber

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" set cursorline
augroup cursorline
    autocmd!
    autocmd BufEnter,WinEnter * set cursorline
    autocmd BufLeave,WinLeave * set nocursorline
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
set shiftround
set expandtab
set autoindent
set smartindent

autocmd FileType ruby,eruby,html,htmldjango,css set tabstop=2 shiftwidth=2

" Fuzzy finder
set path+=**
