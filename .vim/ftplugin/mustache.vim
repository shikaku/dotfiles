" if exists("b:did_ftplugin")
"   finish
" endif
" let b:did_ftplugin = 1

setl suffixesadd+=.mustache

let b:undo_ftplugin = "setl suffixesadd<"
