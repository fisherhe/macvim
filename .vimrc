" 帮助文档设置中文
set helplang=cn

" 设置颜色主题
colorscheme molokai
"colorscheme peaksea

" 设置窗口大小，行X列
set lines=30 columns=120

" 设置水平滚动条
"set guioptions+=b

" 设置启动位置
winpos 160 5

" 标签页
set tabpagemax=15 " 最多15个标签
set showtabline=2 " 总是显示标签栏

" 隐藏工具栏
set guioptions-=T

" 设置行号
set number

" 开启插件
filetype plugin indent on

" 不自动换行
set nowrap

" {{{ 缩进
"自动缩进设置
set autoindent
set smartindent
"禁止自动缩进
"setlocal noautoindent
"setlocal nocindent
"setlocal nosmartindent
"setlocal indentexpr=

" 制表符为4
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" }}}


"光标可以定位在没有实际字符的地方
set ve=block




" 自动切换当前目录为当前文件所在的目录
set autochdir

" 保留历史记录500次
set history=500

" 无需重启vim让_vimrc修改保存后自动生效 貌似没用
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

" {{{快速修改 vimrc 文件，按\ee快速打开.vimrc文件
if has("win32")
    map <silent> <leader>ee :e $VIM/vimfiles/vimrc<cr>
    map <silent> <leader>rc :source $VIM/vimfiles/vimrc<cr> " 快速载入 vimrc 文件
else
    map <silent> <leader>ee :e ~/.vimrc<cr>
    map <silent> <leader>rc :source ~/.vimrc<cr> " 快速载入 vimrc 文件
endif
" }}}


"==========
"语言环境
"==========

" {{{编码语言环境 http://www.ibm.com/developerworks/cn/linux/l-tip-vim1/index.html
" Vim 内部使用的编码是 UTF-8；这是国际化支持的基础。
set encoding=utf-8

" Vim 当前编辑的文件在存储时的编码
set fileencoding=chinese

" Vim 打开文件时的尝试使用的编码
set fileencodings=ucs-bom,utf-8,chinese

" 对“不明宽度”字符设置为双倍字符宽度
set ambiwidth=double

" 字体大小
set guifont=Consolas:h16
" }}}


"set langmenu=zh_CN.UTF-8
"language message zh_CN.UTF-8




" {{{搜索选项配置
" 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set ignorecase smartcase

" 搜索时高亮显示被找到的文本
set hlsearch

" 输入搜索内容时就显示搜索结果
set incsearch

" 禁止在搜索到文件两端时重新搜索
set nowrapscan
" }}}



"{{{代码折叠
" 设置手工折叠
set foldmethod=indent

" 设置折叠区域的宽度
set foldcolumn=0

" 设置折叠层数为
"setlocal foldlevel=1

"鼠标经过时自动打开折叠
"set foldopen=all

"鼠标离开时自动关闭折叠
"set foldclose=all
"}}}



" 打开状态栏标尺
set ruler

" set cursorline              " 突出显示当前行

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-



" 设置字典 ~/.vim/dict/文件的路径
autocmd filetype javascript set dictionary=$VIMFILES/dict/javascript.dict
autocmd filetype css set dictionary=$VIMFILES/dict/css.dict
autocmd filetype php set dictionary=$VIMFILES/dict/php.dict





" {{{ 一键执行当前html文件
"function! RunThisFile()
"    silent exec '/Applications/Firefox.app'.expand("%:p")
"endfunction
"map <D-1> :call RunThisFile()<cr>
" }}}



"set langmenu=cn              " 设置中文菜单






" 设置在状态行显示的信息
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
"set statusline=%F%m%r%h%w%=%{fugitive#statusline()}\ (%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)"






"==========
" 插件
"==========

" {{{ mru：记录最近打开的文件，相当好的插件。
let MRU_File = $VIMFILES.'/_vim_mru_files'
let MRU_Max_Entries = 1000
let MRU_Add_Menu = 0
nmap <leader>f :MRU<CR>


if has('unix')
    let $VIMFILES = $HOME.'/.vim'
else
    let $VIMFILES = $VIM.'/vimfiles'
endif
" }}}

" zencoding快捷键
let g:user_zen_expandabbr_key = "<D-e>"

" 快速创建模板插件 https://github.com/hotoo/template.vim/
let g:template_dir = $HOME.'/.vim/templates/'
let g:template_author = "http://fisherhe.com (heqiang.org@gmail.com)"






" Set QuickTemplatePath另一个模板插件
let g:QuickTemplatePath = $HOME.'/.vim/templates/'

" 新建 HTML 、PHP、Javascript 文件的快捷键	\html快速创建html模板
nmap <silent><leader>html :NewQuickTemplateTab html<cr>
nmap <silent><leader>css :NewQuickTemplateTab css<cr>
nmap <silent><leader>js :NewQuickTemplateTab javascript<cr>
nmap <silent><leader>php :NewQuickTemplateTab php<cr>




" 关闭代码提示插件 AutoComplPop closed
let g:acp_enableAtStartup = 0

"设置snippet插件自动完成快捷键
ino <space> <c-r>=TriggerSnippet()<cr>
snor <space> <esc>i<right><c-r>=TriggerSnippet()<cr>




" NERD_commenter 代码注释插件
" <leader>ca 在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
" <leader>cc 注释当前行
" <leader>cs 以”性感”的方式注释
" <leader>cA 在当前行尾添加注释符，并进入Insert模式
" <leader>cu 取消注释
" 添加块注释
" nmap <leader>f :cm<CR>

nmap <D-H><C-c><C-h> :NewQuickTemplateTab html<cr>
nmap <D-H>:NewQuickTemplateTab html<cr>
