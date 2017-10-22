"VIM基本设置
set nocompatible                                                                "关闭兼容VI，使用VIM扩展功能, 放在第一条
set fileencodings=ucs-bom,utf-8,gb2312,gbk,gb18030,big5,euc-jp,euc-kr,latin1    "编码识别顺序
set ambiwidth=double                                                            "防止特殊符号无法正常显示(输几个☆★♢□■试试看)
set smartindent                                                                 "自动缩进{}[]()等字符
set smarttab                                                                    "快速删除多个空格
set autoindent                                                                  "与上一行保持相同缩进
set expandtab                                                                   "输入tab时自动转换为空格
set tabstop=4                                                                   "设定文件中tab的宽度
set softtabstop=4                                                               "设定编辑模式下tab的视在宽度
set shiftwidth=4                                                                "表示缩进的宽度
set backspace=indent,eol,start                                                  "<BS>可删除：自动缩进，行开头合并两行，删除此次插入之前的输入
set number                                                                      "显示行号
set hlsearch                                                                    "高亮搜索关键字
set ruler                                                                       "状态栏显示行列号
set showmode                                                                    "状态栏显示当前操作模式
set wrap                                                                        "行文本过长不多行显示
set encoding=utf8                                                               "vim内部编码类型
set showmatch                                                                   "输入[})时显示匹配的]{(
set matchtime=2                                                                 "showmatch显示匹配情况的时间
set matchpairs+=<:>                                                             "设置showmatch匹配的类型
set laststatus=2                                                                "总是显示状态栏
set cursorline                                                                  "高亮显示光标所在行
set helplang=cn                                                                 "使用中文帮助文档
set t_Co=256                                                                    "开启256色

colorscheme molokai

syntax on                                                                       "颜色区分关键字

language messages zh_CN.utf-8                                                   "设置消息所用的语言

"运行配置
autocmd FileType sh nnoremap <buffer> <F5> :w<CR>:!/bin/bash %<CR>
autocmd FileType python nnoremap <buffer> <F5> :w<CR>:!/usr/bin/python %<CR>
autocmd FileType php nnoremap <buffer> <F5> :w<CR>:!/usr/bin/php %<CR>
autocmd FileType c nnoremap <buffer> <F5> :w<CR>:!/usr/bin/gcc % -o %:r.out && ./%:r.out<CR>
autocmd FileType cpp nnoremap <buffer> <F5> :w<CR>:!/usr/bin/g++ % -o %:r.out && ./%:r.out<CR>
autocmd FileType html nnoremap <buffer> <F5> :w<CR>:!firefox %<CR>
autocmd FileType markdown nnoremap <buffer> <F5> :w<CR>:!hexo clean && hexo generate && firefox http://localhost:4000 && hexo server<CR>

"-------------------------------------------------------------------vundle配置开始
filetype off "必须
"设置包括vundle和初始化相关的runtime path
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'LargeFile'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'iamcco/markdown-preview.vim'

"你的所有插件需要在下面这行之前
call vundle#end()   "必须

filetype plugin indent on "必须 加载vim自带和插件相应的语法和文件类型相关脚本
"--------------------------------------------------------------------vundle配置结束

"scrooloose/nerdtree 目录树
map <F7> :NERDTreeToggle<CR>
imap <F7> <ESC>:NERDTreeToggle<CR>

"majutsushi/tagbar
let g:tagbar_autofocus = 1
nmap <F8> :TagbarToggle<CR>
imap <F8> <ESC>:TagbarToggle<CR>

"Valloric/YouCompleteMe 代码补全
autocmd InsertLeave,CursorMovedI * if pumvisible() == 0|pclose|endif                            "自动关闭弹出窗口
nnoremap <leader>gi :YcmCompleter GoToInclude<CR>
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_error_symbol = 'xx'
let g:ycm_warning_symbol = '!!'
let g:ycm_complete_in_strings = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_tags_files = 1 
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_semantic_triggers =  {
\       'c' : ['->', '.'],
\       'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s', 're!\[.*\]\s'],
\       'ocaml' : ['.', '#'],
\       'cpp,objcpp' : ['->', '.', '::'],
\       'perl' : ['->'],
\       'php' : ['->', '::'],
\       'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
\       'html,htm' : ['.'],
\       'ruby' : ['.', '::'],
\       'lua' : ['.', ':'],
\       'erlang' : [':'],
\   }

"iamcco/markdown-preview.vim
let g:mkdp_path_to_chrome = "firefox"
