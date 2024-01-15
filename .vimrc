set nocompatible  " be iMproved, required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
" Plug 'VundleVim/Vundle.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'preservim/nerdtree'
" Necessary for vim-easytags
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'} 
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" Tagbar showing variables and classes
Plug 'majutsushi/tagbar'
" Plug for GitHub
Plug 'tpope/vim-fugitive'
" Shows unstaged git changes
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'frazrepo/vim-rainbow'
" Fuzzy finder
Plug 'junegunn/fzf'  
Plug 'junegunn/fzf.vim'
" Vim plugin for training"
Plug 'takac/vim-hardtime'
" Calculator
Plug 'arecarn/vim-crunch'
" Vim for programming languages
Plug 'sheerun/vim-polyglot'
" Vim for latex
Plug 'lervag/vimtex'
" Alinhar tabela
Plug 'godlygeek/tabular'
" Gruvbox
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim'
Plug 'maxmx03/solarized.nvim'
Plug 'relastle/bluewery.vim'
Plug 'preservim/vimux'
" Auto pairs
" Plug 'jiangmiao/auto-pairs'
" Coc neovim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'ycm-core/YouCompleteMe'
" Plug 'tenfyzhong/CompleteParameter.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" All of your plugins must be added before the following line
call plug#end()            " required
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
"let g:hardtime_default_on = 1
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
let g:UltiSnipsSnippetDirectories=["/home/gustavo/.config/coc/ultisnips", "/home/gustavo/.vim/UltiSnips", "/home/gustavo/.vim/plugged/ultisnips", "/home/gustavo/.vim/plugged/vim-snippets/UltiSnips"]
let g:UltiSnipsExpandTrigger="<S-TAB>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
" let g:UltiSnipsListSnippets="<c-space>"

hi SpellBad cterm=underline

" set bg=dark  " light
colorscheme tokyonight

" change cursor shape when changing from normal to insert and vice versa
" fix problem with tmux and st terminal
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"
" make changing from insert to normal faster
set ttimeoutlen=50

" set clipboard+=unnamed  " use the clipboards of vim and win
" set paste               " Paste from a windows or from vim
" set go+=a               " Visual selection automatically copied to the clipboard


source $HOME/.vim/mappings.vim
source $HOME/.vim/coc.vim
