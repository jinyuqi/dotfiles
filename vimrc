"========================================  
" Author: Jin Yuqi  
" Email: 179386223@qq.com  
"========================================  

let mapleader = ','  
let g:mapleader = ','  

"==========================================
" General Settings
"==========================================

" 开启语法高亮  
syntax enable  

" 开启语法高亮
syntax on  

" 设置字体,Linux要用Monaco\ 13,OS X要用Monaco:h13
set guifont=Monaco\ 11

" 设置历史记录条数  
set history=2000  

" 检测文件类型  
filetype on  

" 针对不同的文件，采用不同的缩进方式  
filetype indent on  

" 允许插件  
filetype plugin on  

" 启动自动补全
filetype plugin indent on

" 文件修改之后自动读入
set autoread

" 启动后不显示提示
"set shortmess=atI

" 备份,到另一个位置. 防止误删, 目前是取消备份
"set backup
"set backupext=.bak
"set backupdir=/tmp/vimbk/

" 设置取消备份，禁止临时文件生成  
set nobackup  
set noswapfile  

" create undo file
set undolevels=1000 " how many undos
set undoreload=10000 " number of lines to save for undo
if v:version >= 730
    set undofile     " keep a persistent backup file
    set undodir=/tmp/vimundo/
endif

"set wildignore=*.swp,*.bak,*.pyc,*.class,.svn

" 显示当前横竖线  
"set cursorline  
"set cursorcolumn  

" 设置退出Vim之后内容显示在终端屏幕，可以用于查看和复制
" 好处:误删什么，如果以前屏幕打开可以用来找回
" set t_ti= t_te=

" 设置在Vim中可以使用鼠标，防止终端无法拷贝  
set mouse=a  

" 修复ctrl+m多光标操作选择的bug,但是改变了ctrl+v进行字符选中将包含光标下的字符
" set selection=inclusive
" set selectmode=mouse,key

" no errors sound
set title " change ther terminal's title
set novisualbell " don't beep
set noerrorbells " don't beep
set t_vb=
autocmd! GUIEnter * set vb t_vb=
set tm=500

" remember info about open buffers on close
set viminfo^=%

" for regular expression turn magic on
set magic

" configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" FuzzyFinder and ctrlp couldn't auto change dir you must manual add cd in
" command mode, so add this command to auto change current dir for these
" plugins
" set autochdir

"==========================================
" Display Settings
"==========================================
"
" 显示当前行号和列号
set ruler

" display incomplete commands
set showcmd

" 左下角显示当前Vim模式
set showmode

" 光标移动至少保留的行数
"set scrolloff=7

" 命令行（在状态行下）的高度，默认为1，这里是2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P

" 总是显示状态栏(Powerline需要2行)  
set laststatus=2  

" 显示行号  
set number  

" 指定不折行
set nowrap  

" 设置代码匹配,包括括号匹配情况  
set showmatch  

" how many tenths of a second to blink when matching brackets
" setmatchtime=2

" 开启及时搜索(is)  
set incsearch  

" 设置搜索高亮(hlsearch)  
set hls  

map <silent> <Space> :nohls<CR>

" reselect visual block after indent (github.com/hluk/FakeVim)
vnoremap < <gv
vnoremap > >gv

" 设置搜索时忽略大小写  
set ignorecase  

" 当搜索的时候尝试smart  
set smartcase  

" 设置代码折叠
"set foldenable
" 折叠方法
" manual 手工折叠
" indent 缩进折叠
" expr 表达式折叠
" syntax 语法折叠
" diff 对没有更改的文件折叠
" marker 标记折叠
"set foldmethod=indent
"set foldlevel=99

" 设置C/C++方式自动对齐  
set autoindent  
set cindent  
set smartindent  

" 设置tab宽度  
set tabstop=4  

" 设置自动对齐空格数  
set shiftwidth=4  

" 按退格键时可以一次删除4个空格
"set softtabstop=4

" 编辑的时候将所有的tab设置为空格(expandtab)  
set et  

