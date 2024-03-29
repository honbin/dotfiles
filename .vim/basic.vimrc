set nocompatible
let mapleader = ","
set scrolloff=5
set textwidth=0
set nobackup
set autoread
set noswapfile
set hidden
set backspace=indent,eol,start
set formatoptions=lmoq
set vb t_vb=
set browsedir=buffer
set whichwrap=b,s,h,l,<,>,[,]
set showcmd
set showmode
set viminfo='50,<1000,s100,\"50
set modelines=0

set clipboard+=unnamed

set guioptions+=a
set ttymouse=xterm2

set clipboard=unnamed
imap <C-K>  <ESC>"*pa

command! Ev edit $MYVIMRC
command! Rv source $MYVIMRC

filetype off
set helpfile=$VIMRUNTIME/doc/help.txt
filetype plugin on
