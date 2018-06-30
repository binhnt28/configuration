" deoplete settings
set completeopt=menu,preview,longest
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/home/ntbinh/.local/share/nvim/python-env/bin/python'
call deoplete#custom#option({
    \ 'camel_case': v:true,
    \ 'max_list': 30,
    \ 'smart_case': v:true
    \})
call deoplete#custom#source('_',
    \ 'disabled_syntaxes', ['Comment', 'String'])
call deoplete#custom#source('omni', 'mark', '⌾')
call deoplete#custom#source('jedi', 'mark', '⌁')
call deoplete#custom#source('ultisnips', 'mark', '⌘ ')
call deoplete#custom#source('buffer', 'mark', '*')
call deoplete#custom#source('syntax', 'mark', '♯')
call deoplete#custom#source('member', 'mark', '.')
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" deoplete-jedi settings
let g:deoplete#sources#jedi#server_timeout = 30
let g:deoplete#sources#jedi#statement_length = 30
let g:deoplete#sources#jedi#show_docstring = 1
let g:deoplete#sources#jedi#short_types = 1

" neomake setings
call neomake#configure#automake('irw')
let g:neomake_python_enabled_makers = [ 'flake8', 'pep8' ]
" let g:neomake_open_list = 2
" let g:neomake_list_height = 5

" neoterm settings
let g:neoterm_autoscroll = '1'
let g:neoterm_size = 15
let g:neoterm_automap_keys = '<F5>'

" emmet-vim settings
let g:user_emmet_mode='iv'
let g:user_emmet_leader_key = '<C-z>'
let g:user_emmet_install_global = 0
autocmd FileType html,htmldjango,eruby,css EmmetInstall

" vim-airline settings
set noshowmode
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#neomake#enabled = 1
let g:airline_powerline_fonts = 1 

" vim-gitgutter settings
set updatetime=200
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_highlight_lines = 0
let g:gitgutter_grep = 'rg'

" NERDTree settings
let NERDTreeWinSize = 30

" Tagbar settings
let g:tagbar_width = 30

" delimitMate settings
let delimitMate_expand_cr = 1

" indentLine settings
let g:indentLine_char = '.'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'

" UltiSnips settings
let g:UltiSnipsExpandTrigger="<C-b>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

" denite.nvim settings
call denite#custom#option('default', {
    \ 'auto_accel': v:true,
    \ 'auto_resume': v:true,
    \ 'highlight_mode_normal': 'Cursor',
    \ 'highlight_mode_insert': 'StatusLine',
    \ 'highlight_matched_char': 'MatchParen',
    \ 'highlight_matched_range': 'Operator',
    \ 'highlight_preview_line': 'Search',
    \ 'prompt': '> ',
    \ 'source_names': 'short',
    \ 'winheight': 15,
    \ 'winwidth': 40,
    \ 'vertical_preview': v:true
    \})

" denite.nvim MATCHER
call denite#custom#source('tag', 'matchers', ['matcher_substring'])
if has('nvim') && &runtimepath =~# '\/cpsm'
    call denite#custom#source(
        \ 'buffer,file_mru,file_old,file_rec,file/rec,grep,mpc,line',
        \ 'matchers', ['matcher_cpsm', 'matcher_fuzzy'])
endif

" denite.nvim SORTER
" Default is 'sorter_rank'
call denite#custom#source('z', 'sorters', ['sorter_z'])

" denite.nvim COMMAND
call denite#custom#var('file/rec', 'command',
    \ ['rg', '--files', '--glob', '!.git'])
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts',
    \ ['--hidden', '--vimgrep', '--no-heading', '-S'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" denite.nvim MAPPINGS
call denite#custom#map('insert', '<Esc>', '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('insert', '<C-q>', '<denite:quit>', 'noremap')
call denite#custom#map('insert', '<C-n>', '<denite:assign_next_matched_text>', 'noremap')
call denite#custom#map('insert', '<C-p>', '<denite:assign_previous_matched_text>', 'noremap')
call denite#custom#map('insert', '<C-s>', '<denite:do_action:split>', 'noremap')
call denite#custom#map('insert', '<C-v>', '<denite:do_action:vsplit>', 'noremap')
call denite#custom#map('insert', '<C-t>', '<denite:do_action:tabopen>', 'noremap')
call denite#custom#map('insert', '<Up>', '<denite:assign_previous_text>', 'noremap')
call denite#custom#map('insert', '<Down>', '<denite:assign_next_text>', 'noremap')

call denite#custom#map('normal', '<ESC>', '<NOP>', 'noremap')
call denite#custom#map('normal', '<C-n>', '<denite:jump_to_next_source>', 'noremap')
call denite#custom#map('normal', '<C-p>', '<denite:jump_to_previous_source>', 'noremap')
call denite#custom#map('normal', 'ss', '<denite:do_action:split>', 'noremap')
call denite#custom#map('normal', 'vs', '<denite:do_action:vsplit>', 'noremap')
call denite#custom#map('normal', 'ts', '<denite:do_action:tabopen>', 'noremap')
