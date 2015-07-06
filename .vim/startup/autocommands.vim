" Restore last position of the cursor
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Auto save
" autocmd TextChanged * silent! update
" autocmd TextChanged *.js,*.html echo system('echo $RANDOM')

autocmd BufRead,BufNewFile *.less setlocal filetype=less
autocmd BufRead,BufNewFile *.tpl setlocal filetype=html
autocmd FileType help nnoremap <buffer> q :q<CR>
