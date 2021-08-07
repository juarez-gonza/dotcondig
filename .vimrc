syntax on
set number
set incsearch
set nowrap
"TAB CONFIG
set showmatch "show matching bracket
set tabstop=8 "actual tab size
set softtabstop=8 "tab size seen while editing
"set expandtab
set smartindent
set shiftwidth=8 "indent size (same as tab if indents are done by tabing)
"FAT CURSOR
set guicursor=
"HIGHLIGHT UNWANTED SPACES
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
"GET RID OF SWAPFILES
set noundofile
set noswapfile
set backupdir=~/.vim/backupdir
let mapleader = " "
nnoremap <leader>r :set relativenumber!<CR>
"Arrow Keys remapped to No Operation in Normal and Insert mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

call plug#begin("~/.vim/plugged")
"	support for lsp and completion
        Plug 'neoclide/coc.nvim', {'branch': 'release'}

"	faster html
	Plug 'mattn/emmet-vim'

"	cool change surround
	Plug 'tpope/vim-surround'

"	multiple cursors ctrl+n to select a word
"	n to jump to next occurrence, N to jump to previous occurrence
        Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()

"=====COC CONFIG=====
"if using vanilla vim
set hidden
set updatetime=300
set shortmess=aFc
"global install
let g:coc_global_extensions = ["coc-jedi", "coc-tsserver", "coc-css", "coc-html", "coc-json"]

"=====EMMET CONFIG=====
"define modes where emmet can be used
let g:user_mode="n"
