nmap gr gT
map <F3> :exe 'cd' expand("%:h")<CR> :Lexplore<CR>
map! <F3> <ESC>:exe 'cd' expand("%:h")<CR> :Lexplore<CR>
nmap <silent> <F4> <Plug>ToggleProject
map <F5> :UndotreeToggle<CR>
cmap <F5> <ESC>:UndotreeToggle<CR>
imap <F5> <C-o>:UndotreeToggle<CR>
map <F7> :!tidy -e % 2>&1 <Bar> grep -i 'missing'<CR>
map! <F7> <ESC>:!tidy -e % 2>&1 <Bar> grep -i 'missing'<CR>
set pastetoggle=<F9>
map <Home> ^
imap <Home> <ESC>^i
vmap P "_dP
nnoremap <Leader>t :tabnew<CR>
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

autocmd FileType help nnoremap <buffer> q :q<CR>
autocmd FileType help nnoremap <buffer> <F1> :tabprev<CR>
autocmd FileType netrw nnoremap <buffer> <F1> :tabprev<CR>

" Command-mode abbreviations
cnoreabbrev h tab help
cnoreabbrev Set set
cnoreabbrev E e
cnoreabbrev W w
cnoreabbrev Wq wq
cnoreabbrev Q q
cnoreabbrev Qa qa
cnoreabbrev QA qa
cnoreabbrev Cq cq
cnoreabbrev Tabe tabe
cnoreabbrev Preview !open -a /Applications/Preview.app/ %

" Russian key bindings
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]

map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '

map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .

map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }

map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "

map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >

map пп gg
