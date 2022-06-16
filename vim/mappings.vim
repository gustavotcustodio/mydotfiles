autocmd Filetype python map <F5> :w<CR>:!python<space><C-r>%<CR>
autocmd FileType python setlocal omnifunc=RopeCompleteFunc
" autocmd Filetype python map <Space><F5> :call VimuxRunCommand("python " . bufname("%"))<CR>
autocmd Filetype rmd map <F5> :w<CR>:!echo<space>"require(rmarkdown);<space>render('<C-r>%')"<space>\|<space>R<space>--vanilla<CR>
autocmd Filetype java map <F5> :w<CR>:!java<space>%:r<CR>
autocmd Filetype java map <space><F5> :w<CR>:!javac<space>*.java<CR>

highlight SpellBad term=underline cterm=underline

" remapping of keys
map <Space> <Leader>
vnoremap y "+y
vnoremap p "+p
vnoremap P "+P
vnoremap x "+x
nnoremap y "+y
nnoremap p "+p
nnoremap P "+P
nnoremap x "+x
nnoremap <C-h> gT
nnoremap <C-l> gt
nnoremap <C-n> :tabnew<CR>
noremap <leader>t :Tabularize /
nnoremap <leader>l <C-w>l
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>n <C-w>v<C-w>l
nnoremap <leader>v <C-w>s<C-w>j:terminal<CR>
nnoremap <leader><tab> :NERDTreeToggle<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>, :Tagbar<CR>
nnoremap <leader>c :noh<CR>
nnoremap <leader>is :set<space>spell<space>spelllang=en_us,pt_br<CR>
nnoremap <leader>in :set<space>spell<space>spelllang=<CR>
" Remap for fuzzy finder
noremap <leader>f :FZF<CR>
nnoremap <leader>g :Rg<cr>
" allow move between list items with vim keys
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
