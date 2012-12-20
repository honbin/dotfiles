set autoindent
set smartindent
set cindent

set tabstop=4 shiftwidth=4 softtabstop=0

if has("autocmd")
  filetype plugin on
  filetype indent on

  autocmd FileType html :set indentexpr=
  autocmd FileType xhtml :set indentexpr=
endif
