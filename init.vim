" ---- General ----
syntax on
syntax enable


" Don't wrap text to the screen
set nowrap
" Allow cursor movement to wrap across lines
set whichwrap=<,>,h,l,[,]

" Use 4 spaces instead of tabs
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" set working directory to current file
"set autochdir

" Indention
set autoindent
set nosmartindent
set nocindent

" Better search
set ignorecase
set smartcase
set incsearch
set hlsearch

" show whats been entered
set showcmd

" color
colorscheme OceanicNext
set background=dark

" ~~~~~~~~~~~~~~~~~~~~~~~~~~
" Plugins
" ~~~~~~~~~~~~~~~~~~~~~~~~~~
filetype off

autocmd FileType cpp setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 softtabstop=4

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#rc('~/.config/nvim/bundle')
"call vundle#begin('~/.config/nvim/bundle')

"Bundle 'gmarik/Vundle.vim'
"Bundle 'kien/ctrlp.vim'

"Plugin 'VundleVim/Vundle.vim'

" Custom plugins...
" Vundle
Plugin 'gmarik/vundle'

" Ctrl-P
Plugin 'kien/ctrlp.vim'

" NerdTree
Plugin 'scrooloose/nerdtree.git'

filetype plugin indent on


" ~~~~~~~~~~~~~~~~~~~~~~~~~~
" Key bindings 
" ~~~~~~~~~~~~~~~~~~~~~~~~~~
let mapleader=","
" tabs
noremap <leader>f :tabn<CR>
noremap <leader>a :tabp<CR> 
noremap <leader>t :tabnew<Space>

" Fat finger saving
command WQ wq
command Wq wq
command W w
command Q q


" ~~~~~~~~~~~~~~~~~~~~~~~~~~
" Plugin key bindings
" ~~~~~~~~~~~~~~~~~~~~~~~~~~
"
" ----Nerd Tree
" open console or switch to main view
map <leader><leader> :NERDToggle<CR>
" search for files
map <leader>r :NERDTreeFind<CR>

" ~~~~~~~~~~~~~~~~~~~~~~~~~~
" Status
" ~~~~~~~~~~~~~~~~~~~~~~~~~~
set ruler
set cursorline
