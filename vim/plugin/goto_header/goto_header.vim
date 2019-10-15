" vim plugin to go to std header
" Assouline Yohann
" 2019

"   If you don't have fd:
"   Uncomment line 12 and 16
"   Comment line 13 and 17
"

function! GotoHeader()
    let filename = expand("<cword>") . '.h'
    "let info_find = systemlist('find /usr/include/ -name ' . filename . ' 2> /dev/null')
    let info_find = systemlist('fd ' . filename . ' /usr/include/ 2> /dev/null')

    if len(info_find) == 0
        "let info_find = systemlist('find ../ -name ' . filename . ' 2> /dev/null')
        let info_find = systemlist('f ' . filename . ' ../ 2> /dev/null')
    endif

    if len(info_find) != 0
        execute ":tabedit " . info_find[0]
    else
        echo "Couldn't find " . filename
    endif
endfunction

command GotoHeader execute GotoHeader()
