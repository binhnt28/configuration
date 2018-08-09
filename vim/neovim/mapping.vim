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

" Navigation when in insert mode
imap <A-j> <C-o>j
imap <A-k> <C-o>k
imap <A-h> <C-o>h
imap <A-l> <C-o>l

" Disable arrow
if get(g:, 'elite_mode')
    nnoremap <Up>    <C-W>+
    nnoremap <Down>  <C-W>-
    nnoremap <Left>  <C-W><
    nnoremap <Right> <C-W>>
endif

" Quickfix mapping
nmap q<C-o> :copen<CR>
nmap q<C-q> :cclose<CR>
nmap ]q :cnext<CR>
nmap [q :cprevious<CR>

"---------- Highlight next search matching ----------

function! HLNext (blinktime)
  let [bufnum, lnum, col, off] = getpos('.')
  let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
  let target_pat = '\c\%#'.@/
  let blinks = 3
  let ring = matchadd('DiffDelete', target_pat, 101)
  redraw
  exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
  call matchdelete(ring)
  redraw
endfunction

nnoremap <silent> n n:call HLNext(0.2)<CR>
nnoremap <silent> N N:call HLNext(0.2)<CR>

"---------- Drag Visual ----------
vmap K xkP`[V`]
vmap J xp`[V`]
vmap H <gv
vmap L >gv

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

" Update plogin
nmap <F8> :PlugUpdate<CR>

" NERDTree toggle
map <silent> <F2> :NERDTreeToggle<CR>

" Tagbar toggle
map <silent> <F3> :TagbarToggle<CR>

" vim-gitgutter toggle
map <silent> <F6> :GitGutterLineHighlightsToggle<CR>

" vim-markdown-composer toggle
map m<C-P> :ComposerStart<CR>

" deoplete
imap <expr><tab> pumvisible() ? "\<C-n>" : "\<Tab>"
imap <expr><C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
imap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
imap <expr><C-z> deoplete#undo_completion()

" Neoterm mapping
tnoremap <ESC> <C-\><C-n>
nmap , :T 
nmap <silent> <leader>tn :botright Tnew<CR>
nmap <silent> <leader>to :botright Topen<CR>
nmap <silent> <leader>tt :tab Tnew<CR> :tabnext<CR>
nmap <silent> <leader>tq :Tclose<CR>
nmap <silent> <leader>tc :Tclear<CR>
nmap <silent> <leader>tm :Tmap 
nmap <leader>rl :TREPLSendLine<CR>
nmap <leader>rf :TREPLSendFile<CR>
vmap <leader>rs :TREPLSendSelection<CR>

" denite mapping
nmap <silent> <C-p> :Denite file_rec<CR>
nmap <silent> <leader>b :Denite buffer -mode=normal<CR>
nmap <silent> <leader>/ :Denite grep -mode=normal<CR>
nmap <silent> <leader>. :DeniteCursorWord grep:. -mode=normal<CR>

" vim-test mapping
nmap t<C-n> :TestNearest<CR>
nmap t<C-f> :TestFile<CR>
nmap t<C-s> :TestSuite<CR>
nmap t<C-l> :TestLast<CR>
nmap t<C-g> :TestVisit<CR>
