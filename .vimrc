" " " " " " " " " " " " " " " " "
" Landon's .vimrc file  "
" " " " " " " " " " " " " " " " "
set nocompatible    " use Vim settings rather than Vi settings
set autoread		" auto read when a file is changed from the outside

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'Valloric/YouCompleteMe.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'airblade/vim-gitgutter'
Plugin 'rking/ag.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" search "
set ignorecase		" ignore case
set smartcase		" unless capital characters are used
set incsearch		" find the next match as search is type
set hlsearch    " highlight matches

" visual stuff "
syntax enable		" turn on syntax highlighting
set ruler           " always show current pos
set cmdheight=2
set showcmd         " show incomplete commands at bottom
set showmode        " show current mode at bottom
set showmatch       " highlight matching [{()}]
set number          " show line numbers
set wildmenu        " visual autocomplete for command menu
colorscheme solarized
highlight clear SignColumn

" editing stuff "
set autoindent		" automatically indent
set smartindent
set smarttab
set nowrap			" don't wrap lines
set linebreak       " wrap lines at convenient points
set expandtab		" spaces instead of tabs
set shiftwidth=2	" tab spacing
set softtabstop=2   " number of spaces in tab when editing
set tabstop=2		" tab spacing
set backspace=indent,eol,start  " allow backspace in insert mode
set scrolloff=8     " start scrolling when 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
let NERDSpaceDelims=1

" Key bindings "
" space open/closes folds
noremap <space> za
" open VimFilerExplorer
noremap <c-e> :VimFilerExplorer<CR>

set pastetoggle=<F3>
let mapleader="," " leader is comma

" CtrlP settings
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" VimFiler settings
let g:vimfiler_as_default_explorer = 1

set visualbell  " visual error alert
set t_vb=			  " helps with errors

set mouse=a		  " allow mouse use

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre * :%s/\s\+$//e
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END
