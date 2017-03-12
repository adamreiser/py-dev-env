set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'nvie/vim-flake8'
Plugin 'craigemery/vim-autotag'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" turn off the splash screen
set shm=I

syntax enable

" start with folds open
set foldlevelstart=1000

" vim-flake8 (this can be annoying, so off by default)
"autocmd BufWritePost *.py call Flake8()

let mapleader = "-"
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :split<CR> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>r :YcmCompleter GoToReferences<CR>

