" ---- Author: Vincent

" Encoding related
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1

" =========================================
"            Bundle Begin
" =========================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'Syntastic'                                                                                           
Plugin 'winmanager'                                                                                          
Plugin 'minibufexpl.vim'                                                                                     
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'taglist.vim'                                                                                         
Plugin 'The-NERD-tree'                                                                                       
Plugin 'The-NERD-Commenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'git://github.com/aperezdc/vim-template.git'
Plugin 'Vim-R-plugin'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" =========================================
"              Bundle End
" =========================================

" Ctrl + H                   --光标移当前行行首       [插入模式]
" Ctrl + J                   --光标移下一行行首       [插入模式]
" Ctrl + K                   --光标移上一行行尾       [插入模式]
" Ctrl + L                   --光标移当前行行尾       [插入模式]
" Ctrl + C                   --单源文件编译           [已配置 C Go]
" Ctrl + R                   --单源文件运行           [已配置 C Go Bash PHP]
" Ctrl + ]                   --转到函数定义 " Ctrl + T    --返回调用函数
" Ctrl + E                   --一步加载语法模板和作者、时间信息
" ESC  + H                   --Normal模式下开启Devhelp查询功能
"
" <C-P>                      --单词补全
" <C-X><C-L>                 --整行补全
" Tab键                      --插入模式下语法结构补全 [snipMate插件]
" Shift + Insert             --向Vim中粘贴从别处复制的内容
"
" u [小写]                   --单步复原               [非插入模式]
" U [大写]                   --整行复原               [非插入模式]
"
" jj                         --保存文件并留在插入模式 [插入模式]
" kk                         --返回Normal模式         [插入模式]
" nt                         --打开NERDTree           [非插入模式]
" tl                         --打开TagList            [非插入模式]
"
" zc                         --折叠当前行
" zo                         --打开当前折叠
" zi                         --打开或关闭当前折叠
" zM                         --关闭所有折叠
" zR                         --打开所有折叠
"
" :se ft=cpp                 --手动选择语法高亮       [:set filetype=cpp 或
" :set syntax=cpp 亦可]
"
" :%!xxd                     --转储二进制文件，以十六进制形式显示
" :%!xxd -r                  --还原二进制文件

"  ---------- 主要插件详细用法说明 ---------------------
"
"  :Tlist                     --呼出变量和函数列表     [TagList插件]
"  :NerdTree                  --呼出nerdtree文件管理器 [NerdTree插件]
"  :AuthorInfoDetect          --添加作者、时间等信息   [NERD_commenter && authorinfo插件]
"
"  ---------- snipMate [全局可用的补全关键字] ----------
" 
"  cprt                       --插入版权信息           [助记：copyright]
"  date                       --插入当前时间
"  fiok                       --插入文件的最后修改时间 [助记：file ok]
"  desc                       --插入文件描述           [助记：description]
"  更多关键字可自行查看vimfiles/snippets下的各个文件
"  [Linux下为~/.vim/snippets]
"
"  ---------- a.vim [自动切换C/C++同名头文件] ----------
" 
"  :A                         --切换同名头文件并独占整个屏幕
"  :AS                        --切换同名头文件并垂直分屏，头文件在上
"  :AV                        --切换同名头文件并水平分割，头文件在左
"
"  ---------- NERDTree [智能文件浏览器] ----------------
"
"  :NERDTree                  --启动NERDTree插件
"  o [小写]                   --切换当前文件或目录的打开、关闭状态
"  u                          --打开上层目录
"  p [小写]                   --返回上层目录
"  P [大写]                   --返回根目录
"  K                          --转到当前目录第一个节点
"  J                          --转到当前目录最后的节点
"  m                          --显示文件系统菜单       [增、删、移]
"  ?                          --弹出帮助菜单
"  q                          --退出该插件


colorscheme elflord          " 着色模式：黄色和粉红色为主
set guifont=Monaco:h11       " 字体 && 字号
set backspace=2              " 设置退格键可用
set autoindent               " 自动对齐
set ai!                      " 设置自动缩进
set smartindent              " 智能自动缩进
set shiftwidth=4             " 换行时行间交错使用4空格
set cindent shiftwidth=4     " 自动缩进4空格
set nu!                      " 显示行号
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 开启实时搜索功能
set hlsearch                 " 开启高亮显示结果
set nowrapscan               " 搜索到文件两端时不重新搜索
set nocompatible             " 关闭兼容模式
set vb t_vb=                 " 关闭提示音
set hidden                   " 允许在有未保存的修改时切换缓冲区
set autochdir                " 设定文件浏览器目录为当前目录
set foldmethod=indent        " 设置代码折叠类型       [manual 手工定义折叠，indent 更多的缩进表示更高级别的折叠，expr 用表达式来定义折叠，syntax 用语法高亮来定义折叠，diff 用语法高亮来定义折叠，marker 对文中的标志折叠]
set foldlevel=100            " 禁止自动折叠
set laststatus=2             " 开启状态栏信息
set cmdheight=2              " 命令行的高度，默认为1，这里设为2
set showmatch                " 显示括号配对情况
set cursorline               " 突出显示当前行
set nowrap                   " 设置不自动换行
set writebackup              " 设置无备份文件
set nobackup
set list                     " 显示Tab符，使用一高亮竖线代替
set listchars=tab:\|\ ,
set tabstop=4                " 设置Tab键的宽度        [等同的空格个数]
set expandtab                " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]

syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全

