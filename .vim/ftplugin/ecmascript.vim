if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = "setl sua<"

runtime! ftplugin/javascript.vim

setl suffixesadd+=.es7,.es6,.es5,.es
