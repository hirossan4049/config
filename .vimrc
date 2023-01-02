syntax on

autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
colorscheme onedark

inoremap <silent> jj <ESC>

hi TabLineFill ctermfg=darkgray ctermbg=black
hi TabLine ctermfg=darkgray ctermbg=Black
hi TabLineSel ctermfg=White ctermbg=None
hi Title ctermfg=LightBlue ctermbg=Magenta

set nows
set number
set ruler 
set wildmenu  
set showcmd  
set wrap     
set textwidth=0     
set cursorline      
set novisualbell
set foldmethod=indent   
set foldlevel=100    

""" 編集関係
set infercase           
set virtualedit=all     
set hidden              
set switchbuf=useopen   
set showmatch           
set matchtime=3         
set autoindent          
set shiftwidth=4        
au BufNewFile,BufRead *.yml set shiftwidth=2
set softtabstop=4       
set expandtab           
set tabstop=4           
au BufNewFile,BufRead *.yml set tabstop=2

" 対応括弧に'<'と'>'のペアを追加
set matchpairs& matchpairs+=<:>
set backspace=indent,eol,start
set clipboard+=unnamed

" 'unnamedplus'が存在しているかどうかで設定を分ける必要がある
if has('unnamedplus')
    set clipboard& clipboard+=unnamedplus,unnamed
else
    set clipboard& clipboard+=unnamed
endif
" Swapファイル, Backupファイルを全て無効化する
set nowritebackup
set nobackup
set noswapfile

""" 検索関係
set ignorecase          " 大文字小文字を区別しない
set smartcase           " 検索文字に大文字がある場合は大文字小文字を区別
set incsearch           " インクリメンタルサーチ
set hlsearch            " 検索マッチテキストをハイライト

""" key
nmap <silent> <C-c> :nohlsearch<CR>
" カーソル下の単語を * で検索
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>
" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk
" TABにて対応ペアにジャンプ
nnoremap <Tab> %
vnoremap <Tab> %
" 字下げ字上げ時勝手にビジュアルモード解除しない設定
vnoremap > >gv
vnoremap < <gv
" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" PPで前回ヤンクした内容を復活する
noremap PP "0p

imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-e> <End>


" タブ系
nnoremap <C-t> :tabnew<Space>
nnoremap <C-n> gt
nnoremap <C-p> gT

nnoremap d "_d
xnoremap d "_d
xnoremap p "_dP

" マウス操作
set mouse=a
set ttymouse=xterm2
"set foldcolumn=3
"set foldmethod=marker



" コメント中の特定の単語を強調表示する
"autocmd vimrc WinEnter,WinLeave,BufRead,BufNew,Syntax * call matchadd('Todo', '\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\|NOTE\|INFO\|IDEA\)')
"NOTE:aaaa
if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
    if v:version > 701
        autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\)')
        autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\)')
    endif
endif


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'terryma/vim-smooth-scroll'


" Tabnine. 重いのでやめた
" Plugin 'zxqfl/tabnine-vim'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Vlang syntax Highlight
Plug 'ollykel/v-vim'

" Initialize plugin system
call plug#end()
