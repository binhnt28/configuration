let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = $HOME.'/.local/share/nvim/python-env/bin/python'

set completeopt+=longest

call deoplete#custom#option({
    \ 'max_list': 30,
    \ 'camel_case': v:true,
    \ 'smart_case': v:true
    \})

call deoplete#custom#source('_',
    \ 'disabled_syntaxes', ['Comment', 'String'])

call deoplete#custom#source('_',
    \ 'matchers', ['matcher_cpsm'])

call deoplete#custom#source('omni', 'functions', {
    \ 'css': 'csscomplete#CompleteCSS',
    \ 'scss': 'csscomplete#CompleteCSS',
    \ 'sass': 'csscomplete#CompleteCSS', 
    \ 'javascript': 'javascriptcomplete#CompleteJS',
    \ 'ruby': 'rubycomplete#Complete'
    \})

call deoplete#custom#var('omni', 'input_patterns', {
    \ 'css': '\w{2,}[):-]?\s*\w*',
    \ 'scss': '\w{2,}[):-]?\s*\w*',
    \ 'sass': '\w{2,}[):-]?\s*\w*',
    \ 'javascript': '[^. *\t]\.\w*',
    \ 'ruby': ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::']
    \})

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
