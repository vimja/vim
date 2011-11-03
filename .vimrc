set nocompatible

call pathogen#infect()
call pathogen#helptags()

set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

set t_Co=256
colorscheme molokai
set hidden "buffers
set diffopt+=iwhite

set undofile
set number showmode 
let loaded_matchparen=1 "turn off parenthesis highlighting

set autoindent smartindent 
set tabstop=4 expandtab shiftwidth=4 softtabstop=4 backspace=2
set incsearch ignorecase smartcase wrapscan hlsearch 

"filetypes
filetype plugin on
filetype indent on
filetype on
syntax on

"shortcuts
map <Tab> :NERDTreeToggle<CR> 
map ! :Tlist<CR>  
map <C-b> :ConqueTerm zsh<CR>
nnoremap <C-\> :GundoToggle<CR>

nnoremap <F1> :reg<CR>
map <CR> o<Esc> 

"split panel resizing
if bufwinnr(1)
    map + <C-W>+  
    map - <C-W>-
    map < <C-W><
    map > <C-W>>
endif


