"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"       Michelle Zhang
"       http://mdzhang.com - zhang.michelle.d@gmail.com
"
" Raw_version:
"       http://github.com/mdzhang/dotfiles/blob/master/vimrc
"
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Moving around, tabs and buffers
"    -> Editing mappings
"    -> Status line
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible

" override default leader key for custom commands
let mapleader = ","
let maplocalleader = ","

" turn off before setting up Vundle
filetype off

" initialize vundle
set rtp+=~/.dotfiles/configs/vim/bundle/Vundle.vim
" vundle plugins must be below this line
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" nice status bar
Plugin 'vim-airline/vim-airline'
" show git diff (added, mod'd, removed) in the gutter
Plugin 'mhinz/vim-signify'
" code completion
" Plugin 'Valloric/YouCompleteMe'
" show file content outline
Plugin 'majutsushi/tagbar'
" vim themes
Plugin 'flazz/vim-colorschemes'
" show whitespace
Plugin 'Yggdroot/indentLine'
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

" Python specific
" code folding
Plugin 'tmhedberg/SimpylFold'
" auto indentation
Plugin 'vim-scripts/indentpython.vim'
" auto completion
Plugin 'davidhalter/jedi-vim'
" improved syntax highlighting
Plugin 'vim-python/python-syntax'

" vundle plugins must be added before this line
call vundle#end()

" enable filetype plugins
filetype plugin on
filetype indent on

" sets how many lines of history VIM has to remember
set history=500

" set to auto read when a file is changed from the outside
set autoread

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

set fileformat=unix

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set number of lines to see above/below cursor when moving around
set scrolloff=7

" show the cursor position all the time
set ruler

set colorcolumn=80

" height of the command bar
set cmdheight=2

" allow backspacing over everything in insert mode
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" ignore case when searching
set ignorecase
" when searching, be smart about case
set smartcase
" highlight search results
set hlsearch
" do incremental searching i.e. highlight as pattern typed
set incsearch

" use magic for regular expressions
set magic

" show matchin brackets when text indicator over them
set showmatch
" how many tenths of a second to blink when matching brackets
set mat=2

" no annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" add extra margin to the left
set foldcolumn=1

" show line numbers
set number

" highlight current line
set cursorline

" display incomplete commands
set showcmd

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" enable syntax highlighting
syntax enable


" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" set background=dark
try
    colorscheme monokai
catch
endtry


" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Javascript specific

" treat files with .es6 extension as JS files
au BufNewFile,BufRead *.es6 set filetype=javascript

" Python specific

" prefer more highlighting
let g:python_highlight_all = 1

" prefer flake8/pep8 over pylint
let g:syntastic_python_checkers = ['flake8', 'pep8']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" do not keep backup files
set nobackup
set nowb
set noswapfile

" centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
try
    set undodir=~/.vim/undo
    set undofile
catch
endtry

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" use system clipboard
set clipboard=unnamed

" replace tab with spaces, except for makefiles
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set autoindent

" Linebreak on 500 characters
set lbr
set tw=500

" auto indent
set ai
" smart indent
set si
" wrap lines
set wrap

" have indentLine plugin show leading spaces
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'

" show trailing spaces
set listchars=trail:.
set list

" trim trailing whitespace
autocmd BufWritePre * :call TrimWhitespace()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" open up NERDTree automatically
autocmd vimenter * NERDTree

" autofocus last opened window
" autocmd vimenter * wincmd p

" close vim if only a NERDTree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" don't display these in file directory
let NERDTreeIgnore = [
    \'\.pyc$',
    \'\.egg-info$',
    \'__pycache__$',
    \'.ropeproject',
    \'sdist',
    \'\.eggs',
    \'\.tox',
    \'node_modules$',
    \'\.coverage$',
    \'\.cache$',
    \'dist',
    \'build',
    \'.idea',
    \'\.DS_Store'
    \]


" show dot/hidden files in file directory
let NERDTreeShowHidden=1

" add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" left-align comment delimiters (instead of aligning w/ code)
let g:NERDDefaultAlign = 'left'

" use the silver searcher for faster searching if available
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" enable code folding
set foldmethod=syntax
set foldlevel=99

""""""""""""""""""""""""""""""
" => Editing mappings
""""""""""""""""""""""""""""""

nmap <Leader>tt :TagbarToggle
nmap nt :NERDTreeToggle

nnoremap <space> za

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

fun! TrimWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfun
