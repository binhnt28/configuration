" File: .vimrc
" Author: Nguyen Thai Binh
" Description: Vim configuration file
" Last Modified: February 5, 2018
"
"
"---------- Plugin Settings ----------
" Vundle (abbr for Vim Bundle) is a Plugin Manager.
" To install:
" git clone https://github.com/VundleVim/Vundle.Vim.git ~/.vim/bundle/Vundle.vim

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" File browser
Plugin 'scrooloose/nerdtree'

" Syntax checker for several languages
Plugin 'scrooloose/syntastic'

" YouCompleteMe
"Plugin 'Valloric/YouCompleteMe'

" jedi-vim
Plugin 'davidhalter/jedi-vim'

" Tagbar 
" Be aware that this plugin depends on ctags
Plugin 'majutsushi/tagbar'

" Powerline
Plugin 'vim-airline/vim-airline'

" Snippet
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" surround
Plugin 'tpope/vim-surround'

" delimitMate
Plugin 'Raimondi/delimitMate'

" Colorscheme
"Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'

call vundle#end()

"---------- Additional plugin tweaks ----------

" NERDTree settings
let NERDTreeWinSize = 30

" Tagbar settings
let g:tagbar_width = 30

" Powerline settings
set laststatus=2
set noshowmode

" YouCompleteMe settings
"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_show_diagnostics_ui = 0
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_filetype_blacklist = {
"    \ 'python' : 1,
"    \}

" jedi-vim
autocmd FileType python setlocal completeopt-=preview

" delimitMate settings
let delimitMate_expand_cr = 1

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5
"let g:syntastic_python_python_exec = '/usr/bin/python2'

" UltiSnips settings
let g:UltiSnipsExpandTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


"---------- Basic Vim Settings ----------

set encoding=utf-8
set fileformat=unix

set showcmd
set wildmenu

set noswapfile
set nobackup

set history=10

" wrap lines 
set wrap
set textwidth=79
set colorcolumn=+1

" searching
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

" set relative line number
set relativenumber

" Color settings
colorscheme molokai
"set background=dark

" Syntax highlight 
syntax on
filetype plugin indent on

" TAB settings
set tabstop=4
set shiftwidth=4
set expandtab

" Fuzzy finder
set path+=**

"---------- Mapping Key ----------

" Change <leader> key
let mapleader = ","

" Let ; be also :
noremap ; :

" Edit ~/.vimrc on-the-fly
nnoremap <leader>ed :vs $MYVIMRC<CR>

" Clear searching highlight
nnoremap <silent> <leader><space> :noh<CR>

" Remap window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" YouCompleteMe shortcuts for C-family languages
"nnoremap <silent> <leader>gt :YcmCompleter GetType<CR>
"nnoremap <silent> <leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR>

"---------- Surround Shortcuts ----------

" Surround a word(s) with double-quotes
nmap <leader>" ysiw"
vmap <leader>" S"

" Surround a word(s) with single-quotes
nmap <leader>' ysiw'
vmap <leader>' S'

" Surround a word(s) with parentheses
nmap <leader>( ysiw(
nmap <leader>) ysiw)
vmap <leader>( S(
vmap <leader>) S)

" Surround a word(s) with brackets
nmap <leader>[ ysiw[
nmap <leader>] ysiw]
vmap <leader>[ S[
vmap <leader>] S]

" Surround a word(s) with braces
nmap <leader>{ ysiw{
nmap <leader>} ysiw}
vmap <leader>{ S{
vmap <leader>} S}

"-------------------------------

" Map copy and paste to clipboard
vmap <leader>y "+y
vmap <leader>d "+d

nmap <leader>p "+p
nmap <leader>P "+P

"-------------------------------

" Map NERDTree toggle
map <silent> <F2> :NERDTreeToggle<CR>

" Map Tagbar toggle
map <silent> <F3> :TagbarToggle<CR>

"---------- GVim Setting ----------
if has("gui_running")
    set guifont=Hack\ 11
    set guioptions-=T " hide toolbar
    set guioptions-=r " hide scrollbar
endif
