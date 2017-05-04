""""""""""""""""""""" Vundle """""""""""""""""""""""""""""""
set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

"my Bundle here:
"
" original repos on github
"Bundle 'kien/ctrlp.vim'
"Bundle 'sukima/xmledit'
"Bundle 'sjl/gundo.vim'
"Bundle 'jiangmiao/auto-pairs'
"Bundle 'klen/python-mode'
"Bundle 'Valloric/ListToggle'
"Bundle 't9md/vim-quickhl'
"Bundle 'Lokaltog/vim-powerline'
"Plugin 'SirVer/ultisnips'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'godlygeek/tabular'

Plugin 'justinmk/vim-syntax-extra'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'coldfix/hexHighlight'
Plugin 'marijnh/tern_for_vim'
Plugin 'Quramy/vim-js-pretty-template'

Plugin 'mxw/vim-jsx'
Plugin 'bdauria/angular-cli.vim'
Plugin 'posva/vim-vue'
Plugin 'digitaltoad/vim-pug'

Plugin 'oplatek/Conque-Shell'
Plugin 'elzr/vim-json'

Plugin 'leafgarland/typescript-vim'

Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'

Plugin 'eagletmt/neco-ghc'

Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

Plugin 'kien/ctrlp.vim'
Plugin 'nvie/vim-flake8'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"..................................
" vim-scripts repos
"Bundle 'YankRing.vim'
"Bundle 'vcscommand.vim'
"Bundle 'ShowPairs'
"Bundle 'SudoEdit.vim'
"Bundle 'EasyGrep'
"Bundle 'VOoM'
"Bundle 'VimIM'
"Bundle 'Conque-Shell'
"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................
filetype plugin indent on
filetype plugin on              " 允许插件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
" 状态行显示的内容 
set showcmd                     " 输入的命令显示出来，看的清楚些
set cmdheight=2                 " 命令行高度为1
set ruler                       " 显示标尺 
"设置配色方案
if has('gui_running')
    set background=dark
    colorscheme sorlarized
else
    set t_Co=256
    colorscheme zenburn
endif
call togglebg#map("<C-F5>")
"colorscheme solarized           " 设置配色方案
"colorscheme desert             " 设置配色方案
"colorscheme molokai             " 设置配色方案
"colorscheme materialbox         " 设置配色方案
"colorscheme onedark             " 设置配色方案
set background=dark             " 设置背景色，每种配色有两种方案，一个light、一个dark
set number                      " 显示行号
let g:airline_theme='onedark'
set clipboard+=unnamed          " 共享剪贴板 
syntax enable                   " 语法高亮
set syntax=on                   " 语法高亮
let python_highlight_all=1      " 最后，让你的代码变得更漂亮
set cursorline                  " 突出显示当前行
set confirm                     " 处理未保存或只读文件时需要确认
set autoindent                  " C 风格缩进 还有 smartindent autoindent
autocmd FileType python :set smartindent
" 若为 Python 改缩进
set tabstop=4                   " Tab键的宽度
set softtabstop=4               " 方便在开启了 et 后使用退格（backspace）键，每次退格将删除4个空格
set backspace=indent,eol,start
set shiftwidth=4                " 使用每层缩进的空格数
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set ai
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set sw=4
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set ts=4
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set sts=4
autocmd FileType javascript,html,css,xml set ai
autocmd FileType javascript,html,css,xml set sw=4
autocmd FileType javascript,html,css,xml set ts=4
autocmd FileType javascript,html,css,xml set sts=4
set ignorecase                  " 无视大小写
set smartcase                   " 搜索大写时严格匹配
set expandtab                   " 用空格代替制表符
set magic                       " 搜索支持正则匹配
set hlsearch                    " 高亮显示结果
set incsearch                   " 在输入要搜索的文字时，vim会实时匹配
set cc=80                       " 第80列高亮
set scrolloff=4                 " 光标离上下还有三行时开始滚动屏幕
set showmatch                   " 括号等显示配对
set matchtime=1                 " 0.1 秒的配对时间
set list lcs=tab:>-,trail:-     " 不可见字符回显
set history=50                  " 历史记录
set foldmethod=indent           " 默认折叠方式，还有manual, expr, syntax, diff, marker
set foldlevelstart=99           " 默认不折叠
set report=0                    " 显示改动
set autoread                    " 自动读取文件变化
"syn sync fromstart              " 滚动屏幕时高亮的问题
"
""""""""""""""""" read .asm as nasm""""""""""""""""
au BufRead,BufNewFile *.asm set filetype=nasm
"""""""""""""""" indentLine and json """"""""""""""""""
"let g:indentLine_setConceal = 0
let g:indentLine_concealcursor = 'c'
let g:indentLine_conceallevel = 2
"let g:indentLine_setConceal = 0
"let g:vim_json_syntax_conceal = 0
""""""""""""""""""" vim-javascript """"""""""""""""
let g:javascript_plugin_jsdoc = 1
"let g:javascript_conceal_function             = "ƒ"
"let g:javascript_conceal_null                 = "ø"
"let g:javascript_conceal_this                 = "@"
"let g:javascript_conceal_return               = "⇚"
"let g:javascript_conceal_undefined            = "¿"
"let g:javascript_conceal_NaN                  = "ℕ"
"let g:javascript_conceal_prototype            = "¶"
"let g:javascript_conceal_static               = "•"
"let g:javascript_conceal_super                = "Ω"
"let g:javascript_conceal_arrow_function       = "⇒"
"let g:javascript_conceal_noarg_arrow_function = "🞅"
"let g:javascript_conceal_underscore_arrow_function = "🞅"

