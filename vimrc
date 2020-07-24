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

"Plugin 'gmarik/Vundle.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Syntastic'                                                                                           
Plugin 'winmanager'                                                                                          
Plugin 'taglist.vim'
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
Plugin 'MatlabFilesEdition' 
Plugin 'jcfaria/Vim-R-plugin'
Plugin 'plasticboy/vim-markdown'
Plugin 'jpalardy/vim-slime'
"Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :BundleList       - lists configured plugins
" :BundleInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :BundleSearch foo - searches for foo; append `!` to refresh local cache
" :BundleClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" =========================================
"              Bundle End
" =========================================

" ------------- Basic Usage ---------------
" ^ or 0                     -- 行首
" $                          -- 行尾
" gg                         -- 全文首部
" G                          -- 全文尾部
" Ctrl + f                   -- 往前滚动整屏
" Ctrl + d                   -- 往前滚动半屏
" Ctrl + b                   -- 往后滚动整屏
" Ctrl + u                   -- 往后滚动半屏
"
" u [小写]                   -- 单步复原               [非插入模式]
" U [大写]                   -- 整行复原               [非插入模式]
"
" zc                         -- 折叠当前行
" zo                         -- 打开当前折叠
" zi                         -- 打开或关闭当前折叠
" zM                         -- 关闭所有折叠
" zR                         -- 打开所有折叠
"
" :tabnew                    -- 新建Tab
" gt                         -- 切换Tab
" :tabc                      -- 关闭当前Tab
"
" Ctrl + C                   -- 单源文件编译           [已配置 c,cpp,go]
" Ctrl + X                   -- 单源文件运行           [已配置 c,cpp,,Go,Bash,PHP,python]
"
" :%!xxd                     -- 转储二进制文件，以十六进制形式显示
" :%!xxd -r                  -- 还原二进制文件

" =========================================

" ------------- Main Plugin ---------------
" :Tagbar                    -- 呼出变量和函数列表     [Tagbar插件]
" :Tlist                     -- 呼出变量和函数列表     [TagList插件]
" :NerdTree                  -- 呼出nerdtree文件管理器 [NerdTree插件]
" :CtrlP or <c-p>            -- invoke CtrlP in find file mode
" :Tabularize                -- Aligning text by ?
" ------------ WinManager ------------------
" :wm                        -- Open NERDTree and TagList on the left side
" ------------- Taglist --------------------
" :Tlist                     -- Open taglist
" ------------- Tagbar --------------------
" :Tagbar                    -- 呼出变量和函数列表
" ------------- NERD-Tree -----------------
" :NERDTree                  -- 启动NERDTree插件
" o [小写]                   -- 切换当前文件或目录的打开、关闭状态
" u                          -- 打开上层目录
" p [小写]                   -- 返回上层目录
" P [大写]                   -- 返回根目录
" K                          -- 转到当前目录第一个节点
" J                          -- 转到当前目录最后的节点
" m                          -- 显示文件系统菜单       [增、删、移]
" ?                          -- 弹出帮助菜单
" q                          -- 退出该插件
" ------------- NERD-Comment --------------
" ,cc                        -- Comment line
" ,cu                        -- UnComment line
" :NERDTree                  -- 启动NERDTree插件
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
" Enter or <c-t>             -- open the selected entry in a new tab or buffer
" <c-v>, <c-x>               -- open the selected entry in a new split.
" <c-n>, <c-p>               -- select the next/previous string in the prompt's history.
" <c-y>                      -- create a new file and its parent directories.
" <c-z>                      -- mark/unmark multiple files and <c-o> to open them.
" ------------- Tabular -------------------
" :Tab /?                    -- Aligning text by ?
" ------------- Vim-R-Plugin --------------
"  \rf                       -- start R
"  \rq                       -- quit R
"  \l                        -- send one line to R
"  \aa                       -- send file
"  \ss                       -- send selection
"  \ff                       -- send function
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
"colorscheme molokai          " Color Scheme use Molokai
"set guifont=Monaco:h11       " 字体 && 字号
set backspace=2              " 设置退格键可用
set autoindent               " 自动对齐
set ai!                      " 设置自动缩进
set smartindent              " 智能自动缩进
set shiftwidth=4             " 换行时行间交错使用4空格
set cindent shiftwidth=4     " 自动缩进4空格
set nu!                      " 显示行号
set mouse=vich               " 启用鼠标 no normal
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

" WinManager          
let g:AutoOpenWinManager = 0
let g:winManagerWidth = 30
let g:winManagerWindowLayout="NERDTree|TagList,BufExplorer"
nmap wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
"Add NERDTree and TagList to Winmanager
let g:NERDTree_title="[NERDTree]" 
"let g:NERDTreeChDirMode = 2  # change mode if Ctrlp cwd error
function! NERDTree_Start()
    exec 'NERDTree'
endfunction
function! NERDTree_IsValid()
    return 1
endfunction
"end

" Tagbar
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'

" TagList
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Use_Right_Window=1
           
" UltiSnips
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-Tab>"
let g:UltiSnipsEditSplit="vertical"

" YoucompleteMe      
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_seed_identifiers_with_syntax=1

" NerdCommenter
let mapleader=","

" vim-template
let g:username = 'Vincent'
let g:email = 'vincent.wangworks@gmail.com'

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" how to open the file, ENTER open file in Tab
let g:ctrlp_prompt_mappings = {
            \'AcceptSelection("e")': ['<c-t>'], 
            \'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
            \'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
            \'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],}

" Airline
let g:airline#extensions#tabline#enabled = 1

" R-vim-plugin
let vimrplugin_applescript = 0
let vimrplugin_vimcom_wait = 10000
"let vimrplugin_screenplugin = 0

" vim-slime, 从tmux:pane:1的vim，发送内容至，pane:2的ipython或其它,
" send by <F8>, setup by <F9>>
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}
let g:slime_python_ipython = 1
let g:slime_dont_ask_default = 1
xmap <F8> <Plug>SlimeRegionSend
nmap <F8> <Plug>SlimeParagraphSend
nmap <F9> <Plug>SlimeConfig

" Vim-Markdown
let g:vim_markdown_frontmatter=1

" Instant-Markdown
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0

" Molokai Color Scheme
" vim的背景和变得和终端一样，那么改monokai.vim配色，把Normal的配色改成 ctermbg=NONE
"let g:molokai_original = 1
"let g:rehash256 = 1

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
        elseif &filetype == "python"
            exec "!python %<.py"
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

" Ctrl + X 一键保存、运行
map <c-x> :call RunCode()<CR>
imap <c-x> <ESC>:call RunCode()<CR>
vmap <c-x> <ESC>:call RunCode()<CR>

