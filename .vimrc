"Pathogen
call pathogen#infect()

" Set up window
map <Leader>n <plug>NERDTreeTabsToggle<CR>
map <leader>r :NERDTreeFind<cr>
autocmd VimEnter * wincmd p
syntax on
set t_Co=256
colorscheme xoria256

let g:Powerline_symbols = 'fancy'
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'
autocmd BufNew * if winnr('$') == 1 | tabmove99 | endif

" Filetype
set filetype=on
filetype plugin on
filetype indent on

" Retain clipboard
xnoremap p pgvy

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
set nobackup
set nowritebackup
set noswapfile
set cc=81
set ttyfast

" Clear Whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Code folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

"Indentation
autocmd FileType javascript,html,css,php,ruby set ai
autocmd FileType javascript,html,css,php,ruby set sw=2
autocmd FileType javascript,html,css,php,ruby set ts=2
autocmd FileType javascript,html,css,php,ruby set sts=2