""""""""""""""""""" HexHightLight """"""""""""""""
nmap <C-c>           <Plug>ToggleHexHighlight
"""""""""""""""""""" YCM Setting""""""""""""""""""
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>', '<tab>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ycm_global_ycm_extra_conf = '~/Files/Configs/VimConfig/YCM/.ycm_extra_conf.py'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_semantic_triggers = {'haskell' : ['.']}
"""""""""""""""""""" C, C++ F5运行 """"""""""""""""""
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'nasm'
        exec "!nasm -f macho64 %"
        exec "!ld -macosx_version_min 10.7.0 -o %< %<.o"
        exec "! ./%<"
    elseif &filetype == 'java' 
        exec "!javac %" 
        exec "!java %<"
    elseif &filetype == 'sh'
        :!./%
    elseif &filetype == 'python'
        :!./%
    elseif &filetype == 'haskell'
        exec "!ghc %"
        exec "! ./%<"
    endif
endfunc
"""""""""""""""""""""Ultisnips""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

 "If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
""""""""""""""""""" emmet """"""""""""""""""
let g:user_emmet_install_global = 0
autocmd FileType html,xml,css,htmldjango EmmetInstall
let g:user_emmet_expandabbr_key = '<C-e>'
"""""""""""""""""""" C, C++ F8调试 """""""""""""""""""
map <F8> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -g -o %<"
        exec "!gdb ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -g -o %<"
        exec "!gdb ./%<"
    elseif &filetype == 'nasm'
        exec "!nasm -f macho64 %"
        exec "!ld -macosx_version_min 10.7.0 -o %< %<.o"
        exec "!gdb %<"
    endif
endfunc
"""""""""""""""""""" 鼠标设置 """"""""""""""""""""""""
set mouse=a
set selection=exclusive
set selectmode=mouse,key
"""""""""""""""""""" 编码设置 """"""""""""""""""""""""
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"""""""""""""""""""" 语言设置 """"""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
""""""""""""""""""" 显示中文帮助 """"""""""""""""""""""
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif

"""""""""""""""""""" 自动补全 """""""""""""""""""""""
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap {<CR> {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap " <c-r>=ClosePair('"')<CR>
":inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction
"""""""""""""""""""""" txt 78换行 """"""""""""""""""""""
autocmd BufRead *.txt set tw=78
""""""""""""""""""" 记录上次位置 """"""""""""""""""""""
autocmd BufReadPost *
            \ if line("'\"") > 0 && line ("'\"") <= line("$") |
            \   exe "normal g'\"" |
            \ endif
"""""""""""""""""""" NERDTree """""""""""""""""""""""
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 打开 vim 时自动打开
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 除 nerdtree 无其他文件时自动关闭 vim
map <C-t> :NERDTreeToggle<CR>

"""""""""""""""""""" tern_for_vim """""""""""""""""""""""
let tern_show_signature_in_pum = 1
let tern_show_argument_hints = 'on_hold'
autocmd FileType javascript nnoremap <leader>d :TernDef<CR>
autocmd FileType javascript setlocal omnifunc=tern#Complete
"""""""""""""""""""" PowerLine """""""""""""""""""""""
set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim

" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256

let g:minBufExplForceSyntaxEnable = 1

if ! has('gui_running')
    set timeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

set laststatus=2 " Always display the statusline in all windows
set noshowmode " hide the default mode text (e.g. -- insert -- below the statusline)
"autocmd InsertEnter *.json setlocal conceallevel=2 concealcursor=
"autocmd InsertLeave *.json setlocal conceallevel=2 concealcursor=inc
""""""""""""""""""""""" Syntastic """""""""""""""""""""""
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_checkers = ['cppcheck']
let g:Syntastic_cpp_checkers = ['cppcheck']
let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_javascript_closurecompiler_script="/usr/local/bin/closure-compiler"
let g:syntastic_javascript_checkers = ['jshint', 'eslint']
let g:syntastic_html_checkers = ['jshint', 'eslint']
let g:syntastic_html_eslint_exec = 'eslint_d'
let g:syntastic_javascript_eslint_exec = 'eslint_d'

let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']
"let g:syntastic_typescript_eslint_exec = 'eslint_d'

"""""""""""""""" typescript-vim """"""""""""""""

"let g:typescript_compiler_binary = 'tsc'
"let g:typescript_compiler_options = ''
"autocmd QuickFixCmdPost [^l]* nested cwindow
"autocmd QuickFixCmdPost    l* nested lwindowp

"""""""""""""""" VIM-JS-PRETTY-TEMPLATE """"""""""""""""

autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces


"""""""""""""""" HASKELL """"""""""""""""
" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
"""""""""""""""" vim-jsx """"""""""""""""
let g:jsx_ext_required = 0
"要支持PEP8风格的缩进
au BufNewFile,BufRead *.py
\set tabstop=4
\set softtabstop=4
\set shiftwidth=4
\set textwidth=79
\set expandtab
\set autoindent
\set fileformat=unix
