" For vanilla vim configuration

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

function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfunction

function! ReadIgnores()
  let ignore = $HOME . "/.ignore"
  let iglist = []
  if filereadable(ignore)
    for oline in readfile(ignore)
       " ignore comments, empty lines, and gitignore exclusion rules
       let line = substitute(oline, '\s|\n|\r', '', "g")
       if line =~ '^#' | con | endif
       if line == ''   | con | endif
       if ignore =~ '^!' | con | endif
       call add(iglist, line)
     endfor
  endif
  return iglist
endfunction

function! ConvertWildIgnores(ignores)
    let igstring = ''
    for ignore in a:ignores
        " remove trailing slashes
        let cig = substitute(ignore, '\/$', '', "g")
        let igstring .= "," . cig
    endfor
    return igstring
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8
set fileencoding=utf-8
language en_US.UTF-8
set langmenu=en_US.UTF-8

" use Unix as the standard file type
set binary
set ff=unix
set ffs=unix,dos,mac
set fileformat=unix

" do not keep backups or swapfiles
set nobackup
set nowritebackup
set noswapfile

" centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps

if !has('nvim')
  set viminfo+='1000,n~/.vim/viminfo
endif

try
    set undodir=~/.vim/undo
    set undofile
catch
endtry

" lines of history vim remembers
set history=500

" reread file when changed outside vim
set autoread

" use system clipboard
set clipboard=unnamed

" ignore case when searching
set ignorecase
set smartcase
" do incremental searching i.e. highlight as pattern typed
set incsearch

if has("wildmenu")
    " have vim tab complete behave like bash tab complete
    set wildmenu
    set wildmode=longest,list

    " set wildignore
    set wildignore=*~,.git
    let s:wildignores = ConvertWildIgnores(ReadIgnores())
    let &wildignore .= s:wildignores
endif

" use magic for regular expressions
set magic

" enable code folding
set foldmethod=syntax
set foldlevel=99

" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

"
" Moving around
"

" set number of lines to see above/below cursor when moving around
" make it large so cursor stays in screen center
set scrolloff=999
" scrolling in iterm
set mouse=nicr
" speed up laggy scrolling
set lazyredraw

"
" Display
"

" show the cursor position (line/col no) all the time
set ruler

" highlight search results
set hlsearch

" highlight column(s)
set colorcolumn=80

" height of the command bar
set cmdheight=2

" show matching brackets when cursor hovers over them
set showmatch

" no annoying sounds/sights on errors
set noerrorbells
set novisualbell
set t_vb=

" add extra margin to the left
set foldcolumn=1

" show line numbers
set number

" don't highlight current line (slows redraw)
set nocursorline

" display incomplete commands
set showcmd

" always show the status line
set laststatus=2

" format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" wrap text that goes off screen
set wrap

" show trailing spaces
set listchars=tab:→\ ,eol:↲,trail:·,nbsp:•
set list

"
" Whitespace
"

" allow backspacing over everything in insert mode
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" replace tab with spaces, except for makefiles
set expandtab

set smarttab
set autoindent
set smartindent

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2

" trim trailing whitespace
autocmd BufWritePre * :call TrimWhitespace()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" enable syntax highlighting
syntax enable
set background=dark

" enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

if $COLORTERM == 'truecolor'
  set termguicolors
  set t_Co=256
endif

try
  colorscheme iceberg
catch
endtry

if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => File types
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" treat .cf configuration files as ini files
au BufNewFile,BufRead *.cf set filetype=dosini
au BufNewFile,BufRead *.conf set filetype=dosini

" set filetype on config files for mutt
au BufNewFile,BufRead *.muttrc setfiletype muttrc

" treat files with .es6 extension as JS files
au BufNewFile,BufRead *.es6 set filetype=javascript
au BufNewFile,BufRead .eslintrc set filetype=json

au BufNewFile,BufRead Brewfile set filetype=ruby

" treat Helm .tpl as go template
au BufRead,BufNewFile *.tpl set filetype=gohtmltmpl

""""""""""""""""""""""""""""""
" => Key mappings
""""""""""""""""""""""""""""""

" override default leader key for custom commands
let mapleader = ","
let maplocalleader = ","

nnoremap <space> za

" shorcut for using PCRE substitution instead of weird vim substitution
cabbrev pd perldo

" faster tab navigation
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Shift + h --> goto previous tab
nnoremap H gT
" Shift + l --> goto next tab
nnoremap L gt
" Shift + k --> open new tab
nnoremap K :tabnew <Enter>
" Shift + j --> close tab
nnoremap J :close <Enter>

" hit enter to select autocomplete selection without inserting newline
" inoremap <expr> <cr> ((pumvisible())?("\<C-y>"):("\<cr>"))

"
" standard editor shortcuts
"

" Ctrl + a --> select all
map <C-a> GVgg
" Ctrl + s --> save file
map <C-s> :w <Enter>
