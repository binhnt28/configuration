" denite.nvim global options
call denite#custom#option('default', {
        \ 'auto_accel': v:true,
        \ 'auto_resume': v:true,
        \ 'highlight_mode_normal': 'Cursor',
        \ 'highlight_mode_insert': 'IncSearch',
        \ 'highlight_matched_char': 'WarningMsg',
        \ 'highlight_matched_range': 'None',
        \ 'highlight_preview_line': 'Search',
        \ 'prompt': '> ',
        \ 'source_names': 'short',
        \ 'winheight': 15,
        \ 'winwidth': 40,
        \ 'vertical_preview': v:true
        \})

" denite.nvim MATCHER
call denite#custom#source('tag', 'matchers', ['matcher_substring'])
call denite#custom#source(
        \ 'buffer,file_mru,file_old,file_rec,file/rec,grep,mpc,line',
        \ 'matchers', ['matcher/cpsm'])

" denite.nvim SORTER
call denite#custom#source(
        \ 'buffer,file_mru,file_old,file_rec,file/rec,grep,mpc,line',
        \ 'sorters', ['sorter/sublime'])

" denite.nvim COMMAND
call denite#custom#var('file_rec', 'command',
        \ ['rg', '--files', '--glob', '!.git'])
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts',
        \ ['--hidden', '--vimgrep', '--no-heading', '-S'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" denite.nvim MAPPINGS
" insert mode
call denite#custom#map('insert', '<Esc>', '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('insert', '<C-q>', '<denite:quit>', 'noremap')
call denite#custom#map('insert', '<C-n>', '<denite:assign_next_matched_text>', 'noremap')
call denite#custom#map('insert', '<C-p>', '<denite:assign_previous_matched_text>', 'noremap')
call denite#custom#map('insert', '<C-s>', '<denite:do_action:split>', 'noremap')
call denite#custom#map('insert', '<C-v>', '<denite:do_action:vsplit>', 'noremap')
call denite#custom#map('insert', '<C-t>', '<denite:do_action:tabopen>', 'noremap')
call denite#custom#map('insert', '<Up>', '<denite:assign_previous_text>', 'noremap')
call denite#custom#map('insert', '<Down>', '<denite:assign_next_text>', 'noremap')

" normal mode
call denite#custom#map('normal', '<ESC>', '<NOP>', 'noremap')
call denite#custom#map('normal', '<C-n>', '<denite:jump_to_next_source>', 'noremap')
call denite#custom#map('normal', '<C-p>', '<denite:jump_to_previous_source>', 'noremap')
call denite#custom#map('normal', 'ss', '<denite:do_action:split>', 'noremap')
call denite#custom#map('normal', 'vs', '<denite:do_action:vsplit>', 'noremap')
call denite#custom#map('normal', 'ts', '<denite:do_action:tabopen>', 'noremap')
