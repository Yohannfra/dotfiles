" vim plugin to make find and replace easier
" Assouline Yohann
" 2019

function! Replace()
    call inputsave()
    let src = input('src: ')
    let dest = input('dest: ')
    call inputrestore()
    redraw
    if src == "" || dest == ""
        echo "Invalid input"
    else
        :execute "%s/" . src . "/" . dest . "/g"
        echo src . " -> " . dest
    endif
endfunction

command Replace execute Replace()
