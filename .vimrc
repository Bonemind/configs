"make pathogen work
call pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()
filetype off

"syntax highlighting on
syntax on

"Background color/style
set background=dark

"Setting the default colorscheme
colorscheme molokai

"buffers can now exist in background
set hidden

"turn on plugins and stuff
filetype on
filetype plugin on
filetype indent on 

"Set omnifunc libraries
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete

set backspace=indent,eol,start

"turn off vi compatibility
set nocompatible

"Obviousmode
set laststatus=2

"NERDTree
au VimEnter * NERDTree
let g:NERDTreeWinPos = "left"

"DetectIndent
autocmd BufReadPost *:DetectIndent

"Indent-guides
autocmd VimEnter * :IndentGuidesEnable

"turn on line numbers
set number

"key remaps
nnoremap ; :
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <leader>a :call NumberToggle()<cr>
nnoremap <silent> <leader>q :TlistToggle<CR>
nnoremap <silent> <leader>e :NERDTreeToggle<CR>
nnoremap <silent> <leader>g :GundoToggle<CR>
nnoremap <silent> <leader>f :CtrlP<CR>
nnoremap <silent> <leader><left> <C-w>h
nnoremap <silent> <leader>h <C-w>h
nnoremap <silent> <leader>l <C-w>l
nnoremap <silent> <leader>j <C-w>j
nnoremap <silent> <leader>k <C-w>k
nnoremap <silent> <leader>v :vsplit<cr>
nnoremap <silent> <leader>n :set nonumber!<cr>
nnoremap <silent> <leader>p :set paste!<cr>
nnoremap <silent> H ^
nnoremap <silent> L $

"Open vimrc in vertical split
nnoremap <silent> <leader>ev :edit $MYVIMRC<cr>

nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <esc> <NOP>

inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 

imap jj <c-c>
cnoreabbrev W w
cnoreabbrev Q q

"Set windows font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata-g:h10:i:cANSI\ 12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif


"turn on line and column markers
set cursorline
set cursorcolumn

"automatic and smart indent
set autoindent
set copyindent
set smartindent

"search related settings
set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch
set scrolloff=8

"turn off useless clutter files
set noswapfile
set nobackup
set nowb

"Syntax defines
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

"Persistent undo
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

"Code folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

set statusline=%F%r%=%4l\/%-4L\ \ %y
