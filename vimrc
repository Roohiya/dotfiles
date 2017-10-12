let mapleader=","
let maplocalleader=" "
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='distinguished'
let g:airline_theme='ubaryd'
let g:webdevicons_conceal_nerdtree_brackets = 0
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 0
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.js"
let g:ale_linters = {
      \   'javascript': ['standard'],
      \}
" let g:jsx_ext_required = 0

" let g:alduin_Dragon_Aspect
" let g:alduin_Shout_Become_Ethereal = 1
set laststatus=2
set nocompatible
set encoding=utf8
syntax on
filetype plugin on
set number
set mouse=a
set tabstop=2 shiftwidth=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
set nowrap
set hlsearch
set incsearch
set undofile
set directory=$HOME/.vim/swapfiles//
autocmd BufWritePre * StripWhitespace

map <leader>f :Autoformat<CR>
map <C-e> :NERDTreeToggle<CR>
map <S-Left> :bN<CR>
map <S-Right> :bn<CR>
map <leader>R :source  ~/.vimrc<CR>

map <leader>y "+y
map <leader>d "+d
map <leader>p "+p
map <leader>P "+P


nnoremap <Leader>\| :vs<CR>
nnoremap <Leader>_ :sp<CR>

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

syntax on

Plug 'kien/rainbow_parentheses.vim'

" Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-surround'
nmap sa ys
vmap sa S
map sd ds
map sr cs

Plug 'scrooloose/nerdtree'

Plug 'tomtom/tcomment_vim'

Plug 'vim-scripts/paredit.vim'

Plug 'vim-scripts/VimClojure'

Plug 'vim-airline/vim-airline'

Plug 'guns/vim-clojure-static'

Plug 'alessandroyorba/alduin'

Plug 'w0rp/ale'

Plug 'mxw/vim-jsx'

Plug 'vim-airline/vim-airline-themes'

Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-markdown'

Plug 'suan/vim-instant-markdown'

Plug 'fatih/vim-go'

Plug 'JulesWang/css.vim'

Plug 'guns/vim-clojure-static'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'octol/vim-cpp-enhanced-highlight'

" Plug 'sbdchd/neoformat'

Plug 'pangloss/vim-javascript'

Plug 'maxmellon/vim-jsx-pretty'

Plug 'alvan/vim-closetag'

Plug 'Chiel92/vim-autoformat'

Plug 'ntpeters/vim-better-whitespace'

Plug 'gabesoft/vim-ags'

Plug 'tpope/vim-fugitive'

au FileType go nmap <localleader>gr <Plug>(go-run)
au FileType go nmap <localleader>gb <Plug>(go-build)
au FileType go nmap <localleader>gt <Plug>(go-test)
au FileType go nmap <localleader>gc <Plug>(go-coverage)
au FileType go nmap <localleader>gd <Plug>(go-doc)
au FileType go nmap <localleader>ge <Plug>(go-rename)
au FileType go nmap <localleader>gi <Plug>(go-info)


nnoremap <Leader>s :update<CR>
nnoremap <Leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>


nnoremap <leader>A :normal ggVG<cr>
nnoremap <leader>a :normal ggVG<cr>

let g:go_fmt_command = "goimports"

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Plug 'machakann/vim-sandwich'

" Initialize plugin system
call plug#end()

colorscheme alduin
