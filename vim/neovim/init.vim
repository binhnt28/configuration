set nocompatible

call plug#begin('~/.local/share/nvim/plugged')

" General programming support
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'
Plug 'tpope/vim-rails'
Plug 'neomake/neomake'
Plug 'mattn/emmet-vim', { 'for': ['html', 'scss', 'css', 'eruby'] }
Plug 'ap/vim-css-color', { 'for': ['css'] }
Plug 'shmargum/vim-sass-colors'
Plug 'tomtom/tcomment_vim'
Plug 'plytophogy/vim-virtualenv'
Plug 'sheerun/vim-polyglot'

" Text object
Plug 'michaeljsmith/vim-indent-object'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Plug 'Xuyuanp/nerdtree-git-plugin'

" Markdown
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'euclio/vim-markdown-composer', {
                        \ 'on': 'ComposerStart',
                        \ 'do': 'cargo build --release' 
                        \}

" Useful tools to make life easier
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-endwise'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/denite.nvim'
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

source $HOME/.config/nvim/plugin.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/mapping.vim
