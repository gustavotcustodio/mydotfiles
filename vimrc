set nocompatible  " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'preservim/nerdtree'
" Necessary for vim-easytags
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} 
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" Tagbar showing variables and classes
Plugin 'majutsushi/tagbar'
" Plugin for GitHub
Plugin 'tpope/vim-fugitive'
" Shows unstaged git changes
Plugin 'airblade/vim-gitgutter'
Plugin 'itchyny/lightline.vim'
Plugin 'frazrepo/vim-rainbow'
" Fuzzy finder
Plugin 'junegunn/fzf'  
Plugin 'junegunn/fzf.vim'
" Vim plugin for training"
Plugin 'takac/vim-hardtime'
" Calculator
Plugin 'arecarn/vim-crunch'
" Vim for programming languages
Plugin 'sheerun/vim-polyglot'
" Vim for latex
Plugin 'lervag/vimtex'
" Alinhar tabela
Plugin 'godlygeek/tabular'
" Gruvbox
Plugin 'morhetz/gruvbox'
Plugin 'preservim/vimux'
" Auto pairs
Plugin 'jiangmiao/auto-pairs'
" Coc neovim
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" Plugin 'ycm-core/YouCompleteMe'
" Plugin 'tenfyzhong/CompleteParameter.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Set fuzzyfinder on runpath
set rtp+=~/.fzf

set expandtab
set tabstop=4
set shiftwidth=4
set mouse=a
set shell=/bin/zsh
" Line number and relative line numbers
set number
set relativenumber
" Highlight when searching
set hlsearch
set incsearch
" Make lightline work
set laststatus=2
set breakindent
set encoding=utf-8
set ignorecase
set smartcase
syntax on

let &t_TI = ""
let &t_TE = ""

" Autoindent with @i
let @i='ggVG='

" Hardtime as default
" let g:hardtime_default_on = 1
"let g:python3_host_prog = '/usr/bin/python'
"let g:python_host_prog = '/usr/bin/python'
"set pyxversion=3

let g:vimtex_quickfix_ignore_filters = [
  \'Underfull .*',
  \'Overfull .*',
  \'Overfull .*',
  \'Package microtype .*',
  \'Missing "language".*',
  \]

" Activate vimtex
let g:tex_flavor = 'latex'
let g:vimtex_view_general_viewer = 'zathura'

" Trigger configuration for snippets
let g:UltiSnipsSnippetDirectories=["/home/gustavo/.config/coc/ultisnips", "/home/gustavo/.vim/UltiSnips", "/home/gustavo/.vim/bundle/vim-snippets/UltiSnips"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<c-space>"

hi SpellBad cterm=underline

colorscheme gruvbox
set bg=dark

" change cursor shape when changing from normal to insert and vice versa
" fix problem with tmux and st terminal
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"
" make changing from insert to normal faster
set ttimeoutlen=50

source $HOME/.vim/mappings.vim
source $HOME/.vim/coc.vim
