set nocompatible               " be iMproved
set encoding=utf8
"filetype off

set rtp+=~/.vim/bundle/Vundle.vim

" 开始安装相应的插件
call vundle#begin()

" let Plugin manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

if has("autocmd")
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
endif
"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" 设置当文件被改动时自动载入
set autoread
"代码补全
set completeopt=preview,menu
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" check :h filetype-indent-on
" have proper indent level based on syntax
" `=` also depends on this to work
filetype indent on
" 1 tab to 2 space for ruby
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
" number line show
set nu
" 搜索逐字符高亮
set hlsearch
set incsearch
" input source improve for gui vim
if has("gui_running")
  set noimdisable
  set imi=2
  set ims=2
endif

set noswapfile
"in order to switch between buffers with unsaved change
set hidden

" hightlight col and line
set cursorline
"set cursorcolumn

if has("gui_running")
  colorscheme desert
  set bs=2
  set ruler
  set gfn=Monaco:h16
  set shell=/bin/bash
endif

let mapleader= ","
" EasyMotion_leader_key .
" Plugin Plugin here for Ruby on Rails
" git
Plugin 'tpope/vim-fugitive'
" ruby command for rvm
Plugin 'tpope/vim-rvm'
" quickly move cursor, try ,,w
Plugin 'Lokaltog/vim-easymotion'
" quickly write HTML, just like zencoding but simple engough
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"let g:sparkupNextMapping= "<c-m>"
Plugin 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
let g:user_emmet_mode='iv'
" erb 自动补全的一些插件
autocmd FileType html,css,eruby EmmetInstall
" power vim plugin for rails
Plugin 'tpope/vim-rails.git'
" vim rails syntax complete, try ctrl+x ctrl+u
set completefunc=syntaxcomplete#Complete
" quickly comment your code, try ,cc on selected line
Plugin 'vim-scripts/The-NERD-Commenter'
" indent guides
set ts=2 sw=2 et
Plugin 'nathanaelkane/vim-indent-guides'
" indent guides shortcut
map <silent><F7>  <leader>ig

" file tree like something called IDE, use F8
Plugin 'scrooloose/nerdtree'
map <silent><F8> :NERDTree<CR>
" coffeescript
Plugin 'kchmck/vim-coffee-script'
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
" basic dependence
Plugin 'L9'
" slim template support, Syntax highlighting for VIM
Plugin 'slim-template/vim-slim.git'
" hack filetype for slim
autocmd BufNewFile,BufRead *.slim set filetype=slim
" quickly search file(s), use ctrl+p, F5 refresh
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v[\/]\.(DS_Store|git|hg|svn)|(optimized|compiled|node_modules)$'
map <c-o> :CtrlPBuffer<CR>

filetype plugin indent on     " required!
syntax on

" airline,Lean & mean status/tabline for vim that's light as air.vim
" 底部的状态栏。
Plugin 'bling/vim-airline'
set laststatus=2

" command-T, 输入:CommandT可进入文件快速定位功能
" Plugin 'wincent/command-t'
" sass highlight
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'

" vim-surround 标签外围添加标签
Plugin 'tpope/vim-surround'
" snipmate
Plugin 'msanders/snipmate.vim'
" Ack.vim是对 grep 的升级版
Plugin 'mileszs/ack.vim'

" Emmet.vim自动补全功能
Plugin 'vim-scripts/Emmet.vim'

" vim-easy-align 对齐插件
Plugin 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"自动补全单引号、双引号、括号等
Plugin 'Raimondi/delimitMate'

" 快速注释/解开注释
Plugin 'scrooloose/nerdcommenter'
" 注释的时候自动加个空格, 强迫症必配
let g:NERDSpaceDelims=1

let g:user_emmet_settings = {
  \  'indentation' : '  ',
  \  'perl' : {
  \    'aliases' : {
  \      'req' : 'require '
  \    },
  \    'snippets' : {
  \      'use' : "use strict\nuse warnings\n\n",
  \      'warn' : "warn \"|\";",
  \    }
  \  }
  \}

let g:user_emmet_expandabbr_key = '<c-e>'
let g:use_emmet_complete_tag = 1

call vundle#end()
" support css word with -
autocmd FileType css,scss,slim,html,eruby,coffee,javascript setlocal iskeyword+=-
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4

" vim 7.4 backspace fix
set backspace=indent,eol,start
set t_Co=256
" colorscheme, read here: http://vim.wikia.com/wiki/Change_the_color_scheme
" colorscheme molokai
" clear trailing spaces when u save
autocmd BufWritePre * :%s/\s\+$//e
