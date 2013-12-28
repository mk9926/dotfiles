set autoindent
set nu
set encoding=utf-8
set showmatch
set expandtab
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set incsearch
set hlsearch
set nocompatible

syntax enable

""""""""""""""""""""""""""""""
"plugin settings
""""""""""""""""""""""""""""""

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
    call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'surround.vim'
NeoBundle 'rbtnn/puyo.vim'

NeoBundleCheck
filetype plugin indent on

""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""

nnoremap [userkey] <nop>
nmap <space> [userkey]
nnoremap [test] <nop>
nmap <s-t> [test]

nnoremap <esc><esc> :nohlsearch<cr>
nnoremap [userkey]e :tab tabnew ~/.vimrc<cr>
nnoremap [userkey]s :Sex<cr>
nnoremap [userkey]<c-r> :source ~/.vimrc<cr>
nnoremap [userkey]/ yiwq:pI/<esc><cr>
nnoremap [userkey]c :!
nnoremap [userkey]t :tab tabnew<cr>
nnoremap [userkey]= :norm mnggvG=`n<cr>
nnoremap [userkey]d :vertical diffsplit #
inoremap <c-l> <c-o>a

