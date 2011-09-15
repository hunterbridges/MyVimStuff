" Filetype
set filetype=on
filetype plugin on
filetype indent on

" Basic env
set ruler
set number
set smartindent
set scrolloff=10
set expandtab
set ai
set sw=4
set ts=4
set sts=4
set backspace=indent,eol,start

" 80 char warning
set cc=81
let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" Clear Whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Set up window
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
colorscheme blue

" Code folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Disable arrow keys
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

"Indentation
autocmd FileType javascript,html,css,php set ai
autocmd FileType javascript,html,css,php set sw=2
autocmd FileType javascript,html,css,php set ts=2
autocmd FileType javascript,html,css,php set sts=2

"Enable autocompletion
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
