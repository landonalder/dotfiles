" " " " " " " " " " " " " " " " "
" Landon's .vimrc file  "
" " " " " " " " " " " " " " " " "

syntax enable
colorscheme solarized
set t_Co=16
set background=light

set nocompatible    " use Vim settings rather than Vi settings

set autoread		" auto read when a file is changed from the outside

" search "
set ignorecase		" ignore case
set smartcase		" unless capital characters are used
set incsearch		" find the next match as search is type

" visual stuff "
syntax on			" turn on syntax highlighting
set ruler           " always show current pos
set cmdheight=2
set showcmd         " show incomplete commands at bottom
set showmode        " show current mode at bottom

" editing stuff "
set autoindent		" automatically indent	
set smartindent		
set smarttab
set nowrap			" don't wrap lines
set linebreak       " wrap lines at convenient points
set expandtab		" spaces instead of tabs
set shiftwidth=4	" tab spacing
set tabstop=4		" tab spacing
set backspace=indent,eol,start  " allow backspace in insert mode
set scrolloff=8     " start scrolling when 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" Key bindings "
map <leader>ss :setlocal spell!<cr>
set pastetoggle=<F3>

filetype plugin on
filetype indent on

" set list listchars=tab:\ \ ,trail:·

set visualbell		" visual error alert
set t_vb=			" helps with errors

set mouse=a			" allow mouse use
