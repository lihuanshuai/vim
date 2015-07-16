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
Plugin 'vim-scripts/TaskList.vim'
Plugin 'sjl/gundo.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'wincent/command-t'
Plugin 'tpope/vim-surround'
Plugin 'reinh/vim-makegreen'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'ervandew/supertab'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kchmck/vim-coffee-script'
Plugin 'fatih/vim-go'

call vundle#end()            " required
filetype plugin indent on    " required

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""
" Basic Settings
"""""""""""""""""""
syntax on           	" enable syntax.
set fileencodings=ucs-bom,utf-8,chinese,cp936,gb2312,gbk,gb18030,big5,euc-jp,euc-kr,latinl
set number
set ruler		" show the cursor position all the time
set autochdir
set autoread
set nobackup
"set noswapfile
set confirm		" confirm on unsaved or readonly file.
set history=1000	" history item max.
set mouse=a
"set cursorline          " highlight current line.
if &term =~ 'konsole'   " I will set $TERM to '*konsole' in Konsole profile
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"    " blinking vertical bar in konsole
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"    " blinking block in konsole
endif

set autoindent				" indent automacally.
set smartindent
set tabstop=4				" tab width.
set softtabstop=4			" indent width.
set shiftwidth=4
set expandtab				" use empty instread of tab.
set smarttab				" use tab on start of line or para.
set ignorecase				" ignore case.
set hlsearch				" higlight search.
set incsearch
set completeopt=menuone,longest,preview
set bs=indent,eol,start		" allow backspacing over everything in insert mode
set whichwrap+=<,>,h,l      	" allow <BS> and cusor crossing these.
set showcmd         " show command.
set wildmenu        " cmd autocomplete
set cmdheight=1		" command line height.
set statusline=%F%m%r%h%w\ [FMT=%{&ff}\ TYP=%Y\ ENC=%{&encoding}]\ [%l,%v\|\%B][%p%%]\ %{strftime(\"%d/%m/%y-%H:%M\")}
set laststatus=2    " display status in 1 line.
set foldenable          " enable fold.
set foldmethod=manual   " fold manually.
set foldcolumn=4
set foldlevel=3

nmap <F6> :tab sp <C-R>=expand("%:h")."/"<CR><CR>
imap <F6> <C-O>:tab sp <C-R>=expand("%:h")."/"<CR><CR>
nmap <S-F6> :tabclose<CR>
nmap <S-F6> <C-O>:tabclose<CR>

"""""""""""""""""""""""""""
" Solarized Color Scheme
"""""""""""""""""""""""""""
syntax enable
set background=dark
"colorscheme solarized
"if &term =~ '256color'
"    set t_Co=256
"    let g:solarized_termcolors=256
"endif
set colorcolumn=80
highlight ColorColumn ctermbg=darkred guibg=darkred

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

"""""""""""""""""""""""
" TaskList
"""""""""""""""""""""""
map <leader>td <Plug>TaskList

"""""""""""""""""""""""
" Gundo
"""""""""""""""""""""""
let g:gundo_width=35
let g:gundo_preview_height=25
let g:gundo_right=1
"let g:gundo_preview_bottom=1
map <leader>g :GundoToggle<CR>

"""""""""""""""""""""""""""
" Taglist
"""""""""""""""""""""""""""
" let Tlist_Ctags_Cmd='/usr/bin/ctags'
" let Tlist_Show_One_File=1
" let Tlist_XonlyWindow=1
let Tlist_Use_Right_Window=1
" let Tlist_Sort_Type='name'
" let Tlist_Exit_XonlyWindow=1
let Tlist_Show_Menu=1
" let Tlist_Max_Submenu_Items=10
" let Tlist_Max_Tag_length=20
" let Tlist_Use_SingleClick=0
" let Tlist_Auto_Open=1
let Tlist_Auto_Update=1
" let Tlist_Close_On_Select=0
" let Tlist_File_Fold_Auto_Close=1
" let Tlist_GainFocus_On_ToggleOpen=0
" let Tlist_Process_Fie_Always=1
" let Tlist_WinHeight=5
" let Tlist_WinWidth=20
" let Tlist_Use_Horiz_Window=0

"""""""""""""""""""""""
" Airline
"""""""""""""""""""""""
let g:airline#extensions#branch#enabled=1
"let g:airline_section_b='%{strftime("%Y-%m-%d %H:%M")}'
"let g:airline_section_y='BN: %{bufnr("%")}''")}'

"""""""""""""""""""""""
" Nerdtree
"""""""""""""""""""""""
map <leader>n :NERDTreeToggle<CR>

"""""""""""""""""""""""
" Supertab
"""""""""""""""""""""""
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType="context"

"""""""""""""""""""""""
" Ack
"""""""""""""""""""""""
nmap <leader>a <Esc>:Ack!

