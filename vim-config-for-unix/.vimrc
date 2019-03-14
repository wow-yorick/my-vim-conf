"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"      vundle���������
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"Bundle 'Valloric/YouCompleteMe'
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"Plugin 'https://github.com/juneedahamed/svnj.vim.git'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
Plugin 'lucius' "����
Plugin 'freya' "����
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ִ�� VIM ȱʡ�ṩ�� .vimrc�ļ���ʾ���������˴��﷨������ʾ����õĹ���
source $VIMRUNTIME/vimrc_example.vim
"ʹ%����ƥ��html��ǩ��
runtime macros/matchit.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"      ��������
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set shellcmdflag=-c
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cindent
set backspace=2
"������������ Tab ��ʱʹ�ÿո����
set expandtab
set fdm=indent "indent marker syntax

" �����ı�����ʾ����
set encoding=utf-8
set fileencodings=chinese
set fileencoding=chinese

" ����consle�������
language messages zh_cn.utf-8

" �ر�VIM����ģʽ
"set nocompatible

" �ļ������ʽ
let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936,gb2312

" �����ļ�ʹ������
set helplang=cn

" �����﷨����
syntax enable

" �����ļ����͸���
filetype plugin indent on

" ��ʾ��
set nu
"����ƥ��
set showmatch

" �����۵�ģʽ
"set foldcolumn=4

" ��������۵��ʹ�
set foldopen=all

" ���﷨�����������۵�
set foldmethod=syntax     " �﷨�����۵�
set foldmethod=indent    " �����������ʾ���߼�����۵�

" ������۵�
set foldmethod=marker

" ȱʡ�����������ļ�
set nobackup

" ȡ��������
set nowb

" �������Ե����7��ʱ�Զ�����
set so=7

" ����VIMƤ��ɫ
if has("gui_running")
 "colorscheme default
 "colorscheme freya
 "colorscheme lucius
    set guifont=SourceCodePro-Regular:h14
endif

colorscheme lucius

" ����400�������400��������ʷ
set history=400

" ���ڴ������½���ʾ��ǰ���λ��
set ruler

" ʹ������Ҽ�
set mouse=a

" ����ħ��
set magic

" �Զ��л���ǰĿ¼Ϊ��ǰ�ļ����ڵ�Ŀ¼
set autochdir

" ͻ����ʾ��ǰ��
set cursorline

" �ÿմ����������ն˴���
set t_vb=

" ���ع�����
"set guioptions-=T

" ���ز˵���
"set guioptions-=m

" ������ת��ƥ�����ŵ�ʱ��
set matchtime=1

" ��������δ������޸�ʱ�л�����������ʱ���޸��� vim ���𱣴�
set hidden

" ���������
" au GUIEnter * simalt ~x

" ��ʾTAB��
"set list

" ȥ���й�viһ����ģʽ��������ǰ�汾��һЩbug�;���
set nocp

"�����ļ��ĸ�ʽ˳��
set fileformats=dos,unix

"����Ƭ�ι��ܿ���
set nocompatible

" ������ʱ����ʾ�Ǹ�Ԯ���������ͯ����ʾ
set shortmess=atI
"�Զ�����
"set  autowriteall

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"      ��ӳ��
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
:map <C-F10> :tabedit e:\work 
:map <F2> :so $VIM\Data\session.vim <CR> 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       ��������
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"����sessionѡ��
set sessionoptions=buffers,curdir,resize,folds
" ����SESSION����Ŀ¼  
autocmd VimLeave * mks! $HOME/.vim/Data/Session.vim 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"      ����
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"�����л���ǩ
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

