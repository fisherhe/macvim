" �����ĵ���������
set helplang=cn

" ������ɫ����
colorscheme molokai
"colorscheme peaksea

" ���ô��ڴ�С����X��
set lines=30 columns=120

" ����ˮƽ������
"set guioptions+=b

" ��������λ��
winpos 160 5

" ��ǩҳ
set tabpagemax=15 " ���15����ǩ
set showtabline=2 " ������ʾ��ǩ��

" ���ع�����
set guioptions-=T

" �����к�
set number

" �������
filetype plugin indent on

" ���Զ�����
set nowrap

" {{{ ����
"�Զ���������
set autoindent
set smartindent
"��ֹ�Զ�����
"setlocal noautoindent
"setlocal nocindent
"setlocal nosmartindent
"setlocal indentexpr=

" �Ʊ��Ϊ4
set tabstop=4
" ͳһ����Ϊ4
set softtabstop=4
set shiftwidth=4
" }}}


"�����Զ�λ��û��ʵ���ַ��ĵط�
set ve=block




" �Զ��л���ǰĿ¼Ϊ��ǰ�ļ����ڵ�Ŀ¼
set autochdir

" ������ʷ��¼500��
set history=500

" ��������vim��_vimrc�޸ı�����Զ���Ч ò��û��
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

" {{{�����޸� vimrc �ļ�����\ee���ٴ�.vimrc�ļ�
if has("win32")
    map <silent> <leader>ee :e $VIM/vimfiles/vimrc<cr>
    map <silent> <leader>rc :source $VIM/vimfiles/vimrc<cr> " �������� vimrc �ļ�
else
    map <silent> <leader>ee :e ~/.vimrc<cr>
    map <silent> <leader>rc :source ~/.vimrc<cr> " �������� vimrc �ļ�
endif
" }}}


"==========
"���Ի���
"==========

" {{{�������Ի��� http://www.ibm.com/developerworks/cn/linux/l-tip-vim1/index.html
" Vim �ڲ�ʹ�õı����� UTF-8�����ǹ��ʻ�֧�ֵĻ�����
set encoding=utf-8

" Vim ��ǰ�༭���ļ��ڴ洢ʱ�ı���
set fileencoding=chinese

" Vim ���ļ�ʱ�ĳ���ʹ�õı���
set fileencodings=ucs-bom,utf-8,chinese

" �ԡ�������ȡ��ַ�����Ϊ˫���ַ����
set ambiwidth=double

" �����С
set guifont=Consolas:h16
" }}}


"set langmenu=zh_CN.UTF-8
"language message zh_CN.UTF-8




" {{{����ѡ������
" ����ʱ���Դ�Сд��������һ�������ϴ�д��ĸʱ�Ա��ֶԴ�Сд����
set ignorecase smartcase

" ����ʱ������ʾ���ҵ����ı�
set hlsearch

" ������������ʱ����ʾ�������
set incsearch

" ��ֹ���������ļ�����ʱ��������
set nowrapscan
" }}}



"{{{�����۵�
" �����ֹ��۵�
set foldmethod=indent

" �����۵�����Ŀ��
set foldcolumn=0

" �����۵�����Ϊ
"setlocal foldlevel=1

"��꾭��ʱ�Զ����۵�
"set foldopen=all

"����뿪ʱ�Զ��ر��۵�
"set foldclose=all
"}}}



" ��״̬�����
set ruler

" set cursorline              " ͻ����ʾ��ǰ��

" �������·��ŵĵ��ʲ�Ҫ�����зָ�
set iskeyword+=_,$,@,%,#,-



" �����ֵ� ~/.vim/dict/�ļ���·��
autocmd filetype javascript set dictionary=$VIMFILES/dict/javascript.dict
autocmd filetype css set dictionary=$VIMFILES/dict/css.dict
autocmd filetype php set dictionary=$VIMFILES/dict/php.dict





" {{{ һ��ִ�е�ǰhtml�ļ�
"function! RunThisFile()
"    silent exec '/Applications/Firefox.app'.expand("%:p")
"endfunction
"map <D-1> :call RunThisFile()<cr>
" }}}



"set langmenu=cn              " �������Ĳ˵�






" ������״̬����ʾ����Ϣ
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
"set statusline=%F%m%r%h%w%=%{fugitive#statusline()}\ (%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)"






"==========
" ���
"==========

" {{{ mru����¼����򿪵��ļ����൱�õĲ����
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

" zencoding��ݼ�
let g:user_zen_expandabbr_key = "<D-e>"

" ���ٴ���ģ���� https://github.com/hotoo/template.vim/
let g:template_dir = $HOME.'/.vim/templates/'
let g:template_author = "http://fisherhe.com (heqiang.org@gmail.com)"






" Set QuickTemplatePath��һ��ģ����
let g:QuickTemplatePath = $HOME.'/.vim/templates/'

" �½� HTML ��PHP��Javascript �ļ��Ŀ�ݼ�	\html���ٴ���htmlģ��
nmap <silent><leader>html :NewQuickTemplateTab html<cr>
nmap <silent><leader>css :NewQuickTemplateTab css<cr>
nmap <silent><leader>js :NewQuickTemplateTab javascript<cr>
nmap <silent><leader>php :NewQuickTemplateTab php<cr>




" �رմ�����ʾ��� AutoComplPop closed
let g:acp_enableAtStartup = 0

"����snippet����Զ���ɿ�ݼ�
ino <space> <c-r>=TriggerSnippet()<cr>
snor <space> <esc>i<right><c-r>=TriggerSnippet()<cr>




" NERD_commenter ����ע�Ͳ��
" <leader>ca �ڿ�ѡ��ע�ͷ�ʽ֮���л�������C/C++ �Ŀ�ע��/* */����ע��//
" <leader>cc ע�͵�ǰ��
" <leader>cs �ԡ��ԸС��ķ�ʽע��
" <leader>cA �ڵ�ǰ��β���ע�ͷ���������Insertģʽ
" <leader>cu ȡ��ע��
" ��ӿ�ע��
" nmap <leader>f :cm<CR>

nmap <D-H><C-c><C-h> :NewQuickTemplateTab html<cr>
nmap <D-H>:NewQuickTemplateTab html<cr>
