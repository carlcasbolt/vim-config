source ~/.vim/php-doc.vim
set formatoptions=qroct

" Map ; to "add ; to the end of the line, when missing"
noremap ; :s/\([^;]\)$/\1;/<cr>

" Map <ctrl>+p to single line mode documentation (in insert and command mode)
inoremap <C-P> ^[:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
" Map <ctrl>+p to multi line mode documentation (in visual mode)
vnoremap <C-P> :call PhpDocRange()<CR>


" Dictionary completion

" The completion dictionary is provided by Rasmus:
" http://lerdorf.com/funclist.txt
set dictionary-=~/.vim/phpfunclist.txt dictionary+=~/.vim/phpfunclist.txt
" Use the dictionary completion
set complete-=k complete+=k


" Autocompletion using the TAB key

" This function determines, wether we are on the start of the line text (then tab indents) or
" if we want to try autocompletion
func! InsertTabWrapper()
        let col = col('.') - 1
        if !col || getline('.')[col - 1] !~ '\k'
            return "\<tab>"
        else
            return "\<c-p>"
        endif
endfunction

" Remap the tab key to select action with InsertTabWrapper?
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

