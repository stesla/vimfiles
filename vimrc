" load pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect('bundle/{}')
execute pathogen#helptags()

" configure appearance 
set guioptions-=b "remove bottom scrollbar:
set guioptions-=e "use console-style tabs in gvim
set guioptions-=L "remove left-hand scroll bar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=T "remove toolbar
set number
set visualbell

syntax on

au BufNewFile,BufRead *.mush,*.mux setf mush

set background=dark
colorscheme apprentice

" Map C-t to ctrlp tag lookup
let g:ctrlp_extensions = ['tag']
nmap <silent> <C-t> :CtrlPTag<CR>
set wildignore+=*/.git*,*/.hg/*,*/.svn/*,*.idea/*,*/.DS_Store/*,*/node_modules/*,*/venv/*

" NERDTree configure
let g:NERDTreeWinPos = "right"

" basic settings
filetype plugin indent on

" indent settings
"
set tabstop=4
set expandtab
set softtabstop=2
set shiftwidth=2
set shiftround
set smartindent

" wordwrap settings
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0

" Set the path
set path=.,,**

" Set the temp directory
let vimdir=fnamemodify(expand($MYVIMRC), ":p:h")
let &directory=vimdir.'/tmp//,'.&directory

" Set the guifont
set guifont=default
if has("gui_running")
  set guifont=default
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h18
  elseif has("gui_win32")
    set guifont=Consolas:h14:cANSI
  endif
endif
