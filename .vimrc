syntax enable
set t_Co=256
syntax on 
colorscheme desert
set incsearch 
set hlsearch
set showmatch
set ruler 
set laststatus=2
set mouse=a
set number
set lazyredraw
set wildmenu
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
highlight LineNr ctermfg=grey
"set colorcolumn=80
"highlight ColorColumn ctermbg=237


"custom
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab "tabs are spaces
set guioptions-=T  
set guioptions-=r 
set guioptions-=m 
set foldmethod=indent
set foldlevel=99
set autoread
set backspace=indent,eol,start


" keybindings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
inoremap jj <ESC>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>
map <leader>ss :setlocal spell!<cr>
nmap <leader>w :w!<cr>
nmap <leader>p :!pdflatex %<cr>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" move lines up/down
nmap <leader>j mz:m+<cr>`z
nmap <leader>k mz:m-2<cr>`z
vmap <leader>j :m'>+<cr>`<my`>mzgv`yo`z
vmap <leader>k :m'<-2<cr>`>my`<mzgv`yo`z

map <Enter> o<ESC> 


"Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'davidhalter/jedi-vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'klen/python-mode'
Plugin 'mattn/emmet-vim'
Plugin 'lervag/vimtex'
Plugin 'xuhdev/vim-latex-live-preview'
call vundle#end()            " required
filetype plugin indent on    " required


"Airline stuff"
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline_theme= 'badwolf'