" 使用Backspace直接删除tab  
set smarttab  

" 不在单词中间折行  
set lbr  

" Shortcuts for moving between tabs.
" Alt-j to move to the tab to the left  
noremap <A-k> gT
" Alt-k to move to the tab to the right  
noremap <A-j> gt

" 缩进时取整use multiple of shiftwidth when indenting with '<' and '>'
" set shiftround

" a buffer becomes hidden when it is abandoned
" set hidden
" set wildmode=list:longest
" set ttyfast

" 00x增减数字时使用十进制
"set nrformats=
"
"==========================================
" FileEncode Settings
"==========================================

" 设置编码方式  
set encoding=utf-8  

" 设置打开文件的编码格式  
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1  

set helplang=cn 

" 只对终端影响(默认)
set termencoding=utf-8

" use UNIX as the standard file type
set ffs=unix,dos,mac

" 如遇Unicode值大于255的文本，不必等到空格再折行。
set formatoptions+=m

" 合并两行中文时，不在中间加空格：
set formatoptions+=B

"==========================================
" Other Settings
"==========================================

"autocmd! bufwritepost _vimrc source %    " .vimrc修改之后自动加载(Windows)
"autocmd! bufwritepost .vimrc source %    " .vimrc修改之后自动加载(Linux)

" 自动补全配置让Vim补全菜单行为跟IDE一致
set completeopt=longest,menu

" 增强模式中的命令行自动完成操作
set wildmenu

" ignore compiled files
" set wildignore=*.o,*~,*.pyc,*.class

"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

" if this not work ,make sure .viminfo is writable for you
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"==========================================
" HotKey Settings
"==========================================
"
" 去掉搜索高亮
"noremap <silent><leader>/ :nohls<CR>
map <leader>/ :nohls<CR>

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" 将Vim的目录快速回到当前编辑文件所在的目录,方便ctrlp在当前目录下查找文件
nmap <silent> <leader>cd :cd %:p:h<CR>

" 手动刷新tags(含cscope)
nmap tg :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q *<CR>:set tags+=./tags<CR>:!cscope -Rbq<CR>:cs add ./cscope.out .<CR>

" 切换buffer
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>

" cscope设置
if has("cscope")
    set csprg=/usr/bin/cscope   " 制定cscope命令
    set csto=0                  " ctags查找顺序，0表示先cscope数据库再标签文件，1表示先标签文件爱
    set cst                     " 同时搜索tag文件和cscope数据库
    set cscopequickfix=s-,c-,d-,i-,t-,e-  "使用QucikFix窗口来显示cscope查找结果
    set nocsverb
    if filereadable("cscope.out")  "如果当前目录下有cscope.out则加载进Vim
        cs add cscope.out
    elseif $CSCOPE_DB != ""       "否则只要环境变量不为空就添加制定的数据库到Vim
        cs add $CSCOPE_DB
    endif
    set csverb
endif
"map <F4>:!cscope -Rbq<CR>:cs add ./cscope.out .<CR><CR><CR> :cs reset<CR>
" 查找符号
nmap <leader>css :cs find s <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
" 查找定义
nmap <leader>csg :cs find g <C-R>=expand("<cword>")<CR><CR>
" 查找被这个函数调用的函数
nmap <leader>csd :cs find d <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
" 查找调用这个函数的函数
nmap <leader>csc :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR><CR>
" 查找这个字符串
nmap <leader>cst :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR><CR>
" 查找这个egrep匹配模式
nmap <leader>cse :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR><CR>
" 查找这个文件
nmap <leader>csf :cs find f <C-R>=expand("<cfile>")<CR><CR>
" 查找include这个文件的文件
nmap <leader>csi :cs find i <C-R>=expand("<cfile>")<CR><CR> :copen<CR><CR>

" 设定是否使用QuickFix来显示结果
set cscopequickfix=s-,c-,d-,i-,t-,e-

" QuickFix open and close
nnoremap <F11> :copen<CR>
nnoremap <F12> :cclose<CR>

