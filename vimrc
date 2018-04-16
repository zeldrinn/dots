" Disables VI compatibility
set nocompatible

" Needed for Vundle setup, enable after
filetype off

" Loads vundle plugin to give us access to vundle funcs
set rtp+=~/.vim/bundle/Vundle.vim

" Enforce https for vundle pulling from git
let g:vundle_default_git_proto = 'https'

" Initializes vundle
call vundle#begin()

" =================== PLUGINS =====================
Plugin 'VundleVim/Vundle.vim'

" Support for interacting with git
Plugin 'tpope/vim-fugitive'

" Support for go syntax
Plugin 'fatih/vim-go'

" Generic syntax checker
Plugin 'scrooloose/syntastic'

" Intelligent tab completion (aggregates other sources)
Plugin 'ervandew/supertab'

" Color scheme
Plugin 'kamwitsta/mythos'

" Fuzzy find files
Plugin 'kien/ctrlp.vim'

" File system explorer
Plugin 'scrooloose/nerdtree'

" =================================================

" Turn off vundle
call vundle#end()

" I DON'T GET THIS
filetype plugin indent on

" Enable syntax highlighting
syntax enable

" Define color scheme
colorscheme mythos

" Enable normal backspacing
set backspace=2

" Show all matches for tab completion of vim commands
set wildmode=list:longest

" Ignore .git directory for completion
set wildignore=.git

" To keep cursor at center when paging
set scrolloff=9999

" Reserves 3 chars for line numbers
set numberwidth=3

" Relative line numbers
set relativenumber

" Renders line at cursor row
set cursorline

" Cause kav needs help
noremap <Up>    <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>
noremap <Right> <NOP>

" Open NERDTree when starting vim
autocmd VimEnter * NERDTree

" Open NERDTree when starting vim without file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree when starting vim on a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
