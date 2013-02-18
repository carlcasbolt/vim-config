func VisualHTMLTagWrap()
    let tag =  input( "Tag to wrap block: ")
    let jumpright = 2 + len( tag )
    normal `<
    let init_line = line( "." )
    exe "normal i<".tag.">"
    normal `>
    let end_line = line( "." )
    " Don't jump if we're on a new line
    if( init_line == end_line )
      " Jump right to compensate for the characters we've added
      exe "normal ".jumpright."l"
    endif
    exe "normal a</".tag.">"
endfunc


" script to translate tpl and php strings
if !exists(":TranslateIt")
        func TranslateIt()

                " check extension and either work for .tpl or .php files
                let ext = expand("%:e")

                if (ext == "tpl")
                        let open = '{t}'
                        let close = '{/t}'
                        let len = 3
                endif

                if (ext == 'php')
                        let open = '_('
                        let close = ')'
                        let len = 2
                endif

                normal `<
                let init_line = line( "." )
                exe "normal i".open

                normal `>
                let end_line = line( "." )
                if (init_line == end_line)
                        exe "normal " . len. "l"
                endif
                exe "normal a".close

        endfunc
endif

