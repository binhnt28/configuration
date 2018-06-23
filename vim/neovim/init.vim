set nocompatible

call plug#begin('~/.local/share/nvim/plugged')

" General programming support and autocompletion
Plug 'Shougo/deoplete.nvim'
Plug 'tpope/vim-rails'
Plug 'neomake/neomake'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'mattn/emmet-vim'
Plug 'tomtom/tcomment_vim'
Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': 'bash install.sh',
            \}

" Git
Plug 'tpope/vim-fugitive'

" Useful tools
Plug 'kassio/neoterm'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-dispatch'
Plug 'Yggdroot/indentLine'
Plug 'machakann/vim-highlightedyank'

" Interface
Plug 'Shougo/denite.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tomasr/molokai'

call plug#end()

source $HOME/.config/nvim/plugin.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/mapping.vim