" QucikFix next and prev
nnoremap <F9> :cn<CR>
nnoremap <F10> :cp<CR>

"==========================================
" Theme Settings
"==========================================

" Set extra options when running in GUI mode
"if has("gui_running")
"    set guifont=Monaco\ 12
"    set guioptions-=T
"    set guioptions+=e
"    set guioptions-=r
"    set guioptions-=L
"    set guitablabel=%M\ %t
"    set showtabline=1 
"    set linespace=2 
"    set noimd   
"    set t_Co=256
"endif

" 设置主题  
set background=dark
colorscheme molokai  
"colorscheme solarized
set t_Co=256

" 添加水平滚动条  
"set guioptions+=b  

" 取消菜单栏和导航栏  
set guioptions-=m  
set guioptions-=T  

" 去除左右两边滚动条
set go-=r
set go-=L

" 设置水平行数和竖直列数  
set lines=35  
set columns=99  

"==========================================
" Vundle Settings
"==========================================
 " 关闭vi的一致性模式，避免以前版本的一些Bug和局限  
set nocompatible  

filetype off " Vundle必须要求使用filetype off，如果不设置该选项，UltiSnips无法使用  

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" My plugins here:  
" original repos on GitHub  
Plugin 'tpope/vim-fugitive'  
Plugin 'Lokaltog/vim-easymotion'  

" 自动补全单引号，双引号等
"Plugin 'Raimondi/delimitMate'
Plugin 'jiangmiao/auto-pairs'

" 快速加入修改环绕字符
Plugin 'tpope/vim-surround'
" for repeat -> enhance surround.vim, . to repeat command
Plugin 'tpope/vim-repeat'

" 多光标编辑 (该插件的ctrl-p可以正常使用，当到达最后一个的时候ctrlp才会起作用)
Plugin 'terryma/vim-multiple-cursors'

" 对括号等进行光标的控制辅助  
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}  
"Plugin 'tpope/vim-rails.git'  
Plugin 'Valloric/ListToggle'  
Plugin 'L9'

" 画图工具，上下左右画直线，PgUp/PgDn用来画斜线等  
Plugin 'DrawIt'

" %支持匹配tag进行跳转
Plugin 'tmhedberg/matchit'

" [a, ]a for arguments, [q, q] for quickfix, [l, l] for location, [t, t] for
" tag lists (Practical Vim)
"Plugin 'tpope/vim-unimpaired'

" align tool -- visual + <leader>t=
Plugin 'vim-scripts/Align'

"Plugin 'vim-scripts/TagHighlight'

" Viki -- Vim Wiki
Plugin 'tomtom/tlib_vim'
Plugin 'tomtom/hookcursormoved_vim'
Plugin 'tomtom/viki_vim'

" vim-scripts repos  
Plugin 'a.vim'  
Plugin 'grep.vim'
"Plugin 'easytags.vim'  
"Plugin 'c.vim'  
" non-GitHub repos  
"Plugin 'git://git.wincent.com/command-t.git'  
" Git repos on your local machine (i.e. when working on your own plugin)  
"Plugin 'file:///Users/gmarik/path/to/plugin'  

"==========================================
" ctrlp settings  
"==========================================
Plugin 'kien/ctrlp.vim'  
"let g:ctrlp_map = '<leader>p'
"let g:ctrlp_cmd = 'CtrlP'
"map <leader>f :CtrlPMRU<CR>
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"let g:ctrlp_custom_ignore = {
"    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
"    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
"    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
"    \ }
let g:ctrlp_custom_ignore = {
            \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|lib|out|png|img|bak|db|o)'
            \ }
" 在每次进行切换分支或者重新设定custome_ignore选项的时候,必须手动清除CtrlP的缓存,
" 也可以使用下句不让它进行缓存处理，但扫描时间会比较耗时
"let g:ctrlp_use_caching = 0
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :CtrlPDir<CR>

