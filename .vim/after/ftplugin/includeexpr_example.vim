if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:extList = [''] + split(&suffixesadd, ',')

func! Includeexpr(path)
    let rootPath = FindProjectRoot()
    let searchPath = substitute(a:path, '^@/', 'src/', 'g')

    for srcDir in ['.','node_modules']
        let searchDir = rootPath.'/'.srcDir.'/'.searchPath

        for subPath in ['', '/index']
            for ext in s:extList
                let tryPath = searchDir.subPath.ext

                if filereadable(tryPath)
                    return tryPath
                endif
            endfor
        endfor
    endfor

    for srcDir in ['node_modules']
        let searchDir = rootPath.'/'.srcDir.'/'.searchPath
        let packageJsonPath = searchDir.'/package.json'

        if filereadable(packageJsonPath)
            let package = json_decode(join(readfile(packageJsonPath)))
            let tryPath = searchDir.'/'.get(package, 'module', package.main)

            if filereadable(tryPath)
                return tryPath
            endif
        endif
    endfor

    return a:path
endfunc

func! FindProjectRoot()
    let root = expand("%:p")

    while empty(globpath(root, 'package.json'))
        let root = fnamemodify(root, ':h')

        if (root == '/')
            return root
        endif
    endwhile

    return root
endfunc

setl includeexpr=Includeexpr(v:fname)

let b:undo_ftplugin = "setl includeexpr< suffixesadd<"
