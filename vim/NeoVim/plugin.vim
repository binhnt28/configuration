" Deoplete settings
set completeopt=menu,preview,longest
let g:deoplete#enable_at_startup = 1
call deoplete#custom#source('_',
    \ 'disabled_syntaxes', ['Comment', 'String'])
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" Neomake setings
call neomake#configure#automake('irw')
let g:neomake_python_enabled_makers = []
"let g:neomake_open_list = 2

" LanguageClient settings
set hidden
let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \}

" Neoterm settings
let g:neoterm_autoscroll = '1'
let g:neoterm_size = 12
let g:neoterm_automap_keys = '<F5>'

" Emmet-vim settings
let g:user_emmet_mode='iv'
let g:user_emmet_leader_key = '<C-,>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" NERDTree settings
let NERDTreeWinSize = 30

" Tagbar settings
let g:tagbar_width = 30

" vim-airline settings
set laststatus=2
set noshowmode
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
let g:airline_theme='powerlineish'

" delimitMate settings
let delimitMate_expand_cr = 1

" indentLine settings
let g:indentLine_char = '|'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'

" UltiSnips settings
let g:UltiSnipsExpandTrigger="<C-b>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
