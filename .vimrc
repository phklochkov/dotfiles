set nocompatible " Fuck VI... That's for grandpas.
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin for golang
Plugin 'fatih/vim-go'

call vundle#end()            " required

" We have to turn this stuff back on if we want all of our features.
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

" To ignore plugin indent changes, instead use:
"filetype plugin on

set number

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

inoremap jj <esc> " remap esc to jj
"inoremap jk <esc>
"inoremap kj <esc>

" set timeout timeoutlen=1000 ttimeoutlen=100 "Set timeout after special symbols

