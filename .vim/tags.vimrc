if has("autochdir")
  set autochdir
  set tags=tags;
else
  set tags=./tags,./../tags,./*/tags,./../../tags,./../../../tags,./../../../../tags,./../../../../../tags
endif

nnoremap t  <Nop>
nnoremap tt  <C-]>
nnoremap tj  ;<C-u>tag<CR>
nnoremap tk  ;<C-u>pop<CR>
nnoremap tl  ;<C-u>tags<CR>