"==============================================================
" ctrlp-funky settings  ctrlp插件 - 不用ctag进行函数快速跳转
"==============================================================
Plugin 'tacahiroy/ctrlp-funky'
"nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>f :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
"nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']

"==========================================
" nerdcommenter settings  快速注释
"==========================================
Plugin 'scrooloose/nerdcommenter'
" 注释与代码之间留存的空格数
let g:NERDSpaceDelims = 1

"==========================================
" Airline settings
"==========================================
"Plugin 'bling/vim-airline'
"Plugin 'bling/vim-bufferline'
"if !exists('g:airline_symbols')
"let g:airline_symbols = {}
"endif
"let g:airline_left_sep = '▶'
"let g:airline_left_alt_sep = '❯'
"let g:airline_right_sep = '◀'
"let g:airline_right_alt_sep = '❮'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"" 开启tabline
"let g:airline#extensions#tabline#enabled = 1
"" tabline中当前buffer两端的分隔符
"let g:airline#extensions#tabline#left_sep = ' '
"" tabline为激活的buffer的两端字符
"let g:airline#extensions#tabline#left_alt_sep = '|'
"" tabline中buffer显示编号
"let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#buffline#enabled = 1
"let g:airline#extensions#bufferline#overwrite_variables = 1
"" airline主题
"let g:airline_theme = 'powerlineish' 

"括号显示增强
"Plugin 'kien/rainbow_parentheses.vim'
"let g:rbpt_colorpairs = [
"    \ ['brown',       'RoyalBlue3'],
"    \ ['Darkblue',    'SeaGreen3'],
"    \ ['darkgray',    'DarkOrchid3'],
"    \ ['darkgreen',   'firebrick3'],
"    \ ['darkcyan',    'RoyalBlue3'],
"    \ ['darkred',     'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['brown',       'firebrick3'],
"    \ ['gray',        'RoyalBlue3'],
"    \ ['black',       'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['Darkblue',    'firebrick3'],
"    \ ['darkgreen',   'RoyalBlue3'],
"    \ ['darkcyan',    'SeaGreen3'],
"    \ ['darkred',     'DarkOrchid3'],
"    \ ['red',         'firebrick3'],
"    \ ]
"let g:rbpt_max = 40
"let g:rbpt_loadcmd_toggle = 0
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

" 主题 solarized 
Plugin 'altercation/vim-colors-solarized'
"let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"

"==========================================
" TagList settings
"==========================================
Plugin 'taglist.vim'  
" increase the width of the taglist window  
"let Tlist_WinWidth=20  
" 自动打开TagList的window  
let Tlist_Auto_Open=0  
" 当只剩下Tlist的时候自动关闭  
let Tlist_Exit_OnlyWindow=1  
" 打开tags用单击  
let Tlist_Use_SingleClick=1  
" close tag folders for inactive buffers  
let Tlist_File_Fold_Auto_Close=1  
" show the fold indiactor column in the taglist window  
let Tlist_Enable_Fold_Column=1  
" 自动更新TagList包含最新编辑的文件  
let Tlist_Auto_Update=1  
" 显示一个文件的tag  
let Tlist_Show_One_File=1  
" 在右侧显示窗口  
let Tlist_Use_Right_Window=1  
" 按照名称排序  
let Tlist_Sort_Type="name"  
" 让TagList始终解释文件中的tag,不管TagList窗口有没有打开  
let Tlist_Process_File_Always=1  
" 设置leader键  
nnoremap <leader>tl :TlistToggle<CR>  

"==========================================
" YouCompleteMe settings
"==========================================
Plugin 'Valloric/YouCompleteMe'  
"let g:ycm_key_list_select_completion=['<c-n>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'  
let g:ycm_collect_indentifiers_from_tags_files=1  
let g:ycm_seed_identifiers_with_syntax=1  
" 避免YCM每次加载都对用户提示是否加载  
let g:ycm_confirm_extra_conf=0  
let g:ycm_autoclose_preview_window_after_completion=1  
let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
" 跳到定义或声明  
nnoremap <F2> :YcmCompleter GoToDefinitionElseDeclaration<CR>  
" 强制进行编译  
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>  