" 每行超过80个的字符用下划线标示
au BufRead,BufNewFile *.s,*.c,*.h,*.go,*.cl,*.php,*.tpl,*.js,*.css,*.html,*.sql,*.sh,*.vim 2match Underlined /.\%81v/

"  ———引号 && 括号自动匹配 ======= "

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
" :inoremap ` ``<ESC>i
" :inoremap < <><ESC>i
function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
       return "\<Right>"
    else
       return a:char
    endif
endf

" ESC + H             Normal模式下开启Devhelp查询功能
function! DevHelpCurrentWord()
        let word = expand("<cword>")
        exe "!devhelp -s " . word . " &"
endfunction
nmap <esc>h :call DevHelpCurrentWord()<CR>

" winManager          窗口管理器
let g:AutoOpenWinManager = 0
let g:winManagerWindowLayout = "FileExplorer|TagList,BufExplorer"
let g:winManagerWidth = 30

" MiniBufExplorer     多个文件切换 可使用鼠标双击相应文件名进行切换
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

" :Tlist              调用TagList
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'   " 指定Exuberantctags程序的位置
let Tlist_Auto_Open=0                        " 启动VIM自动打开taglist窗口
let Tlist_Show_One_File=1                    " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window=1                 " 在右侧窗口中显示
let Tlist_File_Fold_Auto_Close=1             " 自动折叠

" UltiSnips
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-Tab>"
let g:UltiSnipsEditSplit="vertical"

" YoucompleteMe       自动补全
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:ycm_confirm_extra_conf=0 
" let g:ycm_collect_identifiers_from_tag_files = 1
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'gitcommit' : 1,
      \}

" nerdcommenter
let mapleader=","

" R-vim-plugin
let vimrplugin_applescript = 0
let vimrplugin_screenplugin = 0

" colours in tmux
if exists('$TMUX')
  set term=screen-256color
endif

" :AuthorInfoDetect   自动添加作者、时间等信息，本质是NERD_commenter && authorinfo的结合
let g:vimrc_author='Vincent'
let g:vimrc_email='vincent.wangworks@gmail.com'
let g:vimrc_homepage=''

" Ctrl + H            将光标移到当前行的行首
imap <c-h> <ESC>I

" Ctrl + J            将光标移到下一行的行首
imap <c-j> <ESC>jI

" Ctrl + K            将光标移到上一行的末尾
imap <c-k> <ESC>kA

" Ctrl + L            将光标移到当前行的行尾
imap <c-l> <ESC>A

" Ctrl + E            一步加载语法模板和作者、时间信息
map <c-e> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi
imap <c-e> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi
vmap <c-e> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi

" jj                  保存当前文件并留在插入模式      [插入模式]
imap jj <ESC>:w<CR>li

" kk                  返回Normal模式，不执行保存      [插入模式]
imap kk <ESC>l

" nt                  打开NERDTree窗口，在左侧栏显示  [非插入模式]
map nt :NERDTree<CR>

" tl                  打开Taglist窗口，在右侧栏显示   [非插入模式]
map tl :Tlist<CR><c-l>


" ======= 编译 && 运行 ======= "

" 编译源文件
func! CompileCode()
        exec "w"
        if &filetype == "c"
            exec "!gcc -Wall -std=c99 %<.c -o %<"
        elseif &filetype == "cpp"
            exec "!g++ %<.cpp -o %<"
        elseif &filetype == "go"
            exec "!gccgo -Wall %<.go -o %<"
        elseif &filetype == "sh"
            exec "!bash %<.sh"
        elseif &filetype == "php"
            exec "!php %<.php"
        elseif &filetype == "make"
            exec "!colormake"
        endif
endfunc

" 运行可执行文件
func! RunCode()
        exec "w"
        if &filetype == "c" || &filetype == "go" || &filetype == "cpp"
            exec "! ./%<"
        elseif &filetype == "sh"
            exec "!bash %<.sh"
        elseif &filetype == "php"
            exec "!php %<.php"
        elseif &filetype == "make"
            exec "! ./app"
        endif
endfunc

" Ctrl + C 一键保存、编译
map <c-c> :call CompileCode()<CR>
imap <c-c> <ESC>:call CompileCode()<CR>
vmap <c-c> <ESC>:call CompileCode()<CR>

" Ctrl + R 一键保存、运行
"" map <c-r> :call RunCode()<CR>
"" imap <c-r> <ESC>:call RunCode()<CR>
"" vmap <c-r> <ESC>:call RunCode()<CR>


" ======= VimWiki ======= "
" 设置编码
let g:vimwiki_w32_dir_enc = 'utf-8'

" 使用鼠标映射
let g:vimwiki_use_mouse = 1

" 不要将驼峰式词组作为 Wiki 词条
let g:vimwiki_camel_case = 0

" 声明可以在wiki里面使用的HTML标签
let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h2,h4,h5,h6,pre,script,style'

"let g:vimwiki_list = [{
\ 'path': '~/.vim/mysite/wiki',
\ 'path_html': '~/.vim/mysite/html/',
\ 'html_header': '~/.vim/mysite/template/header.html',
\ 'html_footer': '~/.vim/mysite/template/footer.html',
\ 'auto_export': 1,
\ 'nested_syntaxes': {'Clang': 'c', 'Go': 'go', 'Lisp': 'lisp', 'PHP': 'php', 'JS': 'javascript', 'CSS': 'css', 'HTML': 'html', 'XML': 'xml', 'SQL': 'sql', 'Bash': 'sh', 'Vim': 'vim', 'Make': 'make', 'CMake': 'cmake'},}]