"�½�.py,.cc,.java,.sh,
"���庯��SetTitle���Զ������ļ�ͷ
"func! SetTitle()
    "if expand("%:e") == 'cc'
        "call setline(1, "/*===============================================================")
        "call setline(2, "\ @Author: ray")
        "call setline(3, "\ @Created Time : ".strftime("%c"))
        "call setline(4, "") 
        "call setline(5, "\ @File Name: ".expand("%"))
        "call setline(6, "\ @Description:")
        "call setline(7, "") 
        "call setline(8, "================================================================*/")
        "call setline(9,"")
        "call setline(10,"#include <iostream>")
        "call setline(11,"int main() {")
        "call setline(12,"")
        "call setline(13,"  return 0;")
        "call setline(14,"}")
    "endif
"endfunc

"��ȡ��ǰ����Ŀ¼
function! CurDir()
        let curdir = substitute(getcwd(), $HOME, "~", "g")
        return curdir
    endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"     CTags����
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" �Ƿ������ʾ��ǰ��ǩ
let Tlist_Auto_Highlight_Tag = 1

" �����б��Ҳ���ʾ
let Tlist_Use_Right_Window = 1

" �Զ���Tlist
let Tlist_Auto_Open = 0

" �Զ�����Tlist
let Tlist_Auto_Update = 1

" ѡ���ǩ���ļ����Ƿ��Զ��رձ�ǩ�б���
let Tlist_Close_On_Select = 0

" ѹ����ʽ
let Tlist_Compact_Format = 1

" �Ƿ��ڱ�ǩ�б����ñ�ǩԭ�������ǩ��
let Tlist_Display_Prototype = 0

" �ڱ�ǩ�����Ƿ���ʾ��ǩ��Ч��Χ
let Tlist_Display_Tag_Scope = 1

" ����ʾ�۵���
let Tlist_Enable_Fold_Column = 0

" �ر�VIMͬʱ�ر�Tlist
let Tlist_Exit_OnlyWindow = 1

" ���ر�������tags
let Tlist_File_Fold_Auto_Close = 0

" Ϊ1��ʹ��TlistToggle�򿪱�ǩ�б��ں��񽹵����ڱ�ǩ�б��ڣ�Ϊ0��taglist�򿪺󽹵��Ա����ڴ��봰��
let Tlist_GainFocus_On_ToggleOpen = 1

" ��ʾ��ǩ�б���ʱ����/��ֹ��չVim���ڿ��
let Tlist_Inc_Winwidth = 0

" F11����Tlist
nnoremap <C-F11> :TlistToggle<CR> 
" ����ctags���е�λ�� let Tlist_Ctags_Cmd = 'ctags.exe' 
" ����tags�ļ�Ŀ¼
set tags+=$HOME/.vim/Data/tags
set autochdir

" F12����/����tags�ļ�
function! UpdateTagsFile()
   silent !ctags -a --fields=+ianS --extra=+q --tag-relative --exclude=.svn --exclude=c++ --exclude=asm*  --exclude=*.js --exclude=.* -f "tags" -R 
endfunction
"nmap <C-F12> :call UpdateTagsFile()<CR>
nmap <F12> :call UpdateTagsFile()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"     NERDTreeToggle����
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeBookmarksFile=$HOME.'/.vim/Data/.NERDTreeBookmarks'
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=0
let NERDTreeShowFiles=1
let NERDTreeShowHidden=0
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31

" F6��Ŀ¼��
nmap <F5> :NERDTreeToggle<CR>
:map <C-F9> :NERDTree $HOME/go

autocmd VimEnter * :NERDTree $HOME/go

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       javascript����
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ��javascript�۵�
let b:javascript_fold=1

" ��javascript��dom��html��css��֧��
let javascript_enable_domhtmlcss=1

" ����js����
nnoremap <C-F4> :call g:Jsbeautify()<CR>
let mapleader=","


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       ע�Ͳ������
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDShutUp=1
"֧�ֵ��кͶ��е�ѡ��//��ʽ
map <c-h> ,c<space> 
"NERDTree ��ת����ǰ�򿪵�ҳ��Ŀ¼
nn <silent><F3> :exec("NERDTree ".expand('%:h'))<CR>

