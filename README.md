Gerald's vimfiles
===

Windows
---
``` bash
$ cd %userprofile%
$ git clone git@github.com:gera2ld/vimfiles.git vimfiles
$ mkdir vimfiles\bundle
$ git clone https://github.com/gmarik/Vundle.vim.git vimfiles/bundle/Vundle.vim
```

Linux
---
``` bash
$ cd ~
$ git clone git@github.com:gera2ld/vimfiles.git .vim
$ mkdir .vim/bundle
$ git clone https://github.com/gmarik/Vundle.vim.git .vim/bundle/Vundle.vim
```

Mac OS
---
Only `~/.vimrc` is imported by Vim in Mac OS. So you need `so ~/.vim/vimrc` manually. First clone the repository as in Linux. Then add `~/.vimrc`:

``` vimL
so ~/.vim/vimrc
```

However, MacVim works with `~/.vim` but has some other problems, such as incomplete display.
