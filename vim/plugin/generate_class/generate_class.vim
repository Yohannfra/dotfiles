" vim plugin to generate a cpp class in a header file
" Assouline Yohann
" 2019


function! Generate_class()
    let extension = expand('%:e')
    let filename = expand('%:t:r')

    if extension == "hpp"
        let ext = "_HPP"
        let class_name = toupper(filename[0]) . filename[1:]
        let ARR_CLASS = [
                    \"}", "    private:", "Toto", "class " . class_name . " {" ]

        for i in ARR_CLASS
            call append(line('.'), i)
        endfor


        " call append(line('.'), "class " . class_name ." {")
        " call append(line('.'), "    public:")
        " call append(line('.'), "        " . class_name . "();")
        " call append(line('.'), "        ~" . class_name . "();")
        " call append(line('.'), "    private:")
        " call append(line('.'), "}")
        " call append(line('.'), "")
    else
        echo "This is not a header file"
    endif
endfunction


command Gclass :call Generate_class()
