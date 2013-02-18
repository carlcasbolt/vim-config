" if terminal can handle it use syntax highlighting
if has('syntax') && (&t_Co > 2)
	syntax on
endif

" backspace configuration
" we like deleting things with it

" noremap Bs Del
" noremap Del Bs
" noremap!Bs Del
" noremap!Del Bs
:set bs=2

set tabstop=4       " tab width, neater if set to 4 characters
set ts=4            " Change tab spacing to a lower value
(default=8)
"set expandtab       " force all tab commands to write spaces

set hls
set shiftwidth=4

" ruler - column and rows (alternative to line numbers)
" displayed in the bottom right of the window
set ruler

set background=light
set background=dark

" comments color
"hi Comment ctermfg=lightblue

set hlsearch

" make sure that search is case insensitive
set ignorecase

filetype plugin on

