set nocompatible "no vi stuff, not needed in neovim
syntax on "not needed in neovim
set number "line numbers
filetype plugin on

"Highlight line
nnoremap <silent> <F4> :set cursorline!<CR>

" tmp stuff
set nowrap
set sidescroll=1

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set fileformat=unix

set exrc

call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-sleuth'
Plug 'Mofiqul/dracula.nvim'
call plug#end()

let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|venv)|(\.(swp|ico|git|svn))$'
let g:airline_section_b = 'Filetype: %y'

colorscheme dracula
