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

"Colour scheme

