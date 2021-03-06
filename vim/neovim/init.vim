set nocompatible
set sw=2 " Use this default if vim-polyglot does not define it

call plug#begin('~/.local/share/nvim/plugged')

" Syntax
Plug 'sheerun/vim-polyglot'

" General programming support
Plug 'neoclide/coc.nvim', { 'tag': '*', 'do': { -> coc#util#install() } }
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi', { 'for': ['python'] }
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }

" Plug 'tpope/vim-rails'
Plug 'mattn/emmet-vim', { 'for': ['html', 'scss', 'css', 'eruby'] }
Plug 'ap/vim-css-color', { 'for': ['css'] }
Plug 'tomtom/tcomment_vim'
Plug 'plytophogy/vim-virtualenv', { 'for': ['python'] }

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Markdown
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'euclio/vim-markdown-composer', {
"     \ 'on': 'ComposerStart',
"     \ 'do': 'cargo build --release' 
"     \}

" Useful tools to make life easier
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kassio/neoterm'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'machakann/vim-highlightedyank'
Plug 'Yggdroot/indentLine'
Plug 'janko-m/vim-test'
Plug 'nixprime/cpsm', { 'do': 'sh install.sh PY3=ON' }

" Interface
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
" Plug 'tomasr/molokai'
" Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
" Plug 'sonph/onehalf', {'rtp': 'vim/'}

call plug#end()

let g:mapleader = "\<Space>"

source $HOME/.config/nvim/plugin.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/mapping.vim
