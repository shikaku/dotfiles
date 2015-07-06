function s:ForbidReplace()
    if v:insertmode!=#'i'
        call feedkeys("\<Insert>", "n")
    endif
endfunction

augroup ForbidReplaceMode
    autocmd!
    autocmd InsertEnter  * call s:ForbidReplace()
    autocmd InsertChange * call s:ForbidReplace()
augroup END
