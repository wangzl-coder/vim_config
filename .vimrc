"=============================================
"    FileName: .vimrc

"    Author:   ce

"    Version:  1.0.0

"    Email:    zbing3@gmail.com

"    Blog: http://opslinux.com

"    Date: 2013-7-23

"=============================================

"==================================

"    Vim基本配置

"===================================

"关闭vi的一致性模式 避免以前版本的一些Bug和局限

set nocompatible

"配置backspace键工作方式

set backspace=indent,eol,start

"相对行号

set relativenumber

"显示行号

"set number

"设置在编辑过程中右下角显示光标的行列信息

set ruler

"当一行文字很长时取消换行

"set nowrap

"设置历史记录条数

set history=1000

"设置取消备份 禁止临时文件生成

set nobackup

set noswapfile

"突出现实当前行列

"set cursorline

"set cursorcolumn

"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号

set showmatch

"设置C/C++方式自动对齐

set autoindent

set cindent

"开启语法高亮功能

syntax enable

syntax on

"指定配色方案为256色

set t_Co=256

"设置搜索时忽略大小写

set ignorecase

"设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝

"set mouse=a

"设置Tab宽度

set tabstop=4

"设置自动对齐空格数

set shiftwidth=4

"设置按退格键时可以一次删除4个空格

set softtabstop=4

"设置按退格键时可以一次删除4个空格

set smarttab

"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]

set expandtab

"设置编码方式

set encoding=utf-8

"自动判断编码时 依次尝试一下编码

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"检测文件类型

filetype on

"针对不同的文件采用不同的缩进方式

filetype indent on

"允许插件

filetype plugin on

"启动智能补全

filetype plugin indent on

"搜索自动跳转
set incsearch


"以上都是vim的一些基本配置，开始使用Vundle还需要以下配置

"==================================

"    开始使用Vundle的必须配置始使用Vundle的必须配置

"===================================

set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

"使用Vundle来管理Vundle

Bundle 'gmarik/vundle'

"PowerLine插件 状态栏增强展示

"Bundle 'Lokaltog/vim-powerline'

"air-line 插件

Bundle 'bling/vim-airline'

"安装NERD-tree

Bundle 'The-NERD-tree'

Bundle 'luochen1990/rainbow'

"Vundle配置必须 开启插件

filetype plugin indent on

"vim有一个状态栏 加上powline则有两个状态栏

"设置powerline状态栏

set laststatus=2

set t_Co=256

let g:Powline_symbols='fancy'

set nocompatible

set enc=utf-8

let termencoding=&encoding

set fileencodings=utf-8,gbk,ucs-bom,cp936

set guifont=Ubuntu\ Mono\ for\ Powerline\ 12

"air line 配置

"let g:airline_theme="luna" 

"这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1   

"打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
"我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"设置切换Buffer快捷键"
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>

" 关闭状态显示空白符号计数,这个对我用处不大"
"let g:airline#extensions#whitespace#enabled = 0
"let g:airline#extensions#whitespace#symbol = '!'

" 在Gvim中我设置了英文用Hermit， 中文使用 YaHei Mono "
"if has('win32')
"    set guifont=Hermit:h13
"    set guifontwide=Microsoft_YaHei_Mono:h12
"endif

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
"old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'


"设置NERDTree的选项

let NERDTreeMinimalUI=1

let NERDChristmasTree=1

" Give a shortcut key to NERD Tree 

"map  :NERDTreeToggle

"在状态栏显示正在输入的命令

set showcmd

"高亮当前行

set cursorline

"高亮行颜色

hi CursorLine cterm=NONE ctermbg=243 ctermfg=51

"设置搜索高亮

set hls
hi Search term=standout ctermfg=0 ctermbg=3

"设置补全选择框颜色

highlight Pmenu ctermfg=NONE ctermbg=240
highlight PmenuSel ctermfg=NONE ctermbg=32

"rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': [197, 82, 11, 14],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

