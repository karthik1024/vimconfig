" automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" better copy and paste
set pastetoggle=<f2>
set clipboard=unnamed

" mouse and backspace
set mouse=a
set bs=2

" rebind <leader> key
let mapleader = ","

" bind nohl
" removes highlight of your last search
noremap <c-n> :nohl<cr>
vnoremap <c-n> :nohl<cr>
inoremap <c-n> :nohl<cr>

" easier movement between splits
map <c-j> <esc><c-w>j
map <c-k> <esc><c-w>k
map <c-l> <esc><c-w>l
map <c-h> <esc><c-w>h

" make moving in wrapped lines more consistent
nnoremap j gj
nnoremap k gk

" easier moveing of code blocks
vnoremap < <gv
vnoremap > >gv

" map ;; to : in normal mode to save pressing shift
inoremap ;' <esc>
vnoremap ;' <esc>

" resize splits when window is resized
au vimresized * exe "normal! \<c-w>="

" showing line numbers and length
set number 
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight colorcolumn ctermbg=233

" useful settings
set history=700
set undolevels=700
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" disable swap files
set backupdir=/tmp
set directory=/tmp

" setup pathogen to manage your plugins
filetype off
call pathogen#infect()
call pathogen#helptags()
" enable syntax highlighting
filetype plugin indent on
syntax on 

" Encoding
set encoding=utf-8

" stop the annoying bell sound in vim
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" colorscheme
set t_co=256
color solarized 
