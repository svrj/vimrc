## My .vimrc

### Install

**Vundle**

https://github.com/VundleVim/Vundle.vim

> git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

After installation, open vim (or nvim) and run :PluginInstall

**Python3 and Neovim**
> python3 -m pip install pynvim

**Coc.nvim** _(See known issues)_

> curl -sL install-node.now.sh/lts | bash

_Open vim or nvim_
> :call coc#util#install()


---
**Known Issues:**
 - `coc.nvim` doesn't support installation with Vundle (https://github.com/neoclide/coc.nvim/issues/1210). In order to fix a warning such as `...javascript not found...`, use:
> :call coc#util#install()

(_https://github.com/neoclide/coc.nvim/issues/1043_)

