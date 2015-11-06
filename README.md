# own-vimrc
It's my .vimrc backup.

我备份一下我 Mac 下的 Vim 配置情况。以及介绍一下 Vim 里面的插件的使用方法。

首先是一个最主要的插件：**vundle.vim**

###[vundle.vim](http://zuyunfei.com/2013/04/12/killer-plugin-of-vim-vundle/)

是进行 Vim 的插件管理的，我这里添加插件使用了 `Plugin`，添加完直接运行 `:PluginInstall`，即可下载相应的插件。

```
Plugin 'gmarik/Vundle.vim'
```

###[emmet-vim](https://www.zfanw.com/blog/zencoding-vim-tutorial-chinese.html)

这个插件是前端开发必备的，就算是使用 Sublime Text 也会安装这个插件的，`div>p#foo$*3>a` 猜猜看这个命令按`tab`会变成什么？

```
Plugin 'mattn/emmet-vim'
```

###[vim-fugitive](http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/)

这个插件是专门为 git 准备的，你可以看链接。当然，安装好之后你也可以先试试`:Git`看看。

```
Plugin 'tpope/vim-fugitive'
```

###[vim-rvm](https://github.com/tpope/vim-rvm)

这个就直接放 GitHub 的链接了，安装好后直接在 Vim 中输入`:Rvm -v`看看。

```
Plugin 'tpope/vim-rvm'
```

###[vim-easymotion](http://www.wklken.me/posts/2015/06/07/vim-plugin-easymotion.html)

该插件是用来跳转使用的，即可以快速跳到指定位置。

```
Plugin 'Lokaltog/vim-easymotion'
```

###[vim-rails](https://ruby-china.org/topics/4478)

这个是专门为 Rails 定制的 vim 插件，主要用途是在 model、controller、view 三层之间切换。你可以在 controller 里的 `def index` 使用 `gf`，当然 `ctrl+6` 可以切回去。

```
Plugin 'tpope/vim-rails.git'
```

###[The-NERD-Commenter](http://www.vim.org/scripts/script.php?script_id=1218)

是用来注释用的。你可以试试 `,cc` 和 `,c`，分别是注释和取消注释。

```
Plugin 'vim-scripts/The-NERD-Commenter'
```

###[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)

vim 缩进提示线。可能我这么一说并没有什么感觉，直接点上面的链接看图就知道了。

```
Plugin 'nathanaelkane/vim-indent-guides'
```

###[nerdtree](https://github.com/scrooloose/nerdtree)

是提供树形目录的，对于用惯了 IDE 的同学来说这个还是很需要的。

```
Plugin 'scrooloose/nerdtree'
```

###[vim-slim](https://github.com/slim-template/vim-slim)

用来语法高亮的。

```
Plugin 'slim-template/vim-slim.git'
```

###[ctrlp.vim](http://zuyunfei.com/2013/08/26/vim-plugin-ctrlp/)

用来进行查询使用的，在项目中如果文件过多的话，树形目录是很麻烦的。直接按`ctrl+p`可跳出查询页面。

```
Plugin 'kien/ctrlp.vim'
```

###[vim-airline](https://github.com/bling/vim-airline)

vim 底部的状态栏，可以显示一些相关的信息。比如文件类型啊，编码格式啊，什么的。

```
Plugin 'bling/vim-airline'
```

###[vim-sourround](http://zuyunfei.com/2013/04/17/killer-plugin-of-vim-surround/)

用来更改一些配对符号的。具体还是看链接吧。删除`ds+[",[,(,t]`，更改`cs+[",[,(]`。

```
Plugin 'tpope/vim-surround'
```
###[vim-easy-align](http://www.wklken.me/posts/2015/06/07/vim-plugin-easyalign.html)

对齐使用，有强迫症的童鞋必备。

```
Plugin 'junegunn/vim-easy-align'
```
###[delimitMate](http://www.wklken.me/posts/2015/06/07/vim-plugin-delimitmate.html)

这个没什么好说的，就是配对符自动补全。

```
Plugin 'Raimondi/delimitMate'
```
