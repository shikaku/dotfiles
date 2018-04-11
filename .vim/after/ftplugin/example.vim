if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

func! Includeexpr(path)
    let fname=substitute(v:fname,'\~','/path/to/root/dir','g')
    if !empty(glob(fname . '/index.js'))
        return fname . '/index.js'
    endif
    return fname
endfunc

setl includeexpr=Includeexpr(v:fname)

let b:undo_ftplugin = "setl includeexpr<"
