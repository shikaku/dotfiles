if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:projectsPat =  '\(/repos/[^/]\+\).*'

func! Includeexpr(path)
    let extList = split(&suffixesadd, ',')
    let rootPath = substitute(expand("%:p"), s:projectsPat, '\1', 'g')
    let normalizedPath = substitute(a:path, '^@/', 'src/', 'g')

    for srcDir in ['', '/node_modules']
        for subPath in ['', '/index']
            for ext in extList
                let tryPath =  rootPath . srcDir . '/' . normalizedPath . subPath . ext
                echom tryPath
                if filereadable(tryPath)
                    return tryPath
                endif
            endfor
        endfor
    endfor

    return a:path
endfunc

setl includeexpr=Includeexpr(v:fname)
setl suffixesadd+=.vue,.js,.jsx

let b:undo_ftplugin = "setl includeexpr< suffixesadd<"
