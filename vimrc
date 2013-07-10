set nocompatible
set fileencodings=ucs-bom,utf-8,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
set hls
set mouse=a 
set wildmenu
set background=dark
filetype off
syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set showmatch
"在http://vim-scripts.org/vim/scripts.html 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" 初始化bundle git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
Bundle 'gmarik/vundle'
" 智能tab补全
Bundle 'SuperTab-continued.'
" vim 缓冲区浏览器
Bundle 'bufexplorer.zip'
" code tag list
Bundle 'taglist.vim'
" vim 窗口管理器
Bundle 'winmanager'
" 配色增强
Bundle 'darkblue2.vim'
" 配色套餐
Bundle 'wombat256.vim'
" vim ack插件
Bundle 'ack.vim'
" 类，函数注释自动生成插件
Bundle 'DoxygenToolkit.vim'


"set ruler
"set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
"colorscheme wombat256
color darkblue
"set background=dark
set backspace=indent,eol,start
vnoremap < < gv
vnoremap > > gv 

map <F12> :set number!<CR>

nmap <C-N> :tabnext<CR>
nmap <C-P> :tabprevious<CR>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <DELETE>

cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>

""""""""""""""""""""""""""""""
" BufExplore settingr
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0       " Do not show default help.
"let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=1        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.

set tags+=/home/work/odp/app/webmarket/tags
"let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWindowLayout='FileExplorer|BufExplorer'
nmap wm :WMToggle<cr>
"取消备份即swp文件
set nobackup 
set runtimepath+=~/.vim/phpdoc
set keywordprg="help"
nmap <C-J> : !ZendCodeAnalyzer %<CR>
