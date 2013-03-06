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

nmap <C-h> :tabprevious<CR>
nmap <C-l> :tabnext<CR>
map <C-h> :tabprevious<CR>
map <C-l> :tabnext<CR>
imap <C-h> <Esc>:tabprevious<CR>i
imap <C-l> <Esc>:tabnext<CR>i
nmap <C-t> :tabnew<CR>
imap <C-t> <Esc>:tabnew<CR>

map <C-j> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>

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
set wildignore+=*.o,*.obj,.git,public/assets/**

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

let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_post_private=1
