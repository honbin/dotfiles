set wrapscan
set ignorecase
set smartcase
set incsearch
set hlsearch
nmap <ESC><ESC> ;nohlsearch<CR><ESC>

vnoremap <silent> // y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
vnoremap /r "xy;%s/<C-R>=escape(@x, '\\/.*$^~[]')<CR>//gc<Left><Left><Left>

nnoremap <expr> s* ':%substitute/\<' . expand('<cword>') . '\>/'

nnoremap <C-i>  :<C-u>help<Space>
nnoremap <C-i><C-i> :<C-u>help<Space><C-r><C-w><Enter>

command! -nargs=1 Gb :GrepBuffer <args>
nnoremap <C-g><C-b> :<C-u>GrepBuffer<Space><C-r><C-w><Enter>
