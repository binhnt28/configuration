set nocompatible

call plug#begin('~/.local/share/nvim/plugged')

" General programming support and autocompletion
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'
Plug 'tpope/vim-rails'
Plug 'neomake/neomake'
Plug 'mattn/emmet-vim', { 'for': ['html', 'scss', 'css', 'eruby'] }
Plug 'ap/vim-css-color', { 'for': ['css'] }
Plug 'shmargum/vim-sass-colors'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-endwise'

" Text object
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-user'
Plug 'whatyouhide/vim-textobj-erb'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Useful tools
Plug 'Shougo/denite.nvim'
Plug 'kassio/neoterm'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'machakann/vim-highlightedyank'
Plug 'Yggdroot/indentLine'

" Interface
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

call plug#end()

" Add custom snippets for UltiSnips
set runtimepath+=$HOME/.local/share/nvim/plugged/my-snippets

source $HOME/.config/nvim/plugin.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/mapping.vim
