
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeIgnore = ['node_modules$', '\.git$', '__pycache__$', '\.cache$', '\.pyc$', '\.orig$']

Plug 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗ ",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

Plug 'ctrlpvim/ctrlp.vim'

Plug 'airblade/vim-gitgutter'
let g:gitgutter_sign_added = '▉'
let g:gitgutter_sign_modified = '▉'
let g:gitgutter_sign_removed = '▉'
let g:gitgutter_sign_removed_first_line = '▉'
let g:gitgutter_sign_modified_removed = '▉'

Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#ale#enabled = 1

Plug 'vim-airline/vim-airline-themes'

Plug 'bronson/vim-trailing-whitespace'
autocmd BufWritePre * :FixWhitespace

" React / JSX
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

Plug 'w0rp/ale'
let g:ale_sign_column_always = 1
let g:ale_sign_error = '⏺'
let g:ale_sign_warning = '⏺'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

Plug 'scrooloose/nerdcommenter'
map <F8> \c<space><CR>

Plug 'altercation/vim-colors-solarized'

Plug 'tpope/vim-fugitive'

Plug 'ryanoasis/vim-devicons'
set encoding=utf8
let g:airline_powerline_fonts = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 0

call plug#end()

set number

set ttyfast
set mouse=a

set tabstop=4
set expandtab
set shiftwidth=4
set smarttab

vmap <Tab> >gv
vmap <S-Tab> <gv

" Spellcheck git commits.
autocmd FileType gitcommit setlocal spell

set hlsearch
set incsearch

set hidden
