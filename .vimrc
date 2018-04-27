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

" set working directory to current file set autochdir

" Indention
set autoindent
set nosmartindent
set nocindent

" Better search
set ignorecase
set smartcase
set incsearch
set hlsearch

" Don't show command to speed up
set noshowcmd
set nolazyredraw

" color
colorscheme OceanicNext
set background=dark

" ~~~~~~~~~~~~~~~~~~~~~~~~~~
" VimPlug https://github.com/junegunn/vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'lyuts/vim-rtags'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/a.vim'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

call plug#end()


" ~~~~~~~~~~~~~~~~~~~~~~~~~~
" Key bindings
" ~~~~~~~~~~~~~~~~~~~~~~~~~~
let mapleader=","
" tabs
noremap <leader>tn :tabn<CR>
noremap <leader>tp :tabp<CR>
noremap <leader>tc :tabnew<Space>

" Fat finger saving
command WQ wq
command Wq wq
command W w
command Q q


" ~~~~~~~~~~~~~~~~~~~~~~~~~~
" Plugin key bindings
" ~~~~~~~~~~~~~~~~~~~~~~~~~~
"
" ~~~ NerdTree
" open console or switch to main view
map <leader><leader> :NERDTreeToggle<CR>
" search for files
" map <leader>r :NERDTreeFind<CR>

" ~~~ fugitive
map <leader>gb :Gblame<CR>

" ~~~~~~~~~~~~~~~~~~~~~~~~~~
" Status
" ~~~~~~~~~~~~~~~~~~~~~~~~~~
set ruler
