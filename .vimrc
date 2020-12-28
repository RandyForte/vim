filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'preservim/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'

Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"let g:UltiSnipsExpandTrigger="<C><tab>"

Plugin 'morhetz/gruvbox' "Theme

Plugin 'raimondi/delimitmate' "Auto Close ()[]
Plugin 'yggdroot/indentline' "Show line indentation

Plugin 'valloric/youcompleteme'
Plugin 'sheerun/vim-polyglot'

"Plugin 'majutsushi/tagbar'
"nmap <F8> :TagbarToggle<CR>
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
set bg=dark
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
" nnoremap ZZ :%!js-beautify<cr>g;g;
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
"nmap <F9> :CtrlP<CR>
nmap ` :CtrlP<CR>
set tabstop=4
set shiftwidth=4
set expandtab
set guitablabel=%t
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" https://gist.github.com/jordan-acosta/5862724
" Console log from insert mode; Puts focus inside parentheses
imap cll console.log();<Esc>==f(a
" Console log from visual mode on next line, puts visual selection inside parentheses
vmap cll yocll<Esc>p
" Console log from normal mode, inserted on next line with word your on inside parentheses
nmap cll yiwocll<Esc>p

" npm -g install js-beautify
function FormatJS()
   if &filetype ==# 'javascript' || &filetype ==# 'typescript' || &filetype ==# 'json'
       %!js-beautify
        normal g;g;
   endif
endfunction
:autocmd BufWritePre * call FormatJS()
