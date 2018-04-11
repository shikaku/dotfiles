if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = "setl sua<"

runtime! syntax/javascript.vim
runtime! ftplugin/javascript.vim

setl suffixesadd+=.jsx
