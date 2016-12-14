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
Plug 'scrooloose/nerdtree'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'derekwyatt/vim-fswitch'
Plug 'alpertuna/vim-header'

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
let mapleader=",,"

" moving around splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>h :FSSplitLeft<CR>
nnoremap [1;5C <C-W>[1;2C
nnoremap [1;5D <C-W>[1;2D

" moving around tabs
nnoremap <C-N> :tabprevious<CR>
nnoremap <C-M> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>


" big comment
nnoremap <leader>br o/***************************************************************<esc>o<bs>**************************************************************/<esc>ko
" small comment
nnoremap <leader>sc o//---------------------------------------------------------------<esc>o

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

" -----------
" cscope.vim
" -----------
nnoremap <leader>fa :call cscope#findInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>

" s: Find this C symbol
nnoremap  <leader>fs :call cscope#find('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call cscope#find('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call cscope#find('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call cscope#find('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call cscope#find('i', expand('<cword>'))<CR>

let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_github=1
let g:header_field_author = 'Ankit Kumar'
let g:header_field_author_email = 'ankit@pilot.ai'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|build|obj|jni/boost|jni/clapack|scratch|jni/opencv|jni/android-lib-libX11|jni/mongoose|jni/libjpeg-turbo-1.4.1|Logs|nocona|nocona_debug|Source/External|Source/analysis.*|Documentation/HTML)$',
  \ 'file': '\v(\.exe|\.so|\.dll|\.o|\.a|\.pyc|_nocona|_nocona_debug)$'
  \ }


