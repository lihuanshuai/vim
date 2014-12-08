" my vim config
" lihs

"""""""""""""""""""
" basic
""""""""""""""""""
set nocompatible	" Use Vim defaults (much better!)
set syntax=on		" syntax highlight.
syntax on           	" enable syntax.
set number
set ruler		" show the cursor position all the time
set autochdir
set nobackup
set noswapfile
set confirm		" confirm on unsaved or readonly file.
set history=1000	" history item max.

set mouse=a
set cursorline      " highlight current line.
let &t_SI = "\<Esc>]50;CursorShape=1\x7"    " in konsole
let &t_EI = "\<Esc>]50;CursorShape=0\x7"    " in konsole

set background=dark
colorscheme solarized
set colorcolumn=80
highlight ColorColumn ctermbg=darkred guibg=darkred

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
"set completeopt=longest,menu
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

filetype on
call pathogen#infect() 
filetype plugin on
filetype indent on


""""""""""""""""""""
" key mapping
""""""""""""""""""""
" copy to global clipboard under selection "
nmap <C-x>k :qa<CR>
imap <C-x>k <C-O>:qa<CR>

nmap <F4> :tab sp <C-R>=expand("%:h")."/"<CR><CR>
imap <F4> <C-O>:tab sp <C-R>=expand("%:h")."/"<CR><CR>
nmap <S-F4> :tabclose<CR>
nmap <S-F4> <C-O>:tabclose<CR>


"""""""""""""""""""""
" plugins
"""""""""""""""""""""
" taglist
" let Tlist_Ctags_Cmd='/usr/bin/ctags'
" let Tlist_Show_One_File=1
" let Tlist_XonlyWindow=1
" let Tlist_Use_Right_Window=1
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

" winmanager
let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWidth=31
let g:defaultExplorer=1
map <c-w><c-f> :FirstExplorerWindow<cr> 
map <c-w><c-b> :BottomExplorerWindow<cr> 
map <c-w><c-t> :WMToggle<cr>

" Indent Guides
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
highlight IndentGuidesOdd   ctermbg=darkblue    guibg=grey
highlight IndentGuidesEven  ctermbg=darkcyan    guibg=darkgrey
nmap <silent><Leader>ig <Plug>IndentGuidesToggle

" TaskList
map <leader>td <Plug>TaskList

" PEP8
let g:pep8_map='<leader>8'

" Pytest
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>

" Pydoc
let g:pydoc_perform_mappings=0
let g:pydoc_open_cmd = 'tabnew'

" Rope
"imap <buffer><Tab> <C-/>
