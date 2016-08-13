syntax on
set background=dark

" tab
set tabstop=2
set softtabstop=2
set expandtab

" line number
set number

" visual function
set cursorline
set wildmenu
set showmatch
set textwidth=80
set colorcolumn=80
highlight ColorColumn ctermbg=7
highlight LineNr ctermfg=0
highlight CursorLineNr ctermfg=8
highlight Pmenu ctermbg=7

" search
set incsearch
" set hlsearch

" folding
" set foldenable

" encoding
set encoding=utf-8


" For Python
autocmd FileType py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=80 |
    \ set expandtab |
    \ set autoindent

" For C/C++
autocmd FileType c, cpp, h, hpp, cu
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent 

" For ClangFormat
autocmd FileType c,cpp,h,hpp,cu
    \ let g:clang_format#command='clang-format-3.8'|
    \ let g:clang_format#code_style='google' |
    \ let g:clang_format#style_options = {
    \     "Standard" : "C++11",
    \     "IndentWidth": 2}

" For YouCompleteMe
let g:ycm_global_ycm_extra_conf = '/home/maxujie/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_cache_omnifunc=1

" For airline
set laststatus=2   " Always show the statusline
let g:airline#extensions#tabline#enabled = 1

" For powerline
" let g:Powerline_symbols = 'fancy'
" set nocompatible   " Disable vi-compatibility
" set laststatus=2   " Always show the statusline
" set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

" For NERDTree
let NERDTreeChDirMode=1
let NERDTreeIgnore=['\~$']
map <C-\> :NERDTreeToggle<CR>

" For syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



" For Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'rhysd/vim-clang-format'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
