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

"Install Simpyl Fold folding plugin
Plugin 'tmhedberg/SimpylFold'

"Auto indentation for python that handles indentation for function signature
"spanning multiple lines
Plugin 'vim-scripts/indentpython.vim'

"Syntax checking
Plugin 'scrooloose/syntastic'

"PEP8 Flaking
Plugin 'nvie/vim-flake8'

"Pretty powerbar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}

call vundle#end()            " required

"Enable type specific indentation
filetype plugin indent on

"Enable docstrings for folded code
let g:SimpylFold_docstring_preview=1

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

"Enable OmniComplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"OmniComplete enhancements
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
	\ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
	\ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"
