"
" 问题及解决
" 1 :ERROR:vim:powerline:Failed to create renderer: [Errno 28] No space left on deviceYou may need to increase the inotify limits on your system, via /proc/sys/fs/inotify/max_user_*
" Ref: https://github.com/guard/listen/wiki/Increasing-the-amount-of-inotify-watchers
" echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
"
"

"" =============================================================================
"" Vundle
"" =======
" 安装
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"" =============================================================================


"" =================================================
set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加
"" =================================================
" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'
" added nerdtree
" Git plugin not hosted on GitHub
"git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree"
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/Xuyuanp/nerdtree-git-plugin.git'

Plugin 'junegunn/goyo.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-python/python-syntax'
let g:python_highlight_all = 1
let g:python_highlight_builtin_funcs_kwarg = 1
let g:python_version_2 = 1
let g:python_highlight_all = 1 

Plugin 'Valloric/YouCompleteMe'
" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
"" =================================================

"---------------------------------------------------------------
" NERDTree config
nnoremap <silent> <F5> :NERDTree<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") 
"       \ && b:NERDTreeType == "primary") | q | endif
"第一条是说使用F2键快速调出和隐藏它；
"第二条是关闭vim时，如果打开的文件除了NERDTree没有其他文件时，它自动关闭，减少多次按:q!。
"如果想打开vim时自动打开NERDTree，可以如下设定
"autocmd vimenter * NERDTree
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=31
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1
"---------------------------------------------------------------

"" =================================================
" Vim
" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall     - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
"" =================================================


" ----------------------------------------------------------------------------
"  Backups
" ----------------------------------------------------------------------------

set nobackup               " do not keep backups after close
set nowritebackup          " do not keep a backup while working
set noswapfile             " don't keep swp files either
set backupdir=~/.vim/backup " store backups under ~/.vim/backup
set backupcopy=yes         " keep attributes of original file
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=~/.vim/swap,~/tmp,. " keep swp files under ~/.vim/swap

" ----------------------------------------------------------------------------
"  UI
" ----------------------------------------------------------------------------
" UI 配色方案 ===============================================
" powerline scheme
let g:Powerline_colorscheme='solarized256'
set showmatch   "显示匹配的括号"
set scrolloff=5     "距离顶部和底部5行"
set mouse=a     "启用鼠标"
set selection=exclusive
set selectmode=mouse,key
set whichwrap+=<,>,h,l

""" 安装 powerline,然后找到路径
""" pip install git+git://github.com/powerline/powerline
""" 然后安装字体
""" $ wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
""" $ wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
""" $ sudo mv PowerlineSymbols.otf /usr/share/fonts/
""" $ sudo fc-cache -vf /usr/share/fonts/
""" $ sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
""" 查看安装位置，记得替换掉
""" pip show powerline-status   
set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

" 行号设置 ==================================================
set number                     " Show current line number
set relativenumber             " Show relative line numbers

" 高亮当前行 ================================================
"高亮当前行和行号
" -highlght 主要是用来配色的，包括语法高亮等个性化的配置。可以通过:h highlight，查看详细信息
" -CursorLine 和 CursorColumn 分别表示当前所在的行列
" -cterm 表示为原生vim设置样式，设置为NONE表示可以自定义设置。
" -ctermbg 设置终端vim的背景色
" -ctermfg 设置终端vim的前景色
" -guibg 和 guifg 分别是设置gvim的背景色和前景色，本人平时都是使用终端打开vim，所以只是设置终端下的样式
" 设置高亮行和列
"set cursorcolumn
set cursorline
"设置高亮效果
" Removes the underline causes by enabling cursorline:
highlight clear CursorLine
"highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
"highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE

highlight LineNr term=bold cterm=bold ctermfg=DarkGrey ctermbg=NONE gui=None guifg=DarkGrey guibg=NONE
highlight CursorLineNR term=bold ctermfg=DarkGreen ctermbg=black cterm=bold
"highlight CursorLineNR term=bold ctermfg=DarkGreen ctermbg=DarkGrey cterm=bold

set linebreak              " wrap long lines between words

" ----------------------------------------------------------------------------
"  Visual Cues
" ----------------------------------------------------------------------------
syntax on                  " enable syntax highlighting
let loaded_matchparen=1    " don't hightlight matching brackets/braces
set laststatus=2           " always show the status line
set hlsearch               " highlight all search terms
set incsearch              " highlight search text as entered
set ignorecase             " ignore case when searching
set smartcase              " case sensitive only if capitals in search term
"set colorcolumn=80        " not available until Vim 7.3
set visualbell             " shut the fuck up


" TAB 设置空格 ==============================================
" 代码缩进
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 自适应不同语言的智能缩进
filetype indent on

" 基于缩进或语法进行代码折叠
set foldmethod=indent
"set foldmethod=syntax
set nofoldenable

" ----------------------------------------------------------------------------
"  Mappings
" ----------------------------------------------------------------------------

" kj to exit insert mode
imap kj <Esc>

" Y to yank to end of line
map Y y$

" Ctrl-x to close current buffer
""map <C-x> :q<CR>

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" ,; opens ~/.vimrc
map ,; :tabe ~/.vimrc<CR><C-W>_

" ,: reloads .vimrc
map <silent> ,: :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" move up and down by screen lines instead of text lines
nnoremap j gj
nnoremap k gk

" faster viewport scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" easy file saving
map <C-s> :w<CR>

" easy ack
nnoremap <LocalLeader>a :Ack 

" change directory to that of current file
cmap cdc cd %:p:h

" insert current date
nmap <LocalLeader>da "=strftime("%Y %b %d")<CR>P


" ---------------------------------------------------------------------------
"  Spell Checking
" ---------------------------------------------------------------------------

" ,ss toggles spell checking
map <LocalLeader>ss :setlocal spell!<cr>

" spell checking shortcuts (next, prev, add, suggest)
map <LocalLeader>sn ]s
map <LocalLeader>sp [s
map <LocalLeader>sa zg
map <LocalLeader>s? z=

" ---------------------------------------------------------------------------
"  Handling Whitespace
" ---------------------------------------------------------------------------

"  strip trailing whitespace
map <LocalLeader>ks :%s/\s\+$//g<CR>

"  convert tabs to spaces
map <LocalLeader>kt :%s/\t/  /g<CR>

"  kill DOS line breaks
map <LocalLeader>kd :%s///g<CR>

" 保持最新修改的地方
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
au BufWinLeave * mkview
au BufWinEnter * silent loadview

"make vim save and load the folding of the document each time it loads"
"also places the cursor in the last place that it was left."
au BufWinLeave * mkview
au BufWinEnter * silent loadview

" tab -> 4 space
set expandtab
set tabstop=4
set shiftwidth=4
"map <F2> :retab <CR> :wq! <CR>
map <F2> :retab <CR>

