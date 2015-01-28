set nowrap
syntax on
set guifont=Courier_New:h8
set showtabline=2

" Firefox-style tabs
nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
imap <C-S-tab> <ESC>:tabprevious<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr>i
map <C-w> :tabclose<cr>

" The best color scheme ever.
colorscheme delek

" Don't back up files
set nobackup

" On-screen line numbering
set number
set nuw=6

" File Explorer (F2)
let treeExplVertical=1
let treeExplWinSize=35
let treeExplDirSort=1
let treeExplNoList=1
:nmap <F2> :VSTreeExplore<cr>

" Prevent VIM from emulating VI's bugs and limitations
set nocompatible

" Indentation
set autoindent
set smartindent

" Case
set ignorecase
set smartcase

" 4-space tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Match braces/brackets/parens
set showmatch

" Get rid of the toolbar
set guioptions-=T

" Don't beep on error
set vb t_vb=

" Search for text as you enter it
set incsearch

" Allow the cursor to roam free!
" set virtualedit=all

" Keep some context
set scrolloff=2

" File name completion
set wildmode=longest,list

" Enable horizontal scrollbar
set guioptions+=b

let &titlestring = "[vim(" . expand("%:t") . ")]"
if &term == "screen"
  set t_ts=k
  set t_fs=\
  auto BufEnter * :set title | let &titlestring = 'v:' . expand('%')
  auto VimLeave * :set t_ts=k\
endif
if &term == "screen" || &term == "xterm"
  set title
endif


set rtp+=/Users/raguay/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
 
" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256
 
let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
 
if ! has('gui_running')
   set ttimeoutlen=10
   augroup FastEscape
      autocmd!
      au InsertEnter * set timeoutlen=0
      au InsertLeave * set timeoutlen=1000
   augroup END
endif
 
set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
