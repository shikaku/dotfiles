set noswapfile
set lazyredraw
set history=3000

" set cursorline
set nowrap
set number
set laststatus=2
set listchars=tab:>∼,trail:·,extends:›,precedes:‹
set list
set shortmess+=I
set tabpagemax=50
set iskeyword+=-
set isfname-==
set ruler
set noshowmode

let &scrolloff=3
set sidescroll=1
set sidescrolloff=4

let &helpheight=&ttyscroll

set wrapscan
set hlsearch
set incsearch
set showmatch
set ignorecase

set backspace=2

set tabstop=4
let &shiftwidth=&tabstop
set expandtab
set smarttab
set autoindent
" set smartindent

" set shellcmdflag=-ic

" Undo history
set undofile
set undodir=~/.vim/.undo_history
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

" Encoding
if &termencoding == ""
    let &termencoding = &encoding
endif
set encoding=utf-8
setglobal fileencoding=utf-8 nobomb
set fileformat=unix
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866,latin1

" Adding suffixes to the file path for the 'gf', '[I', etc. commands
set suffixesadd=.js,.ts,.html,.tpl,.css,.less

" Highlight 81st char of line
:call matchadd('ColorColumn', '\%81v', 100)



""""""""" Settings of plugins """"""""""""""

" Airline
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline_detect_crypt = 1
let g:airline_detect_iminsert=1
let g:airline_theme = 'bubblegum'
" let g:airline_extensions  =  ['branch', 'tabline']
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1

" MRU
let MRU_File = $HOME.'/.vim/.vim_mru_files'
let MRU_Max_Entries = 2000

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="horizontal"

" NERDTree
" let NERDTreeShowHidden=1
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Ag (better than grep)
let g:agprg="ag --column --hidden"
set grepprg=ag\ --hidden\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

" Syntastic
let g:syntastic_javascript_checkers = ["eslint"]
" let g:syntastic_mode_map = { "mode": "passive" }
let g:syntastic_auto_jump = 0
" let g:syntastic_auto_loc_list = 2 "don't open location-list
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1

" Matchit. Add match patterns
autocmd FileType * if !exists('b:match_words') | let b:match_words = '' | else | let b:match_words = b:match_words.',' | endif | let b:match_words = b:match_words.'{:},(:),[:],":"'.",':'"

" Switch
let g:switch_mapping = ""
let g:switch_custom_definitions =
    \ [
    \   {
    \     '\s\+\(\k\+\),\s*\(\k\+\)': ' \2, \1',
    \     '\(\k\+\),\s*\(\k\+\)': '\2, \1',
    \   },
    \ ]
