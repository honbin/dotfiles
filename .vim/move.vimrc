nnoremap h <Left>
nnoremap j gj
nnoremap k gk
nnoremap l <Right>
nnoremap <Down> gj
nnoremap <Up>   gk

nmap 1 0
nmap 0 ^
nmap 9 $

imap <C-e> <END>
imap <C-a> <HOME>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-h> <Left>
imap <C-l> <Right>

noremap <Space>j <C-f>
noremap <Space>k <C-b>

nmap <Space> ;MBEbn<CR>
nmap <BS> ;MBEbp<CR>

map <F2> <ESC>;bp<CR>
map <F3> <ESC>;bn<CR>
map <F4> <ESC>;bw<CR>

map <kPlus> <C-W>+
map <kMinus> <C-W>-

autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

nnoremap gb '[
nnoremap gp ']

nnoremap [ %
nnoremap ] %

nnoremap gc  `[v`]
vnoremap gc ;<C-u>normal gc<Enter>
onoremap gc ;<C-u>normal gc<Enter>

nnoremap vy vawy

set virtualedit+=block

vnoremap v $h

nnoremap <C-j> ;<C-w>j
nnoremap <C-k> ;<C-k>j
nnoremap <C-l> ;<C-l>j
nnoremap <C-h> ;<C-h>j

" augroup grlcd
"    autocmd!
"    autocmd BufEnter * lcd %:p:h
" augroup END
