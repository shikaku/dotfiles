" Syntax
Plug 'chr4/nginx.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Enhance % key
Plug 'andymass/vim-matchup'

" Language Server Protocol (LSP)
" Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Tpope plugins
Plug 'tpope/vim-jdaddy'             " Text objects for JSON
Plug 'tpope/vim-commentary'         " Fast comments
Plug 'tpope/vim-surround'           " Fast brackets
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-abolish'            " Coercion and replaces
Plug 'tpope/vim-repeat'             " Extended repeat action

Plug 'ap/vim-css-color'

Plug 'AndrewRadev/switch.vim'       " Switch text segments
Plug 'AndrewRadev/sideways.vim'     " Move arguments
Plug 'AndrewRadev/linediff.vim'     " Compare blocks
Plug 'AndrewRadev/inline_edit.vim'  " Edit nested code snippets
" Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'Lokaltog/vim-easymotion'      " Fast motion
Plug 'vim-airline/vim-airline'      " Customizable status line
Plug 'vim-airline/vim-airline-themes'
" Plug 'airblade/vim-gitgutter'
" Plug 'jiangmiao/auto-pairs'
" Plug 'shemerey/vim-project'
Plug 'mbbill/undotree'                " Visual undo
" Plug 'kana/vim-textobj-user'
" Plug 'vim-scripts/DfrankUtil'
" Plug 'vim-scripts/vimprj'
" Plug 'vim-scripts/indexer.tar.gz'
Plug 'rking/ag.vim'                 " Silver search wrapper
Plug 'maksimr/vim-jsbeautify'       " Beautifier
Plug 'heavenshell/vim-jsdoc'
Plug 'junegunn/vim-easy-align'      " Alignment
Plug 'kshenoy/vim-signature'        " Visual marks
Plug 'editorconfig/editorconfig-vim' " EdotorConfig
Plug 'iloginow/vim-stylus'
" Filetypes
Plug 'mustache/vim-mustache-handlebars'
" vim-scripts repos
Plug 'vim-scripts/mru.vim'
" Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/L9'
Plug 'udalov/kotlin-vim'
" Plug 'prettier/vim-prettier', {
"   \ 'do': 'yarn install',
"   \ 'branch': '0.2.7',
"   \ 'for': [
"     \ 'javascript',
"     \ 'typescript',
"     \ 'css',
"     \ 'less',
"     \ 'scss',
"     \ 'json',
"     \ 'graphql',
"     \ 'markdown',
"     \ 'vue',
"     \ 'html',
"     \ 'swift' ] }
Plug 'vifm/vifm.vim'
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
"
" Plug 'pangloss/vim-javascript'    " JavaScript support
" Plug 'Quramy/tsuquyomi' " TypeScript IDE
" Plug 'Shougo/vimproc.vim', {'do' : 'make'} " dep for TypeScript
" Plug 'ervandew/supertab' " omnicomplete by tab
" Plug 'dense-analysis/ale' " asynnchronous lint engine
"
Plug 'mxw/vim-jsx'

" Color themes
Plug 'arcticicestudio/nord-vim'
Plug 'arzg/vim-substrata'
Plug 'jonathanfilip/vim-lucius'
Plug 'tyrannicaltoucan/vim-deep-space'

" A collection of language packs for Vim.
Plug 'posva/vim-vue'
Plug 'sheerun/vim-polyglot'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Plug 'jxnblk/vim-mdx-js'
Plug 'tmux-plugins/vim-tmux'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
