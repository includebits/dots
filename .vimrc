"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

" set leader
let mapleader = "\<Space>"

set nowrap
set title
set encoding=utf-8
set autoindent      " enable basic auto indentation
set copyindent      " Preserve manual indentation
set number              " enable line numbers
set hidden          " opening new file hides current instead of closing
syntax on               " enable syntax
set mouse=a

set cursorline
:highlight Cursorline cterm=bold ctermbg=black

set hlsearch
set ignorecase
set smartcase

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent

set showmatch

" format the file
nnoremap <leader>fm gg=G

" Remap WIN/OPTION + hjkl to arrow keys
" Note: On Mac, <M-> represents the Option key
" On Windows/Linux, <M-> typically represents the Alt key, which is similar to
" Option

" Normal mode mappings
nnoremap <M-h> <Left>
nnoremap <M-j> <Down>
nnoremap <M-k> <Up>
nnoremap <M-l> <Right>

" Insert mode mappings
inoremap <M-h> <Left>
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-l> <Right>

" Visual mode mappings
vnoremap <M-h> <Left>
vnoremap <M-j> <Down>
vnoremap <M-k> <Up>
vnoremap <M-l> <Right>

" Command-line mode mappings
cnoremap <M-h> <Left>
cnoremap <M-j> <Down>
cnoremap <M-k> <Up>
cnoremap <M-l> <Right>

" Enable auto completion menu after pressing TAB.

set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Prettier configuration
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Max line length that prettier will wrap on
let g:prettier#config#print_width = 80

" Number of spaces per indentation level
let g:prettier#config#tab_width = 2

" Use single quotes instead of double quotes
let g:prettier#config#single_quote = 'true'

" Print semicolons
let g:prettier#config#semi = 'true'

" Use spaces instead of tabs
let g:prettier#config#use_tabs = 'false'

" Print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'

" Put > on the last line instead of new line
let g:prettier#config#jsx_bracket_same_line = 'false'

" Avoid wrapping text in markdown
let g:prettier#config#prose_wrap = 'preserve'

" ALE configuration
let g:ale_fixers = {
    \   '*': ['remove_trailing_lines', 'trim_whitespace'],
    \   'javascript': ['prettier', 'eslint'],
    \   'typescript': ['prettier', 'eslint'],
    \   'css': ['prettier'],
    \   'json': ['prettier'],
    \}
let g:ale_fix_on_save = 1
