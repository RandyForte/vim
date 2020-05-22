set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'preservim/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'morhetz/gruvbox' "Theme
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

Plugin 'raimondi/delimitmate' "Auto Close ()[]
Plugin 'yggdroot/indentline' "Show line indentation

Plugin 'valloric/youcompleteme'
Plugin 'sheerun/vim-polyglot'

Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
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
set list
set listchars=tab:>-
set guioptions=
set showcmd
nnoremap zz :update<cr>
set autoread
map <silent> <C-n> :NERDTreeToggle<CR>
map <silent> <C-m> :NERDTreeFind<CR>
let mapleader=" "
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>w <C-W><C-K> 
noremap <leader>a <C-W><C-H> 
noremap <leader>s <C-W><C-J> 
noremap <leader>d <C-W><C-L> 
nmap <F8> :TagbarToggle<CR>
nmap <F9> :CtrlP<CR>
set tabstop=4
set shiftwidth=4
set expandtab
let g:UltiSnipsExpandTrigger="<C><tab>"
let g:airline_section_y = '%{strftime("%c")}'
let g:airline_section_c = '%t' " in section B of the status line display the CWD
let g:airline_section_b = ''
let g:airline_section_z = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline
let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers
