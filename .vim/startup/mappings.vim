map <F1> :tabprevious<CR>
cmap <F1> <ESC>:tabprevious<CR>
imap <F1> <C-o>:tabprevious<CR>
map <F2> :tabnext<CR>
cmap <F2> <ESC>:tabnext<CR>
imap <F2> <C-o>:tabnext<CR>
map <F3> :FufFile<CR>
map! <F3> <ESC>:FufFile<CR>
nmap <silent> <F4> <Plug>ToggleProject
map <F6> :TagbarToggle<CR>
map! <F6> <ESC>:TagbarToggle<CR>
map <F7> :!tidy -e % 2>&1 <Bar> grep -i 'missing'<CR>
map! <F7> <ESC>:!tidy -e % 2>&1 <Bar> grep -i 'missing'<CR>
set pastetoggle=<F9>
map <Home> ^
imap <Home> <ESC>^i
vmap P "_dP
map ,t :tabnew<CR>
map! ,t <ESC>:tabnew<CR>
" nmap <CR> o<ESC>
" nmap <BS> dd<ESC>k

" Edit .vimrc
nnoremap <Leader>v :tabnew $MYVIMRC<CR>

nnoremap - :SidewaysLeft<CR>
nnoremap = :SidewaysRight<CR>
nnoremap + :Switch<CR>

" global search
noremap <Leader>/ :Ag! 

" inoremap <buffer> ' ''<Left>
" inoremap <buffer> " ""<Left>
" inoremap <buffer> { {}<Left>
" inoremap <buffer> [ []<Left>
" inoremap <buffer> ( ()<Left>
" inoremap <buffer> < <><Left>
"
inoremap <Leader>' ''<Left><CR><ESC>O
inoremap <Leader>" ""<Left><CR><ESC>O
inoremap <Leader>{ {}<Left><CR><ESC>O
inoremap <Leader>[ []<Left><CR><ESC>O
inoremap <Leader>( ()<Left><CR><ESC>O
inoremap <Leader>< <><Left><CR><ESC>O

" nnoremap <Up> ddkP
" nnoremap <Down> ddp
" nnoremap <Left> <Nop>
" nnoremap <Right> <Nop>

" Stop highlighting
nnoremap <silent> <Space> :nohlsearch<CR>

" resize current buffer by +/- 2
" nnoremap <A-Down> :resize +2<CR>
" nnoremap <A-Up> :resize -2<CR>
" nnoremap <A-Right> :vertical resize +2<CR>
" nnoremap <A-Left> :vertical resize -2<CR>

" Open Help in new window
cnoreabbrev h tab help

autocmd FileType javascript noremap <buffer> <F8> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <F8> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <F8> :call CSSBeautify()<cr>

" Command-mode abbreviations
cnoreabbrev h tab help
cnoreabbrev W w
cnoreabbrev Wq wq
cnoreabbrev Q q
cnoreabbrev Qa qa
cnoreabbrev QA qa
cnoreabbrev Set set
