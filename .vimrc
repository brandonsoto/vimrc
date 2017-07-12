"----------------------------------------------------------------------------------------------------
" Vundle Options
"----------------------------------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe' (this disables cpp syntax check)
Plugin 'tpope/vim-fugitive'
Plugin 'tomasr/molokai'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'wincent/command-t'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'honza/vim-snippets'
Plugin 'sirver/UltiSnips'
Plugin 'scrooloose/nerdtree'

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
"----------------------------------------------------------------------------------------------------

set number
set linebreak	
set showbreak=+++
set textwidth=100	
set showmatch
set visualbell	
 
set hlsearch
set smartcase
set ignorecase	
set incsearch
 
set autoindent	
set expandtab	
set shiftwidth=4	
set smartindent	
set smarttab	
set softtabstop=4
set wildmenu
set wildmode=full
 
set confirm	
set ruler
 
set undolevels=1000
set backspace=indent,eol,start

colors molokai

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{fugitive#statusline()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_aggregate_errors = 1

let g:mapleader = ","

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

set laststatus=2 " allow airline theme

let g:airline_theme='luna'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsEditSplit="vertical"

map <C-n> :NERDTreeToggle<CR>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

