set nocompatible
filetype off

set rtp+=~/.vim/vundle/
call vundle#rc()

filetype plugin indent on

Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'thinca/vim-ref'
Bundle 'thinca/vim-quickrun'
Bundle 'kana/vim-fakeclip'
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-fugitive'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'thinca/vim-qfreplace'
Bundle 'houtsnip/vim-emacscommandline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-scripts/yanktmp.vim'

autocmd FileType python let g:pydiction_location = '~/.vim/pydiction/complete-dict'

"-------------------------------------------------------------------------------
" gist-vim
"------------------------------------------------------------------------------
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:github_user = 'honbin'
let g:gist_private = 1

"-------------------------------------------------------------------------------
" vim powerline
"------------------------------------------------------------------------------
let g:Powerline_symbols = 'fancy'

"-------------------------------------------------------------------------------
" vim-indent-guides
"------------------------------------------------------------------------------
let g:indent_guides_auto_colors = 0
autocmd VimEnter, Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter, Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

"-------------------------------------------------------------------------------
" vim-easymotion
"------------------------------------------------------------------------------
let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
let g:EasyMotion_leader_key="<Space>"
let g:EasyMotion_grouping=1
hi EasyMotionTarget ctermbg=none ctermfg=red
hi EasyMotionShade  ctermbg=none ctermfg=blue

"-------------------------------------------------------------------------------
" yanktmp.vim
"------------------------------------------------------------------------------
map <silent> sy :call YanktmpYank()<CR>
map <silent> sp :call YanktmpPaste_p()<CR>
map <silent> sP :call YanktmpPaste_P()<CR>
if has("win32")
  let g:yanktmp_file = $TEMP. '/vimyanktmp'
endif
