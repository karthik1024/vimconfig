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

" quicksave command
map <c-s> <esc>:w<cr>
imap <c-s> <esc>:w<cr>a

" quick quit command
noremap <leader>e :q<cr>
noremap <leader>ea :qa<cr>

" easier movement between splits
map <c-j> <esc><c-w>j
map <c-k> <esc><c-w>k
map <c-l> <esc><c-w>l
map <c-h> <esc><c-w>h

" emacs style begening and end line movement
imap <c-e> <c-o>$
imap <c-a> <c-o>^

" make moving in wrapped lines more consistent
nnoremap j gj
nnoremap k gk

" easier way to get to normal mode
"vmap yu <esc>
"vmap yu <esc>
"imap uy <esc>
"imap uy <esc>

" learn vim the hard way


" easier moveing of code blocks
vnoremap < <gv
vnoremap > >gv

" select all
map <leader>a ggvg

" map ;; to : in normal mode to save pressing shift
nmap ;; :

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

" vim-powerline
" git clone git://github.com/lokaltog/vim-powerline.git
set laststatus=2

" settings for pyton-mode
map <leader>d :call ropegotodefinition()<cr>
let ropevim_enable_shortcuts=1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope = 0
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1

" Set gui font
set guifont=Inconsolata\ for\ Powerline\ Medium\ 12

" Encoding
set encoding=utf-8

" vim-powerline settings
let g:Powerline_symbols='fancy'
set laststatus=2

" stop the annoying bell sound in vim
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" drag lines up or down
noremap <a-j> :m+<cr>
noremap <a-k> :m-2<cr>
inoremap <a-j> <esc>:m+<cr>
inoremap <a-k> <esc>:m-2<cr>
vnoremap <a-j> :m'>+<cr>gv
vnoremap <a-k> :m-2<cr>gv

" colorscheme
set t_co=256
color solarized 
set background=dark
" Ignore pep8 80 char limit rule
let g:pymode_lint_ignore="E501"

