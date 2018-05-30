" ---- General ----
syntax on
syntax enable


" Don't wrap text to the screen
set nowrap
" Allow cursor movement to wrap across lines
set whichwrap=<,>,h,l,[,]

" Use 2 spaces instead of tabs
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

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

set ruler
set nu

" enable project level .vimrc
set exrc
set secure

" ~~~~~~~~~~~~~~~~~~~~~~~~~~
" VimPlug https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'lyuts/vim-rtags'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

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
" NERDTree
" ~~~~~~~~~~~~~~~~~~~~~~~~~~
"
" open console or switch to main view
"map <leader><leader> :NERDTreeFind<CR>
map <leader><leader> :NERDTreeToggle<CR>

" calls NERDTreeFind iff NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
function! s:syncTree()
  let s:curwnum = winnr()
  NERDTreeFind
  exec s:curwnum . "wincmd w"
endfunction

function! s:syncTreeIf()
  if (winnr("$") > 1)
    call s:syncTree()
  endif
endfunction

" Shows NERDTree on start and synchronizes the tree with opened file when switching between opened windows
"autocmd BufEnter * call s:syncTreeIf()

" Automatically close vim if only NERDTree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Do not show additional information
let NERDTreeMinimalUI=1

" ~~~~~~~~~~~~~~~~~~~~~~~~~~
" Fugitive 
" ~~~~~~~~~~~~~~~~~~~~~~~~~~
map <leader>gb :Gblame<CR>


" ~~~~~~~~~~~~~~~~~~~~~~~~~~
" YouCompleteme
" ~~~~~~~~~~~~~~~~~~~~~~~~~~
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

"" YCM 补全菜单配色
"" 菜单
"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
"" 选中项
"highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
"inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
nnoremap <leader>jl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jg :YcmCompleter GoToDefinition<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

