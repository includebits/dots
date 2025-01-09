" Vim color file
" Maintainer:	includebits 
" Last Change:	2025 January 9

set bg&
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "sigil"

" Base colors for a balanced dark theme
let s:bg = '#1a1b26'
let s:fg = '#c0caf5'

" Normal text and background
hi Normal ctermfg=7 ctermbg=NONE guifg=#c0caf5 guibg=#1a1b26

" Popup menu with better contrast
hi Pmenu ctermfg=7 ctermbg=0 guifg=#c0caf5 guibg=#283457
hi PmenuSel ctermfg=0 ctermbg=4 guifg=#1a1b26 guibg=#7aa2f7

" Comments in a muted slate color
hi Comment ctermfg=242 guifg=#677693

" Include statements in bright blue like in the screenshot
hi Include ctermfg=4 guifg=#7aa2f7
hi PreProc ctermfg=4 guifg=#7aa2f7

" Enhanced identifier visibility
hi Identifier ctermfg=7 guifg=#c0caf5
hi cCustomFunc ctermfg=12 guifg=#7dcfff
hi link Function cCustomFunc

" Statements and keywords in a soft purple
hi Statement ctermfg=15 cterm=NONE guifg=#bb9af7 gui=NONE
hi Operator ctermfg=15 guifg=#89ddff

" Types in a distinct color
hi Type ctermfg=10 guifg=#2ac3de
hi StorageClass ctermfg=15 guifg=#bb9af7
hi Structure ctermfg=15 guifg=#bb9af7

" Constants and strings
hi Constant ctermfg=6 guifg=#ff9e64
hi String ctermfg=4 guifg=#a9b1d6
hi Character ctermfg=4 guifg=#a9b1d6
hi Number ctermfg=6 guifg=#ff9e64
hi Boolean ctermfg=6 guifg=#ff9e64
hi Special ctermfg=4 guifg=#7dcfff

" Line numbers and sign column
hi SignColumn ctermbg=NONE guibg=NONE
hi LineNr ctermfg=8 guifg=#506d87
hi CursorLineNr ctermfg=7 guifg=#7dcfff

" TODO markers
hi Todo ctermfg=2 ctermbg=NONE cterm=bold guifg=#e0af68 guibg=NONE gui=bold
hi myNote ctermfg=2 ctermbg=NONE cterm=bold guifg=#e0af68 guibg=NONE gui=bold
hi myStatic ctermfg=15 guifg=#bb9af7

" Error highlighting
hi Error ctermfg=15 ctermbg=1 guifg=#db4b4b guibg=#362c3d

" Tab line
hi TabLine ctermfg=8 ctermbg=0 guifg=#506d87 guibg=#1f2335
hi TabLineSel ctermfg=7 ctermbg=0 cterm=NONE guifg=#c0caf5 guibg=#1f2335 gui=NONE
hi TabLineFill ctermfg=0 ctermbg=0 guifg=#1f2335 guibg=#1f2335
hi VertSplit ctermbg=0 ctermfg=0 guibg=#1f2335 guifg=#1f2335

" Search highlighting
hi Search cterm=bold ctermfg=0 ctermbg=1 gui=bold guifg=#1a1b26 guibg=#ff9e64
hi Visual ctermfg=NONE ctermbg=1 cterm=NONE guifg=NONE guibg=#283457 gui=NONE

" Matching parentheses
hi MatchParen cterm=bold ctermbg=NONE ctermfg=10 gui=bold guibg=#364A82 guifg=#c0caf5

" Status line
hi StatusLine ctermfg=7 ctermbg=0 cterm=NONE guifg=#c0caf5 guibg=#1f2335 gui=NONE
hi StatusLineNC ctermfg=8 ctermbg=0 cterm=NONE guifg=#506d87 guibg=#1f2335 gui=NONE
hi CursorLine ctermbg=0 cterm=NONE guibg=#292e42 gui=NONE

" Specific highlight for include paths
hi includeString ctermfg=4 guifg=#73daca
