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

set shada='300,<50,@100,s10,h

" searching
set ignorecase
set smartcase
set incsearch
set showmatch
"set hlsearch

" live substitution
set inccommand=nosplit

set ruler
set colorcolumn=81

" set linenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained * set number relativenumber
    autocmd BufLeave,FocusLost * set nonumber norelativenumber
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
colorscheme onedark
let g:airline_theme='onedark'

" Fuzzy finder
set path+=**

" Set inactive windows background differently
hi ActiveWindow guibg=bg
hi InactiveWindow guibg=#0F131B

autocmd WinEnter,WinLeave * call HandleWinSwitch()

function! HandleWinSwitch()
    setlocal winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
endfunction
