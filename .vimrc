syntax on

autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
colorscheme onedark

inoremap <silent> jj <ESC>

" tab color
hi TabLineFill ctermfg=LightGreen ctermbg=Gray
hi TabLine ctermfg=Black ctermbg=Gray
hi TabLineSel ctermfg=Black ctermbg=Yellow
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
" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" タブ系
nnoremap <C-t> :tabnew<Space>
nnoremap <C-n> gt
nnoremap <C-p> gT


" まうth操作
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
