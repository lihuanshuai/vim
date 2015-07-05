" Vim Configuration

"""""""""""""""""""
" Vundle Settings
"""""""""""""""""""
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
Plugin 'altercation/vim-colors-solarized'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'nvie/vim-flake8' " Install flake8 first
Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()            " required
filetype plugin indent on    " required

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""
" Solarized Color Scheme
"""""""""""""""""""""""""""
syntax enable
set background=dark
colorscheme solarized
if &term =~ '256color'
    set t_Co=256
    let g:solarized_termcolors=256
endif

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

"""""""""""""""""""""""
" Indent Guides
"""""""""""""""""""""""
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors=0
highlight IndentGuidesOdd   ctermbg=darkblue    guibg=grey
highlight IndentGuidesEven  ctermbg=darkcyan    guibg=darkgrey
nmap <silent><Leader>ig <Plug>IndentGuidesToggle
