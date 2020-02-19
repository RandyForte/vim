set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'valloric/youcompleteme'
Plugin 'preservim/nerdtree'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'morhetz/gruvbox'
Plugin 'raimondi/delimitmate'
Plugin 'yggdroot/indentline'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'leafgarland/typescript-vim'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
call vundle#end()
call glaive#Install()
filetype plugin indent on " Filetype detection

" Put your non-Plugin stuff after this line
colorscheme gruvbox
syntax on
set number
"set cursorline
set wildmenu
set showmatch
set incsearch
set hlsearch
set scrolloff=999
set softtabstop=4
set shiftwidth=4
"https://stackoverflow.com/questions/6488683/how-do-i-change-the-vim-cursor-in-insert-normal-mode/30199177
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul
"https://stackoverflow.com/questions/4617059/showing-trailing-spaces-in-vim
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
"https://vi.stackexchange.com/questions/422/displaying-tabs-as-characters
"set list
"set listchars=tab:>-
set guioptions=
set background=dark
set showcmd
nnoremap zz :update<cr>
set autoread
map <silent> <C-n> :NERDTreeToggle<CR>
let mapleader=" "
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
