set ruler
set number
set tabstop=2
set shiftwidth=2
set cindent
set scrolloff=10
set expandtab

if has ('gui_running')
  set mouse=a
endif

let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

autocmd BufWritePre * :%s/\s\+$//e
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
