" Change <leader> key
let g:mapleader = "\<Space>"

" Let ; be also :
noremap ; :

" Edit ~/.vimrc on-the-fly
nnoremap <leader>ed :split $MYVIMRC<CR>
nnoremap <leader>de :edit $MYVIMRC<CR>
nnoremap <leader>ut :edit $HOME/.config/nvim/UltiSnips<CR>

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
" ---SPECIFIC PLUGIN MAPPING ---
"-------------------------------

" NERDTree toggle
map <silent> <F2> :NERDTreeToggle<CR>

" Tagbar toggle
map <silent> <F3> :TagbarToggle<CR>

" vim-gitgutter toggle
map <silent> <F5> :GitGutterLineHighlightsToggle<CR>

" deoplete
imap <expr><tab> pumvisible() ? "\<C-n>" : "\<Tab>"
imap <expr><C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
imap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
imap <expr><C-z> deoplete#undo_completion()

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
nmap <silent> <C-p> :Denite file_rec<CR>
nmap <silent> <leader>b :Denite buffer<CR>
nmap <silent> <leader>/ :Denite grep:. -mode=normal<CR>
nmap <silent> <leader>. :DeniteCursorWord grep:. -mode=normal<CR>

" vim-test mapping
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
