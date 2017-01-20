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

" color themes
Plugin 'crusoexia/vim-monokai'

call vundle#end() " required

colorscheme monokai
set t_Co=256

" We have to turn this stuff back on if we want all of our features.
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

let mapleader=","
set background=dark

" To ignore plugin indent changes, instead use:
"filetype plugin on

" Make Vim to handle long lines nicely.
set wrap
set textwidth=79
set formatoptions=qrn1

set number relativenumber

set noerrorbells " No beeps
set backspace=indent,eol,start  " Makes backspace key more powerful.

set noswapfile " Don't use swapfile
set nobackup " Don't create annoying backup files
set nowritebackup
set splitright " Split vertical windows right to the current windows
set splitbelow " Split horizontal windows below to the current windows
set encoding=utf-8 " Set default encoding to UTF-8
set autowrite " Automatically save before :next, :make etc.
set autoread

set ruler " Show the cursor position all the time
au FocusLost * :wa

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

set noshowmatch                 " Do not show matching brackets by flickerinset incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters
set ttyfast
set lazyredraw " Wait to redraw "
" speed up syntax highlighting
set nocursorcolumn
set nocursorline

syntax sync minlines=256
set synmaxcol=300
set re=1

" shortcut for vimrc open
nnoremap <leader>ve :vsplit $MYVIMRC<cr>
" shortcut for vimrc source
nnoremap <leader>vs :source $MYVIMRC<cr>
" toggle set list
nmap <leader>l :set list!<Cr>

" Buffer prev/next
nnoremap <C-x> :bnext<CR>
nnoremap <C-z> :bprev<CR>

" Better split switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Fast saving
nmap <leader>w :w!<cr>

nnoremap <leader><space> :nohlsearch<CR>
" Center the screen
nnoremap <space> zz

" inoremap jj <esc> " remap esc to jj
inoremap jk <esc>
inoremap kj <esc>

" make enter work in normal mode
map <Cr> o<Esc>
map <S-Cr> O<Esc>

map :Vs :vs
map :Sp :sp

set ttimeout notimeout ttimeoutlen=10 "Set timeout after special symbols

" Better Completion
set complete=.,w,b,u,t
set completeopt=longest,menuone

" set status line
set laststatus=2
set statusline=%F

" completion in command mode
set wildmode=longest,list,full
set wildmenu
set showcmd

" changes whitespace/tabs etc. display
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set list

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd BufEnter * silent! lcd %:p:h
set pastetoggle=<leader>p

" never do this again --> :set paste <ctrl-v> :set no paste
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" set 80 character line limit
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
