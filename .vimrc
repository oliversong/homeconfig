set nocompatible
set background=dark
runtime! autoload/pathogen.vim
silent! call pathogen#helptags()
silent! call pathogen#runtime_append_all_bundles()
call pathogen#infect()

colorscheme ir_black

filetype plugin indent on
filetype indent on
filetype on
syntax on
set mouse=a
scriptencoding utf-8
set virtualedit=onemore
set history=1000
set nospell

set tabpagemax=15
set showmode

set cursorline
hi cursorline guibg=#333333

if has('cmdline_info')
  set ruler
  set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
  set showcmd
endif

if has('statusline')
set laststatus=2

  " Broken down into easily includeable segments
  set statusline=%<%f\    " Filename
  set statusline+=%w%h%m%r " Options
  set statusline+=\ [%{&ff}/%Y]            " filetype
  set statusline+=\ [%{getcwd()}]          " current dir
  "set statusline+=\ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

set backspace=indent,eol,start
set linespace=0
set nu
set showmatch
set incsearch
set hlsearch
set winminheight=0
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest,full
set whichwrap=b,s,h,l,<,>,[,]
set scrolljump=5
set scrolloff=3

" folding settings
set nofoldenable
set foldmethod=indent
set foldnestmax=10
set foldlevel=1

set list
set listchars=tab:..,trail:.,extends:#,nbsp:.

set nowrap
set autoindent
set si
set shiftwidth=4
au BufNewFile,BufReadPost *.coffee setl shiftwidth=4 expandtab
set expandtab
set tabstop=4
set softtabstop=4
"   autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

let mapleader = ','
nnoremap ; :

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

nnoremap j gj
nno remap k gk

cmap W w
cmap WQ wq
cmap wQ wq
cmap Wq wq
cmap Q q

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"


au FileType * let b:delimitMate_autoclose = 1
au FileType xml,html,xhtml let b:delimitMate_matchpairs = "(:),[:],{:}"
au FileType xhtml,xml ru ftplugin/html/autoclosetag.vim
