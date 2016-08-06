" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup      " do not keep a backup file, use versions instead

set number        " show line numbers
set cursorline    " highlight current line
set history=50    " keep 50 lines of command line history
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands

set incsearch     " do incremental searching
set hlsearch      " highlight searches
set ignorecase    " ignore search case
set incsearch     " highlight as pattern typed

set tabstop=2
set shiftwidth=2  " auto indent by 4 spaces
set expandtab     " replace tab with spaces, except for makefiles


set noerrorbells  " no error bells

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif


syntax on