"==========================================
" Syntastic settings
"==========================================
Plugin 'scrooloose/syntastic'  
" 在打开文件的时候检查  
let g:syntastic_check_on_open = 1  
let g:syntastic_cpp_include_dirs = ['/usr/include/']  
let g:syntastic_cpp_remove_include_errors = 1  
let g:syntastic_cpp_check_header = 1  
let g:syntastic_cpp_compiler = 'clang++'  
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'  
"set error or warning signs  
let g:syntastic_error_symbol = '✗'  
let g:syntastic_warning_symbol = '⚠'  
"whether to show balloons  
let g:syntastic_enable_balloons = 1  
let g:syntastic_always_populate_loc_list = 1  

"==========================================
" ListToggle settings
"==========================================
let g:lt_location_list_toggle_map = '<leader>l'  
let g:lt_quickfix_list_toggle_map = '<leader>q'  

"==========================================
" NERDtree settings
"==========================================
Plugin 'scrooloose/nerdtree'  
let NERDTreeWinPos='left'  
let NERDTreeHighlightCursorline=1
nnoremap <leader>n :NERDTreeToggle<CR>  
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif  
"let NERDTreeIgnore = ['\.swp$','\.~$','\.o$','\.lib$','\.so$','\.dll$','\.zip$','\.tar$','\.tar.gz$','\.out$','\.db$','\.zip$']

"==========================================
" miniBufExpl settings
"==========================================
"Plugin 'fholgado/minibufexpl.vim'
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
""解决FileExplorer窗口变小问题
"let g:miniBufExplForceSyntaxEnable = 1
"let g:miniBufExplorerMoreThanOne=2
"let g:miniBufExplCycleArround=1
"" 默认方向键左右可以切换buffer
"nnoremap <TAB> :MBEbn<CR>
"nnoremap <s-TAB> :MBEbp<CR>
"noremap <leader>bn :MBEbn<CR>
"noremap <leader>bp :MBEbp<CR>
"noremap <leader>bd :MBEbd<CR>

"==========================================
" FuzzyFinder settings
"==========================================
"Plugin 'FuzzyFinder'  
"nnoremap <leader>f :FufFile<CR>  
"nnoremap <leader>b :FufBuffer<CR>  
"nnoremap <leader>d :FufDir<CR>  

"==========================================
" UltiSnips settings
"==========================================
Plugin 'SirVer/ultisnips'  
Plugin 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
" 定义存放代码片段的文件夹 .vim/additional_snippets下，使用自定义和默认的，将会的到全局，有冲突的会提示
let g:UltiSnipsSnippetDirectories=["additional_snippets", 'UltiSnips']

"==========================================
" closetag settings 自动补全html/xml标签
"==========================================
"Plugin 'docunext/closetag.vim'
"let g:closetag_html_style=1

"==========================================
" Markdown settings
"==========================================
"Plugin 'plasticboy/vim-markdown'
"let g:vim_markdown_folding_disabled=1

"==========================================
" Tagbar settings
"==========================================
Plugin 'majutsushi/tagbar'  
nnoremap <leader>tb :Tagbar<CR>  
let g:tagbar_autofocus = 1

"==========================================
" A settings
"==========================================
nnoremap <F4> :A<CR>  

"==========================================
" Powerline settings
"==========================================
Plugin 'Lokaltog/vim-powerline'  
let g:Powerline_symbolsa = 'fancy'  
let g:Powerline_cache_enabled = 1  

""let g:session_autoload='yes'  
""let g:session_autosave='yes'  

" 因为Vundle需要关闭filetype,而之后的插件如果想要正常使用，必须要打开filetype
" 所以必须确保所有插件的加载过程在之前已经全部添加完毕
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" 参考链接:  
" amix vimrc模板地址参考:amix.dk/vim/vimrc.html  
" k-vim https://github.com/wklken/k-vim
