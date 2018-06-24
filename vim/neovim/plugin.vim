" Deoplete settings
set completeopt=menu,preview,longest
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/home/ntbinh/.local/share/nvim/plugged/python-env/bin/python'
call deoplete#custom#option({
    \ 'max_list': 30,
    \ 'smart_case': v:true
    \})
call deoplete#custom#source('_',
    \ 'disabled_syntaxes', ['Comment', 'String'])
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" Neomake setings
call neomake#configure#automake('irw')
let g:neomake_python_enabled_makers = []
" let g:neomake_open_list = 2
" let g:neomake_list_height = 5

" LanguageClient settings
set hidden
let g:LanguageClient_serverCommands = {
            \ 'python': ['pyls'],
            \}

" Neoterm settings
let g:neoterm_autoscroll = '1'
" let g:neoterm_size = 12
let g:neoterm_automap_keys = '<F5>'

" Emmet-vim settings
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
let g:airline_powerline_fonts = 1 

" denite.nvim settings
call denite#custom#option('default', {
    \ 'auto_accel': v:true,
    \ 'highlight_mode_normal': 'CursorLine',
    \ 'prompt': '> ',
    \ 'winheight': 15,
    \ 'source_names': 'short',
    \ 'vertical_preview': v:true
    \})

" denite.nvim MATCHER
call denite#custom#source('tag', 'matchers', ['matcher_substring'])
if has('nvim') && &runtimepath =~# '\/cpsm'
	call denite#custom#source(
		\ 'buffer,file_mru,file_old,file_rec,grep,mpc,line',
		\ 'matchers', ['matcher_cpsm', 'matcher_fuzzy'])
endif

" denite.nvim SORTER
" Default is 'sorter_rank'
call denite#custom#source('z', 'sorters', ['sorter_z'])

" denite.nvim COMMAND
call denite#custom#var('file_rec', 'command',
    \ ['rg', '--files', '--glob', '!.git', ''])
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

" NERDTree settings
let NERDTreeWinSize = 30

" Tagbar settings
let g:tagbar_width = 30

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
