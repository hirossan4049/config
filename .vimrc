set nocompatible
scriptencoding utf-8

syntax on
set termguicolors
set background=dark

" --------------------
" Plugins (vim-plug)
" --------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'wincent/command-t'
Plug 'rstacruz/sparkup', { 'rtp': 'vim/' }
Plug 'terryma/vim-smooth-scroll'
Plug 'ollykel/v-vim'
Plug 'joshdick/onedark.vim'
call plug#end()

filetype plugin indent on

" --------------------
" UI
" --------------------
augroup MyColors
  autocmd!
  autocmd ColorScheme * highlight Normal ctermbg=NONE
  autocmd ColorScheme * highlight LineNr ctermbg=NONE
  autocmd ColorScheme * highlight TabLineFill ctermfg=darkgray ctermbg=black
  autocmd ColorScheme * highlight TabLine ctermfg=darkgray ctermbg=black
  autocmd ColorScheme * highlight TabLineSel ctermfg=white ctermbg=NONE
  autocmd ColorScheme * highlight Title ctermfg=LightBlue ctermbg=Magenta
augroup END

colorscheme onedark

set number
set ruler
set wildmenu
set showcmd
set wrap
set textwidth=0
set cursorline
set nowrapscan
set novisualbell
set t_vb=
set foldmethod=indent
set foldlevel=100

set mouse=a
if exists('+ttymouse')
  set ttymouse=xterm2
endif

" --------------------
" Editing
" --------------------
set infercase
set virtualedit=all
set hidden
set switchbuf=useopen
set showmatch
set matchtime=3
set autoindent

set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4

augroup MyFiletypes
  autocmd!
  autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2
augroup END

set matchpairs& matchpairs+=<:>
set backspace=indent,eol,start

if has('unnamedplus')
  set clipboard& clipboard+=unnamedplus,unnamed
else
  set clipboard& clipboard+=unnamed
endif

set nowritebackup
set nobackup
set noswapfile

" --------------------
" Search
" --------------------
set ignorecase
set smartcase
set incsearch
set hlsearch

" --------------------
" Keymaps
" --------------------
inoremap <silent> jj <Esc>

nnoremap <silent> <C-c> :nohlsearch<CR>

vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v,'\/'),"\n",'\\n','g')<CR><CR>

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

nnoremap <Tab> %
vnoremap <Tab> %

vnoremap > >gv
vnoremap < <gv

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap PP "0p

inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-e> <End>

nnoremap <C-t> :tabnew<Space>
nnoremap <C-n> gt
nnoremap <C-p> gT

nnoremap d "_d
xnoremap d "_d
xnoremap p "_dP

" --------------------
" TODO Highlight
" --------------------
augroup MyTodo
  autocmd!
  autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\)')
  autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\)')
augroup END
