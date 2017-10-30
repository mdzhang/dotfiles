" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Vundle and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.

set nocompatible               " be iMproved
filetype off                   " required!

let need_to_install_plugins=0
if empty(system("grep lazy_load ~/.vim/bundle/Vundle.vim/autoload/vundle.vim"))
    echoerr "Vundle plugins are not installed. Please run ~/.vim/bin/install"
else
    " initialize vundle
    set rtp+=~/.vim/bundle/Vundle.vim

    " vundle plugins must be below this line
    call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " nice status bar
    Plugin 'vim-airline/vim-airline'
    " show git diff (added, mod'd, removed) in the gutter
    Plugin 'mhinz/vim-signify'
    " show file content outline
    Plugin 'majutsushi/tagbar'
    " vim themes
    Plugin 'flazz/vim-colorschemes'
    " show whitespace
    Plugin 'Yggdroot/indentLine'
    " autocompletion
    Plugin 'ervandew/supertab'
    " file system explorer
    Plugin 'scrooloose/nerdtree'
    " easily bulk un/comment regions
    Plugin 'scrooloose/nerdcommenter'
    " easily expand/collapse visually selected region
    Plugin 'terryma/vim-expand-region'
    " syntax checker
    Plugin 'vim-syntastic/syntastic'
    " code search tool
    Plugin 'mileszs/ack.vim'
    " git integration
    Plugin 'tpope/vim-fugitive'
    " search everything
    Plugin 'kien/ctrlp.vim'

    "
    " Python
    "

    " code folding
    Plugin 'tmhedberg/SimpylFold'
    " auto indentation
    Plugin 'vim-scripts/indentpython.vim'
    " improved syntax highlighting
    Plugin 'vim-python/python-syntax'

    "
    " Javascript
    "

    Plugin 'pangloss/vim-javascript'
    Plugin 'mxw/vim-jsx'

    " vundle plugins must be added before this line
    call vundle#end()

    " enable filetype plugins
    filetype plugin indent on

    syntax on

    runtime! init/**.vim

    if filereadable($HOME . "/.vimrc.local")
        source ~/.vimrc.local
    endif
endif
