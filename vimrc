execute pathogen#infect()
set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required
set runtimepath^=/root/.vim/bundle/ctrlp.vim
set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
set wrap        "dont wrap lines
set linebreak   "wrap lines at convenient points
set mouse=a     "some stuff to get the mouse going in term
set t_Co=256    "tell the term has 256 colors
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set nobackup
set number      "show line number
set cursorline  "highlight current line

nnoremap <C-b> :BufExplorer<CR>

"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

""save pressing Esc twice
map <Esc><Esc> :w<CR>

""key mapping for nerdtree
nmap <silent> <Leader>p :NERDTreeToggle<CR>
