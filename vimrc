" ================================================
" Created : Wed 06 Aug 2014 03:23:51 PM CST
" Modified : Sun 28 Sep 2014 09:10:19 PM CST
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
set guifont=Monaco:h14
" jellybeans,solarized
colorscheme jellybeans

set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1
language messages zh_CN.utf-8
set clipboard=unnamed

" 开启状态栏信息
set laststatus=2

set nu

syntax enable

syntax on

" 查找book时，当输入/b时会自动找到
set incsearch

" 开启高亮显示结果
set hlsearch

set backspace=2 " 设置退格键可用
set hidden      " 允许在有未保存修改时切换缓冲区

" == 缩进 ==
" no tab used,all 'tab' use 4 spaces
set tabstop=4          " 设置Tab键的宽度
set shiftwidth=4
set expandtab          " 使用空格代替Tab
set cindent


" == 折叠 ==
set foldmethod=syntax  " 选择代码折叠类型
set foldlevel=99       " 禁止自动折叠
" set foldlevelstart=1

" 设置无文件备份和交换文件
set nobackup
set noswapfile
set hidden                   " 允许在有未保存的修改时切换缓冲区


" 不可见字符 尾部空格用点表示，其余空格不显示
set listchars=trail:.,tab:>-,eol:$
set nolist
nnoremap ,i :set list!<CR>

inoremap jj <ESC>

" 方便在窗口之间进行切换
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

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
let g:vimwiki_w32_dir_enc = 'utf-8'
let g:vimwiki_use_mouse = 1
let g:vimwiki_camel_case = 0
let g:vimwiki_valid_html_tags='font,b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,pre'

let wiki_main = {}
let wiki_main.path = '~/vimwiki/wiki/'
let wiki_main.path_html = '~/vimwiki/html/'
let wiki_main.template_path = '~/vimwiki/template/'
let wiki_main.template_default = 'tpl'
let wiki_main.template_ext = '.html'
let wiki_main.auto_export = 1
" vimwiki在vim中代码高亮显示 
" 'js':'javascript' js是别名,用在 calss='brush: js' , javascript是vim的语法
" 着色文件 配合SyntaxHighlighter
" http://alexgorbatchev.com/SyntaxHighlighter/manual/brushes/ 非常完美，既能在
" vim中代码高亮，也能再html中代码高亮
let wiki_main.nested_syntaxes = {'sql': 'sql', 'html': 'html', 'css': 'css', 'js': 'javascript', 'vim' : 'vim', 'py':'python'}

let g:vimwiki_list = [wiki_main]


" NERD_Commenter
let NERDSpaceDelims = 1

" PHPDOC
map <F6> :call PhpDoc()<cr>

let g:python_version_2 = 1

" 使用~/.vim/syntas/php.vim,关闭分号错误显示
let php_show_semicolon_error = 0

autocmd BufRead,BufNewFile *.html set fdm=indent 

" 使HTML可以正确缩进
" http://askubuntu.com/questions/392573/how-do-i-get-vim-to-indent-all-html-tags
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc" 
let g:html_indent_style1 = "inc" 
