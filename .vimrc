call pathogen#infect()
call pathogen#helptags()

set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

nnoremap <C-\> :GundoToggle<CR>
nnoremap <F1> :reg<CR>
"appearance
set t_Co=256
colorscheme molokai
"colorscheme mayansmoke
syntax on

set undofile
set number
set showmode "show current mode
let loaded_matchparen=1 "turn off parenthesis highlighting

"vi compatibility
"set vb "no visual bell
set nocompatible

"editing
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set backspace=2

"filetypes
filetype plugin on
filetype indent on
filetype on


"shortcuts
imap jj <Esc>
map <Tab> :NERDTreeToggle<CR> "backtick toggle nerdtree
map ! :Tlist<CR>  "exclamation mark toggle taglist
map <CR> o<Esc> 

"split panel resizing
if bufwinnr(1)
    map + <C-W>+  
    map - <C-W>-
    map < <C-W><
    map > <C-W>>
endif

"ConqueTerm
map <C-b> :ConqueTerm bash<CR>
"imap ll <Esc>Gdggi<C-l>i<CR>
"nmap <C-l> iclear<CR><Esc>Gdggi<CR><CR>


"search
set incsearch
set ignorecase
set smartcase
set wrapscan
set hlsearch "highlight

"buffers
set hidden

"code folding
"set foldenable
"set fdm=syntax
"set fdm=indent
nnoremap <space> za

"vimdiff
set diffopt+=iwhite




"plugins ===
"
"nerdtree
"taglist
"surround
"supertab
"snipmate
"align
"matchit
"bufexplorer

