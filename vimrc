" --------------------
"  plugins
" --------------------
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'

call plug#end()

" --------------------------------
" powerline options
" --------------------------------
set laststatus=2   " Always show the statusline
let g:Powerline_symbols = 'fancy'
au BufReadPost fugitive://* set bufhidden=delete
set encoding=utf-8

" --------------------------------
" ctrlp options
" --------------------------------

let g:ctrlp_working_path_mode= 'ra'


" ------------
" general
" ------------
set number
set showcmd
set ignorecase
set smartcase
set hlsearch
set softtabstop=2
set shiftwidth=2
set expandtab
set scrolloff=10

filetype plugin indent on
set matchpairs+=<:> " this allows % to work on <>

" ------------
" keybindings
" ------------
let mapleader="`"

" moving around splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" moving around tabs
nnoremap <C-N> :tabprevious<CR>
nnoremap <C-M> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>


" big comment
nnoremap <leader>br o// ----------------------------<esc>o

" -----------
" filetype resolution
" -----------
au BufNewFile,BufRead *.cu set filetype=cuda
au BufNewFile,BufRead *.cuh set filetype=cuda
au BufNewFile,BufRead *SConscript set filetype=python
au BufNewFile,BufRead *SConstruct set filetype=python
au BufNewFile,BufRead *scons set filetype=python

" -----------
" filetype options
" -----------
au filetype lua setl sw=3 sts=3 ts=3
au filetype python setl sw=4 sts=4 ts=4
