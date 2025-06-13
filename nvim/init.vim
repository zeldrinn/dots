" Disables VI compatibility
set nocompatible

" =================== PLUGINS =====================
call plug#begin("~/.vim/plugged")
 Plug 'kamwitsta/mythos'
 Plug 'arcticicestudio/nord-vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
 Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
 Plug 'neovim/nvim-lspconfig'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'fannheyward/coc-pyright'
 Plug 'neoclide/coc.json'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'BurntSushi/ripgrep'
 Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
 Plug 'itchyny/lightline.vim'
 Plug 'edkolev/tmuxline.vim'
call plug#end()

" =================================================

" Load lua scripts (e.g. for treesitter config)
lua require('init')

" Auto-indent based on file type
filetype plugin indent on

" Enable syntax highlighting
"syntax enable

" Define color scheme
"colorscheme nord

" Configure lightline theme
let g:lightline = {'colorscheme': 'powerline'}

" Configure tmuxline theme
let g:tmuxline_preset = 'nightly_fox'

" Remap leader key
let mapleader = ";"

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

" Hide mode info as lightline shows it
set noshowmode

" Old habits die hard
noremap <Up>    <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>
noremap <Right> <NOP>
nnoremap <Space> <NOP>

" Hotkey to reload vim config
nnoremap <silent> <Leader><Leader> :source $MYVIMRC<cr>

