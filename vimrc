" load pathogen
"
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect('bundle/{}')
execute pathogen#helptags()

" configure appearance 
"
set guioptions-=b "remove bottom scrollbar:
set guioptions-=e "use console-style tabs in gvim
set guioptions-=L "remove left-hand scroll bar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=T "remove toolbar
set number

syntax on

au BufNewFile,BufRead *.mush,*.mux setf mush

set background=dark
colorscheme apprentice

" Map C-t to ctrlp tag lookup
let g:ctrlp_extensions = ['tag']
nmap <silent> <C-t> :CtrlPTag<CR>

" basic settings
"
filetype plugin indent on

" indent settings
"
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround
set smartindent

" Set the path
set path=.,,**

" Set the temp directory
let vimdir=fnamemodify(expand($MYVIMRC), ":p:h")
let &directory=vimdir.'/tmp,'.&directory

" Set the guifont
set guifont=default
if has('gui_macvim')
  set guifont=Source\ Code\ Pro\ for\ Powerline:h14
endif
