"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
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

" sets how many lines of history vim has to remember
set history=500

" set to auto read when a file is changed from the outside
set autoread

" set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8
set fileencoding=utf-8

" use Unix as the standard file type
set ffs=unix,dos,mac

set fileformat=unix

" use system clipboard
set clipboard=unnamed

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

" enable code folding
set foldmethod=syntax
set foldlevel=99

" always show the status line
set laststatus=2

" format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

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

" show trailing spaces
set listchars=trail:.
set list

" trim trailing whitespace
autocmd BufWritePre * :call TrimWhitespace()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

set background=dark
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

""""""""""""""""""""""""""""""
" => Key mappings
""""""""""""""""""""""""""""""

" override default leader key for custom commands
let mapleader = ","
let maplocalleader = ","

nnoremap <space> za

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" returns true if paste mode is enabled
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
