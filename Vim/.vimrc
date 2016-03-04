" 执行 VIM 缺省提供的 .vimrc文件的示例，包含了打开语法高亮显示等最常用的功能
source $VIMRUNTIME/vimrc_example.vim
"使%可以匹配html标签对
runtime macros/matchit.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"      基础配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cindent
set backspace=2
"在缩进和遇到 Tab 键时使用空格替代
set expandtab

"根据文件类型设置缩进格式

"au FileType html,python,vim,javascript setl shiftwidth=2

"au FileType html,python,vim,javascript setl tabstop=2

"au FileType java,php setl shiftwidth=4

"au FileType java,php setl tabstop=4

" 处理文本中显示乱码
set encoding=utf-8
set fileencodings=chinese
set fileencoding=chinese

" 处理菜单及右键菜单乱码
source $vimruntime/delmenu.vim
source $vimruntime/menu.vim

" 处理consle输出乱码
language messages zh_cn.utf-8

" 关闭VIM兼容模式
"set nocompatible

" 文件编码格式
let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936,gb2312

" 帮助文件使用中文
set helplang=cn

" 开启语法高亮
syntax enable

" 根据文件类型高亮
filetype plugin indent on

" 显示行
set nu
"括号匹配
set showmatch

" 设置折叠模式
"set foldcolumn=4

" 光标遇到折叠就打开
set foldopen=all

" 用语法高亮来定义折叠
set foldmethod=syntax     " 语法高亮折叠
set foldmethod=indent    " 更多的缩进表示更高级别的折叠

" 依标记折叠
set foldmethod=marker

" 缺省不产生备份文件
set nobackup

" 取消交换区
set nowb

" 鼠标点击边缘上下7行时自动滚动
set so=7

" 设置VIM皮肤色
if has("gui_running")
 "colorscheme default
 "colorscheme freya
 colorscheme lucius
endif

" 保存400个命令和400个查找历史
set history=400

" 总在窗口右下角显示当前光标位置
set ruler

" 使用鼠标右键
set mouse=a

" 设置魔术
set magic

" 自动切换当前目录为当前文件所在的目录
set autochdir

" 突出显示当前行
set cursorline

" 置空错误铃声的终端代码
set t_vb=

" 隐藏工具栏
"set guioptions-=T

" 隐藏菜单栏
"set guioptions-=m

" 短暂跳转到匹配括号的时间
set matchtime=1

" 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set hidden

" 启动后最大化
au GUIEnter * simalt ~x

" 显示TAB健
"set list

" 去掉有关vi一致性模式，避免以前版本的一些bug和局限
set nocp

"保存文件的格式顺序
set fileformats=dos,unix

"代码片段功能开启
set nocompatible

" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI
"自动保存
"set  autowriteall

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"      键映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap ( ()<Left>
imap [ []<Left>
imap { {}<Left>
imap "" ""<Left>
imap '' ''<Left>
:map <C-F10> :tabedit e:\work 
:map <F2> :so $VIM\Data\session.vim <CR> 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       其他设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置session选项
set sessionoptions=buffers,curdir,resize,folds
" 设置SESSION保存目录  
autocmd VimLeave * mks! $VIM\Data\Session.vim 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"      函数
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"快速切换标签
function! TabPos_ActivateBuffer(num) 
    let s:count = a:num 
    exe "tabfirst"
    exe "tabnext" s:count 
endfunction 
        
function! TabPos_Initialize()   
for i in range(1, 9) 
        exe "map <M-" . i . "> :call TabPos_ActivateBuffer(" . i . ")<CR>"
    endfor 
    exe "map <M-0> :call TabPos_ActivateBuffer(10)<CR>"
endfunction 
  
autocmd VimEnter * call TabPos_Initialize()

autocmd BufNewFile *.php,*.java exec ":call SetTitle()"

"新建.py,.cc,.java,.sh,
"定义函数SetTitle，自动插入文件头
func SetTitle()
    if expand("%:e") == 'cc'
        call setline(1, "/*===============================================================")
        call setline(2, "\ @Author: ray")
        call setline(3, "\ @Created Time : ".strftime("%c"))
        call setline(4, "") 
        call setline(5, "\ @File Name: ".expand("%"))
        call setline(6, "\ @Description:")
        call setline(7, "") 
        call setline(8, "================================================================*/")
        call setline(9,"")
        call setline(10,"#include <iostream>")
        call setline(11,"int main() {")
        call setline(12,"")
        call setline(13,"  return 0;")
        call setline(14,"}")
    endif
endfunc

"获取当前工作目录
function! CurDir()
        let curdir = substitute(getcwd(), $HOME, "~", "g")
        return curdir
    endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"     CTags设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 是否高亮显示当前标签
let Tlist_Auto_Highlight_Tag = 1

" 函数列表右侧显示
let Tlist_Use_Right_Window = 1

" 自动打开Tlist
let Tlist_Auto_Open = 0

" 自动更新Tlist
let Tlist_Auto_Update = 1

" 选择标签或文件后是否自动关闭标签列表窗口
let Tlist_Close_On_Select = 0

" 压缩方式
let Tlist_Compact_Format = 1

" 是否在标签列表窗口用标签原型替代标签名
let Tlist_Display_Prototype = 0

" 在标签名后是否显示标签有效范围
let Tlist_Display_Tag_Scope = 1

" 不显示折叠树
let Tlist_Enable_Fold_Column = 0

" 关闭VIM同时关闭Tlist
let Tlist_Exit_OnlyWindow = 1

" 不关闭其他的tags
let Tlist_File_Fold_Auto_Close = 0

" 为1则使用TlistToggle打开标签列表窗口后会获焦点至于标签列表窗口；为0则taglist打开后焦点仍保持在代码窗口
let Tlist_GainFocus_On_ToggleOpen = 1

" 显示标签列表窗口时允许/禁止扩展Vim窗口宽度
let Tlist_Inc_Winwidth = 0

" F11开关Tlist
nnoremap <C-F11> :TlistToggle<CR> 
" 设置ctags运行的位置 let Tlist_Ctags_Cmd = 'ctags.exe' 
" 设置tags文件目录
set tags+=$VIM\Data\tags
set autochdir

" F12生成/更新tags文件
function! UpdateTagsFile()
   silent !ctags -a --fields=+ianS --extra=+q --tag-relative --exclude=.svn --exclude=c++ --exclude=asm*  --exclude=*.js --exclude=.* -f "D:\programFiles\Vim\Data\tags" -R 
endfunction
nmap <C-F12> :call UpdateTagsFile()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"     NERDTreeToggle设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeBookmarksFile=$VIM.'\Data\.NERDTreeBookmarks'
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=0
let NERDTreeShowFiles=1
let NERDTreeShowHidden=0
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31

" F6打开目录树
nmap <F5> :NERDTreeToggle<CR>
:map <C-F9> :NERDTree E:\work

autocmd VimEnter * :NERDTree E:\work
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       php设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 使用PHP快速注释 Alt+P
source $VIM\vimfiles\plugin\php-doc.vim
inoremap <M-/> <ESC>:call PhpDocSingle()<CR>
nnoremap <M-/> :call PhpDocSingle()<CR>
vnoremap <M-/> :call PhpDocRange()<CR>

" 语法补全使用php
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" 使php识别EOT字符串
hi link phpheredoc string

" PHP支持折叠
let php_folding = 0

"php缩进
let PHP_autoformatcomment=1

" php启动帮助 快捷键普通模式下K
autocmd BufNewFile,Bufread *.ros,*.inc,*.php set keywordprg="help"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       javascript设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 打开javascript折叠
let b:javascript_fold=1

" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1

" 美化js代码
nnoremap <C-F4> :call g:Jsbeautify()<CR>
let mapleader=","


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       注释插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDShutUp=1
"支持单行和多行的选择，//格式
map <c-h> ,c<space> 
"NERDTree 跳转到当前打开的页面目录
nn <silent><F3> :exec("NERDTree ".expand('%:h'))<CR>
