"Required
set nocompatible

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

"YouCompleteMe Plugin
Bundle 'Valloric/YouCompleteMe'

"UltiSnips Plugin
Plugin 'SirVer/ultisnips'

"Snippets for UltiSnips
Plugin 'honza/vim-snippets'

"Molokai Colourscheme
Plugin 'tomasr/molokai'

"Super Undo Gundo
Plugin 'sjl/gundo.vim'

"Supertab
"Plugin 'ervandew/supertab'

""Autocomplete Popup
"Bundle 'vim-scripts/AutoComplPop'
"
call vundle#end()            " required

filetype off
"Enable type specific indetation
filetype indent on
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
set foldenable
set foldlevelstart=10
set foldnestmax=10

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
"colorscheme koehler
colorscheme molokai

"Change tabs to spaces (compatibility issues)
set expandtab

"Show the last command entered
set showcmd

"Show a visual cue for the line you are on: Too gaudy
"set cursorline

"Autocompletion pop up menu for Vim commands in Command mode
set wildmenu

"Faster macros by not redrawing in the middle of macros
set lazyredraw

"Show matching pair highlights
set showmatch

"Live search
set incsearch

"Highlight matches
set hlsearch

"Turn off search highlights
nnoremap <leader><space> nohlsearch<CR>

"Move entire Line movements
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv==gv
vnoremap <A-k> :m '<-2<CR>gv==gv

"Enable Powerline
set rtp+=C:\Users\morph\vimfiles\bundle\powerline\powerline\bindings\vim
set laststatus=2
set showtabline=1
set noshowmode
"set t_Co=256

"Move between wrapped lines
nnoremap j gj
nnoremap k gk

"Move to beginning and end of a line
nnoremap B ^
nnoremap E $

"Highlight last inserted text
nnoremap gV `[`v`]

"Toggle Gundo
nnoremap <leader>u :GundoToggle<CR>

"Set custom leader
let mapleader=","

"Save session
nnoremap <leader>s :mksession<CR>

"SetUp UltiSnip
let g:UltiSnipsExpandTrigger="<tab><tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Set Timeout to low, so that single tab isn't sluggish.
set timeoutlen=200 ttimeoutlen=200

"Set UltiSnipsEdit window to be Vertical by default
let g:UltiSnipsEditSplit="Vertical"

"Use 256 colour
"set t_Co=256

"Doesn't work :(
""Enable OmniComplete
"set omnifunc=syntaxcomplete#Complete
"
""OmniComplete enhancements
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"	\ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"	\ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"
""Open Omni completion menu closing previous if open and opening new menu
""without changing the text
"inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
"	\ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
""Open user completion menu closing previous if open and opening new menu
""without changing the text
"inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
"	\ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
"

""YouCompleteMe & UltiSnips fix
"function! g:UltiSnips_Complete()
"	call UltiSnips#ExpandSnippet()
"	if g:ulti_expand_res == 0
"		if pumvisible()
"			return "\<C-n>"
"		else
"			call UltiSnips#JumpForwards()
"			if g:ulti_jump_forwards_res == 0
"				return "\<TAB>"
"			endif
"		endif
"	endif
"	return ""
"endfunction


""Call the function just created
"au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsListSnippets="<c-e>"
"
""Map the Enter key for selection and close the menu
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

""Make YCM compatible with UltiSnips by using SuperTab as a broker
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_previous_completion =['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'
"
""Hook UltiSnips with SuperTab
"let g:UltiSnipsExpandTrigger = "<tab>"
"let g:UltiSnipsJumpForwardTrigger = "<tab>"
"let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"
"Colourscheme is messed up and the Tab needs multiple presses. Supertab and
"AutoComplPop/YouCompleteMe is preferred
""Tab completion for AutoComplPop
"function! InsertTabWrapper()
"let col = col('.')-1
"if !col||getline('.')[col-1]!~'\k'
"	return "\<TAB>"
"else
"	if pumvisible()
"		return "\<C-N>"
"	else
"		return "\<C-N>\<C-P>"
"	end
"endif
"endfunction
"
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
"
"hi Pmenu ctermbg=black "background Colour
"hi PmenuSel ctermbg=white ctermbg=blue "selection and non selection text colour
"hi PmenuSel ctermbg=white "selection box bg
