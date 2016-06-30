"Required
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

call vundle#end()            " required

"Enable type specific indentation
filetype plugin indent on

"Syntax highlighting
let python_highlight_all=1
syntax on

"Code Folding
set foldmethod=indent
set foldlevel=99

"Folding with spacebar
nnoremap <space> za

"Python PEP8 formatting
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set encoding=utf-8

"Full stack development formatting
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

"Line numbers
set nu

"System clipboards
set clipboard=unnamed

"Backspace fix
set backspace=indent,eol,start

"Colourscheme
colorscheme koehler


