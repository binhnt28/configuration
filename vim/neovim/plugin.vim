let g:python3_host_prog = $HOME.'/.local/share/nvim/python-env/bin/python'

" coc.nvim settings
source $HOME/.config/nvim/coc.vim

" deoplete settings
" source $HOME/.config/nvim/deoplete.vim

" denite settings
source $HOME/.config/nvim/denite.vim

" neomake setings
" call neomake#configure#automake('nirw')
" let g:neomake_python_enabled_makers = [ "pycodestyle", "python3" ]
" let g:neomake_javascript_enabled_makers = ['eslint']
" let g:neomake_open_list = 2
" let g:neomake_list_height = 6

" emmet-vim settings
let g:user_emmet_mode='iv'
let g:user_emmet_leader_key = '<C-z>'
let g:user_emmet_install_global = 0
autocmd FileType html,htmldjango,eruby,css,scss EmmetInstall

" fugitive settings
autocmd User fugitive
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif
autocmd BufReadPost fugitive://* set bufhidden=delete

" vim-gitgutter settings
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_max_signs = 1000
let g:gitgutter_highlight_lines = 0
let g:gitgutter_grep = 'rg'

" vim-pandoc settings
let g:pandoc#modules#disabled = ['folding', 'bibliographies']

" vim-markdown-composer settings
let g:markdown_composer_autostart = 0
let g:markdown_composer_external_renderer='pandoc -f markdown -t html'

" UltiSnips settings
let g:UltiSnipsExpandTrigger="<C-y>"
let g:UltiSnipsJumpForwardTrigger="<C-y>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

" NERDTree settings
let NERDTreeWinSize = 30

" Tagbar settings
let g:tagbar_width = 30

" delimitMate settings
let delimitMate_expand_cr = 1

" indentLine settings
let g:indentLine_concealcursor = 'ic'
let g:indentLine_conceallevel = 2
let g:indentLine_char = '.'
let g:indentLine_leadingSpaceChar = '.'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_bufTypeExclude = ['help', 'terminal', 'nofile']
let g:indentLine_bufNameExclude = ['NERD_tree.*', '_.*']

" neoterm settings
let g:neoterm_autoscroll = '1'
" let g:neoterm_size = 12
let g:neoterm_automap_keys = '<F5>'

" vim-test settings
let test#strategy = "neoterm"
let g:test#preserve_screen = 1

" vim-airline settings
set noshowmode

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_buffers = 0

let g:airline_exclude_preview = 1
let g:airline_powerline_fonts = 1 

let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

" onedark settings
let g:onedark_terminal_italics = 1
