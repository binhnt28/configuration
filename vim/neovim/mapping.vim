" Change <leader> key
let g:mapleader = "\<Space>"

" Let ; be also :
noremap ; :

" Edit ~/.vimrc on-the-fly
nnoremap <leader>ed :split $MYVIMRC<CR>
nnoremap <leader>de :edit $MYVIMRC<CR>

" Clear searching highlight
nnoremap <silent> <leader><backspace> :noh<CR>

" Remap window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Disable arrow
if get(g:, 'elite_mode')
    nnoremap <Up>    <C-W>+
    nnoremap <Down>  <C-W>-
    nnoremap <Left>  <C-W><
    nnoremap <Right> <C-W>>
endif

"---------- Surround Shortcuts ----------

" Surround a word(s) with double-quotes
nmap <leader>" ysiw"
vmap <leader>" S"

" Surround a word(s) with single-quotes
nmap <leader>' ysiw'
vmap <leader>' S'

" Surround a word(s) with parentheses
nmap <leader>( ysiw(
nmap <leader>) ysiw)
vmap <leader>( S(
vmap <leader>) S)

" Surround a word(s) with brackets
nmap <leader>[ ysiw[
nmap <leader>] ysiw]
vmap <leader>[ S[
vmap <leader>] S]

" Surround a word(s) with braces
nmap <leader>{ ysiw{
nmap <leader>} ysiw}
vmap <leader>{ S{
vmap <leader>} S}

"-------------------------------

" Map copy and paste to clipboard
vmap <leader>y "+y
vmap <leader>d "+d

nmap <leader>p "+p
nmap <leader>P "+P

"-------------------------------
" ---- SPECIFIC PLUGIN MAPPING ----
"-------------------------------

" NERDTree toggle
map <silent> <F2> :NERDTreeToggle<CR>

" Tagbar toggle
map <silent> <F3> :TagbarToggle<CR>

" vim-gitgutter toggle
map <silent> <F5> :GitGutterLineHighlightsToggle<CR>

" fugitive mapping
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gb :Gblame<CR>

" deoplete
inoremap <silent> <expr><tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><C-z> deoplete#undo_completion()

" Neoterm mapping
nnoremap <leader>` :Tmap 
nnoremap <silent> <leader>c :Tclear<CR>
nnoremap <silent> <leader>% :vertical Topen<CR>
nnoremap <silent> <leader>- :botright Topen<CR>
tnoremap <ESC> <C-\><C-n>
nnoremap <leader>rl :TREPLSendLine<CR>
nnoremap <leader>rf :TREPLSendFile<CR>
vnoremap <leader>rs :TREPLSendSelection<CR>

" denite mapping
nnoremap <silent> <C-p> :Denite file/rec -mode=insert<CR>
nnoremap <silent> <leader>b :Denite buffer -mode=insert<CR>
nnoremap <silent> <leader>/ :Denite grep:. -mode=normal<CR>
nnoremap <silent> <leader>. :DeniteCursorWord grep:. -mode=normal<CR>
