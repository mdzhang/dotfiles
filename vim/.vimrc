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
if empty(system("grep lazy_load ~/.vim/bundle/opt/Vundle.vim/autoload/vundle.vim"))
    echoerr "Vundle plugins are not installed. Pleas erun ~/.vim/bin/install"
else
    " initialize cundle
    set rtp+=~/.vim/bundle/opt/Vundle.vim
    call vundle#rc('~/.vim/bundle/opt')

    " vundle plugins must be below this line
    call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " required by other plugins, must come first
    Plugin 'godlygeek/tabular'

    " nice status bar
    Plugin 'itchyny/lightline.vim'
    " show git diff (added, mod'd, removed) in the gutter
    Plugin 'mhinz/vim-signify'
    " show file content outline
    Plugin 'majutsushi/tagbar'
    " vim themes
    Plugin 'mdzhang/vim-nord-hybrid'
    " show whitespace
    Plugin 'Yggdroot/indentLine'
    " autocompletion
    Plugin 'ervandew/supertab'
    " scratch pad
    Plugin 'mtth/scratch.vim'
    " file system explorer
    Plugin 'scrooloose/nerdtree'
    Plugin 'jistr/vim-nerdtree-tabs'
    " fancy startup screen
    Plugin 'mhinz/vim-startify'
    " connect to a REPL
    Plugin 'jpalardy/vim-slime'
    " easily bulk un/comment regions
    Plugin 'scrooloose/nerdcommenter'
    " easily expand/collapse visually selected region
    Plugin 'terryma/vim-expand-region'
    " easily move selected code up/down
    Plugin 'matze/vim-move'
    " syntax checker
    Plugin 'w0rp/ale'
    " code search tool
    Plugin 'mileszs/ack.vim'
    " code search/replace tools
    Plugin 'dyng/ctrlsf.vim'
    Plugin 'terryma/vim-multiple-cursors'
    " git integration
    Plugin 'tpope/vim-fugitive'
    " search everything
    Plugin 'kien/ctrlp.vim'
    " incremental search highlighting w/ regex search support (use /\v)
    Plugin 'haya14busa/incsearch.vim'
    " cross-editor config
    Plugin 'editorconfig/editorconfig-vim'
    " should be included in polyglot, but
    " https://github.com/sheerun/vim-polyglot/issues/152
    Plugin 'plasticboy/vim-markdown'
    " collection of language packs for better defaults
    Plugin 'sheerun/vim-polyglot'
    " alignment
    Plugin 'junegunn/vim-easy-align'
    " preview markdown in browser
    Plugin 'JamshedVesuna/vim-markdown-preview'

    "
    " Python
    "

    " code folding
    Plugin 'tmhedberg/SimpylFold'
    " auto indentation
    Plugin 'vim-scripts/indentpython.vim'
    " better jinja filetype detection
    Plugin 'lepture/vim-jinja'

    "
    " Yaml
    "

    " code folding
    Plugin 'pedrohdz/vim-yaml-folds'

    " vundle plugins must be added before this line
    call vundle#end()

    " enable filetype plugins
    filetype plugin indent on

    syntax on

    runtime! bundle/usr/**.vim

    if filereadable($HOME . "/.vimrc.local")
        source ~/.vimrc.local
    endif
endif
