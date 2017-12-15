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
colorscheme one

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

" Set the temp directory
let vimdir=fnamemodify(expand($MYVIMRC), ":p:h")
let &directory=vimdir.'/tmp,'.&directory
