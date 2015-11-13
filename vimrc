" =========================================
" =========================================
" - Author: Vincent
" - Email : Vincent.wangworks@gmail.com
" - GitHun: https://github.com/vincent101/
" =========================================
" =========================================

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
" call vundle#begin('~/some/path/here')

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Syntastic'                                                                                           
Plugin 'winmanager'                                                                                          
Plugin 'minibufexpl.vim'
Plugin 'majutsushi/tagbar'                                                                                         
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'aperezdc/vim-template.git'
Plugin 'The-NERD-tree'                                                                                       
Plugin 'The-NERD-Commenter'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'Auto-Pairs'
Plugin 'bling/vim-airline'
Plugin 'lazywei/vim-matlab'
Plugin 'Vim-R-plugin'
Plugin 'plasticboy/vim-markdown'
Plugin 'instant-markdown.vim'
Plugin 'tomasr/molokai'

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
"
" u [小写]                   --单步复原               [非插入模式]
" U [大写]                   --整行复原               [非插入模式]
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

" =========================================

" ------------- Main Plugin ---------------
" :MiniBufExplorer           --Open MiniBufExplorer
" :Tagbar                    --呼出变量和函数列表     [Tagbar插件]
" :NerdTree                  --呼出nerdtree文件管理器 [NerdTree插件]
" :CtrlP or <c-p>            -- invoke CtrlP in find file mode
" :Tabularize                -- Aligning text by ?
" ------------- a.vim ---------------------
" :A                         --切换同名头文件并独占整个屏幕
" :AS                        --切换同名头文件并垂直分屏，头文件在上
" :AV                        --切换同名头文件并水平分割，头文件在左
" ------------- MiniBufExplorer -----------
" :MiniBufExplorer           -- Open and/or goto Explorer
" :CMiniBufExplorer          -- Close the Explorer if it's open
" :UMiniBufExplorer          -- Update Explorer without naviting
" :TMiniBufExplorer          -- Toggle the Explorer window open and closed
" ------------- Tagbar --------------------
" :Tagbar                    --呼出变量和函数列表     [Tagbar插件]
" ------------- NERDTree ------------------
" :NERDTree                  --启动NERDTree插件
" o [小写]                   --切换当前文件或目录的打开、关闭状态
" u                          --打开上层目录
" p [小写]                   --返回上层目录
" P [大写]                   --返回根目录
" K                          --转到当前目录第一个节点
" J                          --转到当前目录最后的节点
" m                          --显示文件系统菜单       [增、删、移]
" ?                          --弹出帮助菜单
" q                          --退出该插件
" ------------- CtrlP ---------------------
" :CtrlP or <c-p>            -- invoke CtrlP in find file mode
" :CtrlPBuffer or :CtrlPMRU  -- invoke CtrlP in find buffer or find MRU file mode.
" :CtrlPMixed                -- search in Files, Buffers and MRU files at the same time.
" After CtrlP is open
" <F5>                       -- purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
" <c-f> and <c-b>            -- cycle between modes.
" <c-d>                      -- switch to filename only search instead of full path.
" <c-r>                      -- switch to regexp mode.
" <c-j>, <c-k>               -- navigate the result list.
" <c-t> or <c-v>, <c-x>      -- open the selected entry in a new tab or in a new split.
" <c-n>, <c-p>               -- select the next/previous string in the prompt's history.
" <c-y>                      -- create a new file and its parent directories.
" <c-z>                      -- mark/unmark multiple files and <c-o> to open them.
" ------------- Tabular -------------------
" :Tab /?                    -- Aligning text by ?
" ------------- Vim-Markdown --------------
" gx                         -- open the link under the cursor in the same browser as the standard gx command.
" ]]                         -- go to next header.
" [[                         -- go to previous header.
" ][                         -- go to next sibling header if any.
" []                         -- go to previous sibling header if any.
" ]c                         -- go to Current header.
" ]u                         -- go to parent header (Up).
" ------------- Instant-Markdown ----------
" :InstantMarkdownPreview    -- launch the preview window

" =========================================

"colorscheme elflord          " 着色模式：黄色和粉红色为主
colorscheme molokai          " Color Scheme use Molokai
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

" =========================================

" 每行超过80个的字符用下划线标示
au BufRead,BufNewFile *.s,*.c,*.h,*.go,*.cl,*.php,*.tpl,*.js,*.css,*.html,*.sql,*.sh,*.vim 2match Underlined /.\%81v/
" 在INSERT模式下移动光标
imap <c-h> <ESC>I            
imap <c-j> <ESC>jI           
imap <c-k> <ESC>kA           
imap <c-l> <ESC>A            

" WinManager          
let g:AutoOpenWinManager = 0
let g:winManagerWindowLayout = "FileExplorer|TagList,BufExplorer"
let g:winManagerWidth = 30

" MiniBufExplorer     
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

" Tagbar
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
           
" UltiSnips
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-Tab>"
let g:UltiSnipsEditSplit="vertical"

" YoucompleteMe      
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_seed_identifiers_with_syntax=1

" Nerdcommenter
let mapleader=","

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Airline
"let g:airline#extensions#tabline#enabled = 1

" R-vim-plugin
let vimrplugin_applescript = 0
let vimrplugin_screenplugin = 0

" Vim-Markdown
let g:vim_markdown_frontmatter=1

" Instant-Markdown
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0

" Molokai Color Scheme
"set background=dark
let g:molokai_original = 1
let g:rehash256 = 1

" Automatically set/unset paste mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" =========================================

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
" map <c-r> :call RunCode()<CR>
" imap <c-r> <ESC>:call RunCode()<CR>
" vmap <c-r> <ESC>:call RunCode()<CR>

