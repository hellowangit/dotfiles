" ================================================
" Created : Wed 06 Aug 2014 03:23:51 PM CST
" Modified : Thu 21 Aug 2014 03:42:17 PM CST
" vim:tw=80:fo+=m
" ================================================


" 常用快捷键 
" 注释 = ,cc ,cb
" fdm=syntax za toggle fold
" search ,vv

execute pathogen#infect()
call pathogen#helptags()

set nocompatible

let mapleader=','
set guifont=Monaco:h13 
colorscheme jellybeans

set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1
language messages zh_CN.utf-8
set clipboard=unnamed        " 与win共用剪贴板

" 自动缩进4空格
set cindent shiftwidth=4     
" 开启状态栏信息
set laststatus=2

" 打开语法高亮
syntax enable

" 文件类型检测
syntax on

" 查找book时，当输入/b时会自动找到
set incsearch

" 开启高亮显示结果
set hlsearch

set backspace=2              " 设置退格键可用
" 允许在有未保存修改时切换缓冲区
set hidden

" 设置tab键的宽度
set tabstop=4

"自动缩进宽度 
set shiftwidth=4

" 使用空格代替tab
set expandtab
    
" 设置无文件备份和交换文件
set nobackup
set noswapfile
set hidden                   " 允许在有未保存的修改时切换缓冲区

" 选择代码折叠类型
set foldmethod=indent

" 禁止自动折叠
set foldlevel=99

" 不可见字符 尾部空格用点表示，其余空格不显示
set listchars=trail:.,tab:>-,eol:$
set nolist
nnoremap ,i :set list!<CR>

inoremap jj <ESC>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
" 移到行尾和行首是为了插入吧，用A和I就行了
" nnoremap L $
" vnoremap L $
" nnoremap H ^
" vnoremap H ^

filetype on
filetype plugin on
filetype indent on

" Omni Completeion
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd filetype php setlocal dictionary+=$VIM/vimfiles/dict/php.dict
autocmd filetype python setlocal dictionary+=$VIM/vimfiles/dict/python.dict
set completeopt=longest,menuone
" set completeopt=preview,menuone

"设置tag为当前工作目录下的tags
set tags=tags

" NERDTree
nnoremap tr :NERDTreeToggle<CR>
let NERDTreeHijackNetrw=1
let NERDTreeMouseMode=1
let NERDTreeQuitOnOpen=0

nnoremap tl :TagbarToggle<CR>
let g:tagbar_ctags_bin = "/usr/local/bin/ctags"

" VimWiki
let g:vimwiki_menu = ''
let g:vimwiki_hl_cb_checked = 1
" 设置编码
let g:vimwiki_w32_dir_enc = 'utf-8'
" 使用鼠标映射
let g:vimwiki_use_mouse = 1
" 不要将驼峰式词组作为 Wiki 词条
let g:vimwiki_camel_case = 0
" 声明可以在wiki里面使用的HTML标签
let g:vimwiki_valid_html_tags='font,b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h4,h5,h6,pre'
let g:vimwiki_list = [{
\ 'path': '~/Documents/notes/wiki/',
\ 'path_html': '~/Documents/notes/html/',
\ 'template_path': '~/Documents/notes/template/',
\ 'template_default': 'bootstrap',
\ 'template_ext': '.html',
\ 'auto_export': 1,
\ 'nested_syntaxes': {'C': 'c', 'C++': 'cpp', 'Haskell': 'haskell', 'Ruby': 'ruby', 'SQL': 'sql', 'HTML': 'html', 'CSS': 'css', 'JavaScript': 'javascript', 'Vim': 'vim', 'Make': 'make'},}]

" NERD_Commenter
let NERDSpaceDelims = 1

" PHPDOC
map <F6> :call PhpDoc()<cr>

let g:python_version_2 = 1

" 使用~/.vim/syntas/php.vim,关闭分号错误显示
let php_show_semicolon_error = 0

" EasyGrep
" very easy at search and repalce
let g:EasyGrepMode = 1
let g:EasyGrepCommand = 1
let g:EasyGrepWindow = 1
