" vim plugin to protect C or CPP headers
" Assouline Yohann
" 2019

function! Protect()

    let extension = expand('%:e')
    let filename = expand('%:t:r')

    if extension == "h" || extension == "hpp"
        let ext = "_H"
        if extension == "hpp"
            let ext = "_HPP"
        endif

        call append(line('^'), "#ifndef ". toupper(filename) . ext)
        call append(line('^') + 1, "#define " . toupper(filename) . ext)
        call append(line('^') + 3, "#endif")
    else
        echo "This is not a header file"
    endif
endfunction

command Protect execute Protect()
