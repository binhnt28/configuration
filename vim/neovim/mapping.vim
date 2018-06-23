" Change <leader> key
let mapleader = ","

" Let ; be also :
noremap ; :

" Edit ~/.vimrc on-the-fly
nnoremap <leader>ed :split $MYVIMRC<CR>

" Clear searching highlight
nnoremap <silent> <leader><space> :noh<CR>

" deoplete Tab
inoremap <silent> <expr><tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"
" Remap window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Disable arrow
if get(g:, 'elite_mode')
    noremap <Up>    :resize +2<CR>
    noremap <Down>  :resize -2<CR>
    noremap <Left>  :vertical resize +2<CR>
    noremap <Right> :vertical resize -2<CR>
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

" Map NERDTree toggle
map <silent> <F2> :NERDTreeToggle<CR>

" Map Tagbar toggle
map <silent> <F3> :TagbarToggle<CR>

" LanguageClient toggle
nnoremap <silent> <F9> :call LanguageClient_contextMenu()<CR>

" Neoterm mapping
nnoremap <leader>` :Tmap 
nnoremap <silent> <leader>c :Tclear<CR>
nnoremap <silent> <leader>% :vertical Topen<CR>
nnoremap <silent> <leader>- :botright Topen<CR>
tnoremap <ESC> <C-\><C-n>
nnoremap <leader>rl :TREPLSendLine<CR>
nnoremap <leader>rf :TREPLSendFile<CR>
vnoremap <leader>rs :TREPLSendSelection<CR>
