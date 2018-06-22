if &compatible
    set nocompatible
endif

" Add the dein installation directory into runtimepath
set rtp+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')
    call dein#add('~/.cache/dein')

    " General programming support and autocompletion
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('tpope/vim-rails')
    call dein#add('neomake/neomake')
    call dein#add('SirVer/ultisnips')
    call dein#add('honza/vim-snippets')
    call dein#add('tpope/vim-surround')
    call dein#add('Raimondi/delimitMate')
    call dein#add('mattn/emmet-vim')
    call dein#add('tomtom/tcomment_vim')
    call dein#add('autozimu/LanguageClient-neovim', {
        \ 'rev': 'next',
        \ 'build': 'bash install.sh',
        \})

    " Git
    call dein#add('tpope/vim-fugitive')

    " Useful tools
    call dein#add('kassio/neoterm')
    call dein#add('scrooloose/nerdtree')
    call dein#add('majutsushi/tagbar')
    call dein#add('tpope/vim-bundler')
    call dein#add('tpope/vim-dispatch')
    call dein#add('Yggdroot/indentLine')

    " Interface
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
    call dein#add('ryanoasis/vim-devicons')
    call dein#add('tomasr/molokai')

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable
