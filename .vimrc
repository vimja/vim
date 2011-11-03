set nocompatible

call pathogen#infect()
call pathogen#helptags()

filetype on
filetype plugin on
filetype indent on
syntax on

set scrolloff=8
set virtualedit=all "cursor freedom!
set complete=.,w,b,t

set t_Co=256
colorscheme molokai
set hidden "buffers
set diffopt+=iwhite

set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

set undofile
set number showmode 
let loaded_matchparen=1 

set autoindent smartindent 
set tabstop=4 expandtab shiftwidth=4 softtabstop=4 backspace=2
set incsearch ignorecase smartcase wrapscan hlsearch 

"shortcuts
map <Tab> :NERDTreeToggle<CR> 
map ! :Tlist<CR>  
map <C-b> :ConqueTerm zsh<CR>
nnoremap <C-\> :GundoToggle<CR>

nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
nnoremap <F1> :reg<CR>
map <CR> o<Esc> 
nmap . .`[

"split panel resizing
if bufwinnr(1)
    map + <C-W>+  
    map - <C-W>-
    map < <C-W><
    map > <C-W>>
endif
