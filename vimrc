" Vim Configuration

"""""""""""""""""""
" basic
""""""""""""""""""
set nocompatible	" Use Vim defaults (much better!)
filetype off            " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'jiangmiao/auto-pairs'
Plugin 'alfredodeza/pytest.vim'
Plugin 'fs111/pydoc.vim'
Plugin 'tpope/vim-git'
Plugin 'klen/python-mode'

call vundle#end()            " required
filetype plugin indent on    " required

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""
" Pytest
"""""""""""""""""""""""
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>

"""""""""""""""""""""""
" Pydoc
"""""""""""""""""""""""
let g:pydoc_perform_mappings=0
let g:pydoc_open_cmd = 'tabnew'
