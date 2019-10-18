" vim plugin to go to std header
" Assouline Yohann
" 2019

function! GotoHeader()
    let filename = expand("<cword>") . '.h'
    let info_find = systemlist('fd -t f -s -L ^' . filename . '$ /usr/include/ 2> /dev/null')

    if len(info_find) == 0
        let info_find = systemlist('fd -t f -s -L ^' . filename . '$ ../ 2> /dev/null')
    endif

    if len(info_find) == 0
        let info_find = systemlist('fd -t f -s -L ^' . filename . '$ ~ 2> /dev/null')
    endif

    if len(info_find) != 0
        let c = 0
        let i = 0
        for i in info_find
            if stridx(i, "newlib") != -1 || stridx(i, "c++") != -1
                let c += 1
                continue
            else
                execute ":tabedit " . info_find[c]
                break
            endif
        endfor
    else
        echo "Couldn't find " . filename
    endif
endfunction

command GotoHeader execute GotoHeader()
