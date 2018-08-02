" deoplete settings
source $HOME/.config/nvim/deoplete.vim

" denite settings
source $HOME/.config/nvim/denite.vim

" neomake setings
call neomake#configure#automake('nirw')
let g:neomake_python_enabled_makers = [ 'pycodestyle', 'python' ]
" let g:neomake_open_list = 2
" let g:neomake_list_height = 5

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
set updatetime=200
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_highlight_lines = 0
let g:gitgutter_grep = 'rg'

" vim-pandoc settings
let g:pandoc#modules#disabled = ['folding', 'bibliographies']

" vim-markdown-composer settings
let g:markdown_composer_autostart = 0
let g:markdown_composer_external_renderer='pandoc -f markdown -t html'

" UltiSnips settings
let g:UltiSnipsExpandTrigger="<C-b>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
let g:UltiSnipsSnippetDirectories=[$HOME."/.config/nvim/UltiSnips", "Ultisnips"]

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
let g:neoterm_size = 12
let g:neoterm_automap_keys = '<F5>'

" vim-test settings
let test#strategy = "neoterm"
let g:test#preserve_screen = 1

" vim-illuminate
let g:Illuminate_ftblacklist = ['nerdtree', 'neoterm']
hi link illuminatedWord Visual

" vim-airline settings
set noshowmode

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_buffers = 0

let g:airline_exclude_preview = 1
let g:airline_powerline_fonts = 1 

" onedark settings
let g:onedark_terminal_italics = 1
