" vim plugin to generate a cpp class in a header file
" Assouline Yohann
" 2019

function! Generate_class()
    let extension = expand('%:e')
    let filename = expand('%:t:r')

    if extension == "hpp"
        let ext = "_HPP"
        let class_name = toupper(filename[0]) . filename[1:]

        call append(line('^'), "#ifndef ". toupper(filename) . ext)
        call append(line('^') + 1, "#define " . toupper(filename) . ext)
        call append(line('^') + 3, "class " . class_name ." {")
        call append(line('^') + 4, "    public:")
        call append(line('^') + 5, "        " . class_name . "();")
        call append(line('^') + 6, "        ~" . class_name . "();")
        call append(line('^') + 7, "    private:")
        call append(line('^') + 8, "}")
        call append(line('^') + 9, "")
        call append(line('^') + 10, "#endif")
    else
        echo "This is not a header file"
    endif
endfunction


command Gclass execute Generate_class()
