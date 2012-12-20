set noimdisable
set iminsert=0 imsearch=0
set noimcmdline
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

nmap ye ;let @"=expand("<cword>")<CR>
vnoremap p <Esc>;let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

set expandtab

inoremap , ,<Space>

augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
augroup END

inoremap <C-u>  <C-g>u<C-u>
inoremap <C-w>  <C-g>u<C-w>

command! Pt :set paste!

nmap y9 y$
nmap y0 y^

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

autocmd BufWritePre * :%s/\s\+$//ge
autocmd BufWritePre * :%s/\t/  /ge

inoremap <expr> ,df strftime('%Y/%m/%d %H:%M:%S')
inoremap <expr> ,dd strftime('%Y/%m/%d')
inoremap <expr> ,dt strftime('%H:%M:%S')

" augroup phpsyntaxcheck
"     autocmd!
"     autocmd BufWrite *.php w !php -l
" augroup END

" augroup rbsyntaxcheck
"     autocmd!
"     autocmd BufWrite *.rb w !ruby -c
" augroup END

augroup templateload
    autocmd!
    autocmd BufNewFile *.rb 0r ~/.vim/templates/skeleton.rb
augroup END

augroup vimrc-auto-mkdir  " {{{
  autocmd!
  autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
  function! s:auto_mkdir(dir, force)  " {{{
    if !isdirectory(a:dir) && (a:force ||
    \    input(printf('"%s" does not exist. Create? [y/N]', a:dir)) =~? '^y\%[es]$')
      call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
    endif
  endfunction  " }}}
augroup END  " }}}

command! -nargs=1 -complete=file Rename f <args>|call delete(expand('#'))''))
