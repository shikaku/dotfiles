set noswapfile
set lazyredraw
set history=3000

set cursorline
set nowrap
set number
set laststatus=2
set listchars=tab:▶·,trail:·,extends:▶,precedes:◀
set list
set shortmess+=I
set tabpagemax=50
set iskeyword+=-
set isfname-==
set isfname+=@-@
set ruler
set noshowmode

let &scrolloff=1
set sidescroll=1
set sidescrolloff=4

let &helpheight=999

set nowrapscan
set hlsearch
set incsearch
set showmatch
set ignorecase

set backspace=2

set tabstop=2
let &shiftwidth=&tabstop
set expandtab
set smarttab
set autoindent
" set smartindent

set breakindent
set breakindentopt=sbr
set showbreak=▶▶

set fo+=j " join comments

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

set updatetime=100

set signcolumn=yes

" " Highlight 81st char of line
" :call matchadd('ColorColumn', '\%81v', 100)



""""""""" Settings of plugins """"""""""""""

" Airline
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline_detect_crypt = 1
let g:airline_detect_iminsert=1
let g:airline_theme = 'distinguished'
" let g:airline_extensions  =  ['branch', 'tabline']
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1

" EditConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

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

" " Matchit. Add match patterns
" autocmd FileType * if !exists('b:match_words') | let b:match_words = '' | else | let b:match_words = b:match_words.',' | endif | let b:match_words = b:match_words.'{:},(:),[:],":"'.",':'"
"
" Matchup don't highlight
let g:matchup_matchparen_enabled = 0

" Switch
let g:switch_mapping = ""
let g:switch_custom_definitions =
    \ [
    \   {
    \     '\s\+\(\k\+\),\s*\(\k\+\)': ' \2, \1',
    \     '\(\k\+\),\s*\(\k\+\)': '\2, \1',
    \   },
    \ ]

let g:inline_edit_autowrite = 1

let g:netrw_liststyle = 3
let g:netrw_banner = 0 
let g:netrw_browse_split = 0
let g:netrw_altv = 1
let g:netrw_winsize = 25

" augroup prettier
"   autocmd!
"   autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.html PrettierAsync
" augroup END
" let g:prettier#autoformat = 0
" let g:prettier#autoformat_config_present = 0

" let g:deoplete#enable_at_startup = 1

" let g:SuperTabDefaultCompletionType="<c-x><c-o>"
" set completeopt+=menuone

" g:tsuquyomi_completion_detail = 1

" let b:ale_fixers = ['tslint', 'eslint']
" let g:ale_fix_on_save = 1
"

" Enable GitGutter at startup
autocmd VimEnter * :GitGutterEnable

" CoC (LSP)
runtime startup/settings/coc.vim
