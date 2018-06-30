set nocompatible

call plug#begin('~/.local/share/nvim/plugged')

" General programming support and autocompletion
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'
Plug 'tpope/vim-rails'
Plug 'neomake/neomake'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'eruby'] }
Plug 'tomtom/tcomment_vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Useful tools
Plug 'Shougo/denite.nvim'
Plug 'kassio/neoterm'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'}
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-dispatch'
Plug 'Yggdroot/indentLine'
Plug 'machakann/vim-highlightedyank'

" Interface
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tomasr/molokai'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

call plug#end()

source $HOME/.config/nvim/plugin.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/mapping.vim
