" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = "setl cms< sua<"

setlocal commentstring=!\ %s
setlocal suffixesadd=.xr
