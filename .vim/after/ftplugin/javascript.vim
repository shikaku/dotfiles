" if exists("b:did_ftplugin")
"   finish
" endif
" let b:did_ftplugin = 1

setl suffixesadd+=.js
setl shiftwidth=2

let b:undo_ftplugin = "setl suffixesadd< shiftwidth<"
