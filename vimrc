" load pathogen
"
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect('bundle/{}')
execute pathogen#helptags()

" configure appearance 
"
set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=L "remove left-hand scroll bar

syntax on

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Map C-t to ctrlp tag lookup
let g:ctrlp_extensions = ['tag']
nmap <silent> <C-t> :CtrlPTag<CR>

" basic settings
"
filetype plugin indent on

" indent settings
"
set sts=2
set shiftwidth=2
set expandtab
set smartindent

" Set the path
set path=.,,**

" toggle light/dark
call togglebg#map("<F5>")
