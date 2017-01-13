set nocompatible " Fuck VI... That's for grandpas.

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin for golang
" Plugin 'fatih/vim-go'

" plugin for rust
Plugin 'rust-lang/rust.vim'

" plugin for surrounding ()
Plugin 'tpope/vim-surround'

" ctrlp plugin
Plugin 'ctrlpvim/ctrlp.vim'

" color themes
Plugin 'sickill/vim-monokai'

" auto close (,'," and stuff
Plugin 'cohama/lexima.vim'

call vundle#end() " required

" We have to turn this stuff back on if we want all of our features.
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting
colo monokai
set t_Co=256

let mapleader=","

" To ignore plugin indent changes, instead use:
"filetype plugin on


set number relativenumber

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

" shortcut for vimrc open
:nnoremap <leader>ve :vsplit $MYVIMRC<cr>
" shortcut for vimrc source
:nnoremap <leader>vs :source $MYVIMRC<cr>
" shortcut for shell command
:nnoremap <leader>s :shell<cr>

set incsearch " Show the first match for the pattern typing
" set autochange directory
" set autochdir
autocmd BufEnter * silent! lcd %:p:h

" inoremap jj <esc> " remap esc to jj
inoremap jk <esc>
inoremap kj <esc>

" make enter work in normal mode
map <Cr> o<Esc>

set timeout timeoutlen=1000 ttimeoutlen=100 "Set timeout after special symbols

" set status line
set laststatus=2
set statusline=%F
set statusline+=\ type:\ %y
set statusline+=%=
set statusline+=\ col:\ %c
set statusline+=\ total:\ %L

" completion in command mode
set wildmode=longest,list,full
set wildmenu
set showcmd

" changes whitespace/tabs etc. display
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set list

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set pastetoggle=<leader>p

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
" autoreload file on changes
set autoread
