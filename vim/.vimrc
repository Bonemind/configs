filetype off

if has('vim_starting')
 set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/dein.vim/repos/github.com/Shougo/dein.vim

" Let NeoBundle manage NeoBundle
" Required:
call dein#begin(expand('~/.cache/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('tpope/vim-commentary')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('ciaranm/detectindent')
call dein#add('rafiks/dfrank_util')
call dein#add('mattn/emmet-vim')
call dein#add('vim-scripts/Gundo')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('Shougo/neocomplete.vim')
call dein#add('tpope/vim-repeat')
call dein#add('tsaleh/vim-supertab')
call dein#add('tpope/vim-surround')
call dein#add('scrooloose/syntastic')
call dein#add('tpope/vim-abolish')
call dein#add('bling/vim-airline')
call dein#add('tpope/vim-fugitive')
call dein#add('justinmk/vim-sneak')
call dein#add('scrooloose/nerdtree')
call dein#add('vim-scripts/vimprj')
call dein#add('lervag/vimtex')
call dein#add('tpope/vim-rails')
call dein#add('tpope/vim-bundler')
call dein#add('Shougo/neosnippet')
call dein#add('danilo-augusto/vim-afterglow')
call dein#add('benmills/vimux')
call dein#add('skalnik/vim-vroom')
call dein#add('kana/vim-textobj-user')
call dein#add('rhysd/vim-textobj-ruby')
call dein#add('christoomey/vim-tmux-navigator')
call dein#add('dbakker/vim-projectroot')
call dein#add('airblade/vim-gitgutter')
call dein#add('majutsushi/tagbar')
call dein#add('osyo-manga/vim-over')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('othree/yajs.vim')
call dein#add('sheerun/vim-polyglot')
call dein#add('unblevable/quick-scope')
call dein#add('roman/golden-ratio')
call dein#add('junegunn/vim-easy-align')
call dein#add('ryanoasis/vim-devicons')
call dein#add('szw/vim-tags')
call dein#add('wellle/targets.vim')

call dein#end()

"turn on plugins and stuff
filetype on
filetype plugin on
filetype indent on

" Devicons requires UTF-8
set encoding=utf8
let g:airline_powerline_fonts = 1

"syntax highlighting on
syntax on

"Background color/style
set background=dark

"Setting the default colorscheme
if has('gui_running')
 colorscheme afterglow
else
 colorscheme afterglow
endif

"Diablo3 longline warning
let g:diablo3_longline = 1

"buffers can now exist in background
set hidden

"Make backspace behave in a sane way
set backspace=indent,eol,start

"turn off vi compatibility
set nocompatible

"Statusbar
set laststatus=2

"NeoComplCache
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#sources#syntax#min_keyword_length = 1
let g:neocomplete#enable_fuzzy_completion = 1
let g:neocomplete#max_list = 10

"Indent-guides
autocmd VimEnter * :IndentGuidesEnable

"turn on line numbers
set number
set relativenumber

"key remaps
function! NumberToggle()
 if(&relativenumber == 1)
  set number
 else
  set relativenumber
 endif
endfunc

nnoremap <silent> <leader>q :TagbarToggle<CR>
nnoremap <silent> <leader><leader>q :CtrlPTag<CR>
nnoremap <silent> <leader>e :NERDTreeToggle<CR>
nnoremap <silent> <leader>g :GundoToggle<CR>
nnoremap <silent> <leader>f :CtrlP<CR>
nnoremap <silent> <leader>v :vsplit<cr>
nnoremap <leader>t :call VimuxPromptCommand()<CR>

" Window management
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>

"Buffers
nnoremap <silent> <leader>bn :bn<cr>
nnoremap <silent> <leader>bp :bp<cr>
nnoremap <silent> <leader>bd :bd<cr>
nnoremap <silent> <leader>bf :CtrlPBuffer<cr>

"Tab indents
nnoremap <silent> <Tab> >>
vnoremap <silent> <Tab> >gv
nnoremap <silent> <S-Tab> <<
vnoremap <silent> <S-Tab> <gv


"binds to make HL behave like a stronger h and l
nnoremap <silent> H ^
nnoremap <silent> L $
vnoremap <silent> H ^
vnoremap <silent> L $


"Open vimrc in
nnoremap <silent> <leader>ev :edit $MYVIMRC<cr>

"NOP arrow keys
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <esc> <NOP>

"NOP S-k
nnoremap <s-k> <NOP>

"Use jj instead of escape
imap jj <c-c>


"Some command remaps for common typos
cnoreabbrev W w
cnoreabbrev Wa wa
cnoreabbrev WA wa
cnoreabbrev Q q
cnoreabbrev Qa qa
cnoreabbrev QA qa

"Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,php EmmetInstall
let g:user_emmet_leader_key='<leader><leader>e'


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
set tabstop=3
set shiftwidth=3

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

"Modelines
set modeline
set modelines=5

"Set working directory to current file
autocmd BufEnter * silent! lcd %:p:h

"Certain filetypes shouldn't be processed by detectindent
fun! DetectIndentExlude()
 " Don't strip on these filetypes
 if &ft =~ 'php\|html\|js\|ruby\|javascript'
  return
 endif
 :DetectIndent
endfun

"DetectIndent
autocmd BufReadPost * call DetectIndentExlude()

" Neosnippet
imap <leader>r     <Plug>(neosnippet_expand_or_jump)
smap <leader>r     <Plug>(neosnippet_expand_or_jump)
xmap <leader>r     <Plug>(neosnippet_expand_target)

" For conceal markers.
if has('conceal')
 set conceallevel=2 concealcursor=niv
endif

let g:neosnippet#snippets_directory='~/.vim/snippets'

set shell=/bin/bash

" List chars
set list lcs=tab:>-,trail:>

" Vimux vroom
let g:vroom_use_vimux=1
let g:vroom_use_binstubs=1

map <leader>vr :VimuxPromptCommand<CR>
map <leader>vq :VimuxCloseRunner<CR>
map <leader>vx :VimuxInterruptRunner<CR>
map <leader>rc :VroomRunTestFile<CR>
map <leader>rn :VroomRunNearestTest<CR>
map <leader>rl :VroomRunLastTest<CR>

" Syntastic
let g:syntastic_ruby_checkers = ['mri']

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_section_c = '%t'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tagbar#enabled = 1

"Add a sudo write command
command! Wsudo w !sudo tee > /dev/null %

"quickscope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Filetype mappings for unknown filetypes
augroup filetypedetect
    au BufRead,BufNewFile *.vimprj setfiletype vim
augroup END

"Bracketed paste mode
if &term =~ "screen.*"
    let &t_ti = &t_ti . "\e[?2004h"
    let &t_te = "\e[?2004l" . &t_te
    function XTermPasteBegin(ret)
        set pastetoggle=<Esc>[201~
        set paste
        return a:ret
    endfunction
    map <expr> <Esc>[200~ XTermPasteBegin("i")
    imap <expr> <Esc>[200~ XTermPasteBegin("")
    vmap <expr> <Esc>[200~ XTermPasteBegin("c")
    cmap <Esc>[200~ <nop>
    cmap <Esc>[201~ <nop>
endif
