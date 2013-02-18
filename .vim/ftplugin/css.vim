set formatoptions=qroct

" Dictionary completion

" The completion dictionary is provided by Rasmus:
" http://lerdorf.com/funclist.txt
set dictionary-=~/.vim/cssfunclist.txt dictionary+=~/.vim/cssfunclist.txt
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

