" For plugin configuration

" ----------
" Plugin 'mileszs/ack.vim'
" Plugin 'junegunn/fzf'
" ----------

" don't auto-open first matching file
cabbrev Ack Ack!

" Ctrl + p --> FZF
map <C-p> :FZF <ENTER>

" use ripgrep or the silver searcher for faster searching if available
if executable('rg')
  let g:ackprg = 'rg --vimgrep --no-heading --hidden'
elseif executable('ag')
  let g:ackprg = 'ag --vimgrep --hidden'
endif

" ----------
" Plugin 'matze/vim-move
" ----------

let g:move_key_modifier = 'C'

" ----------
" Plugin 'MattesGroeger/vim-bookmarks'
" ----------

highlight BookmarkSign ctermfg=109

" ----------
" Plugin 'dyng/ctrlsf.vim'
" ----------

nmap <Leader>F :CtrlSF

" ----------
" Plugin 'sheerun/vim-polyglot'
" ----------

" ----------
" Plugin 'elzr/vim-json' (polyglot)
" ----------

let g:vim_json_syntax_conceal = 0

" ----------
" Plugin 'vim-python/python-syntax' (polyglot)
" ----------

" prefer more highlighting for things like self, etc
let g:python_highlight_all = 1

" ----------
" Plugin 'plasticboy/vim-markdown' (polyglot)
" ----------

" align w/ editor config
let g:vim_markdown_new_list_item_indent = 2
" syntax highlight code within code fences
let g:vim_markdown_conceal = 0
" TODO: this slows editing on markdown files w/ many code blocks
"let g:vim_markdown_fenced_languages = ['python']

" ----------
" Plugin 'Yggdroot/indentLine'
" ----------

" show leading spaces
let g:indentLine_leadingSpaceEnabled = 0
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_char = '┆'
let g:indentLine_color_gui = '#282d43'

" ----------
" Plugin 'scrooloose/nerdtree'
" ----------


" don't display these in file directory
let NERDTreeRespectWildIgnore = 1

" show dot/hidden files in file directory
let NERDTreeShowHidden = 1

" show line numbers in file directory
let NERDTreeShowLineNumbers = 1

nmap <Leader>nt :NERDTreeToggle
nmap <Leader>ntf :NERDTreeFind

" ----------
" Plugin 'scrooloose/nerdcommenter'
" ----------

" add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" left-align comment delimiters (instead of aligning w/ code)
let g:NERDDefaultAlign = 'left'

" ----------
" Plugin 'majutsushi/tagbar'
" ----------

" autofocus tagbar on open
let g:tagbar_autofocus = 1

" use the global line number settings
let g:tagbar_show_linenumbers = -1

" don't sort tags
let g:tagbar_sort = 0

nmap <Leader>tt :TagbarToggle

" ----------
" Plugin 'w0rp/ale'
" ----------

let g:ale_open_list = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'

let g:ale_linters = {}
let g:ale_linters['python'] = ['flake8']
let g:ale_linters['json'] = ['jsonlint']
let g:ale_linters['css'] = ['csslint']
let g:ale_linters['yaml'] = ['yamllint']
let g:ale_linters['markdown'] = ['markdownlint']

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['eslint']
let g:ale_fixers['json'] = ['prettier']
let g:ale_fixers['python'] = ['yapf', 'isort']


" ----------
" Plugin 'itchyny/lightline.vim'
" ----------

let g:lightline = {
      \ 'colorscheme': 'palenight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'relativepath', 'modified' ] ],
      \   'right': [['lineinfo'], ['percent'], ['readonly', 'linter_warnings', 'linter_errors', 'linter_ok']]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ 'component_expand': {
      \   'linter_warnings': 'LightlineLinterWarnings',
      \   'linter_errors': 'LightlineLinterErrors',
      \   'linter_ok': 'LightlineLinterOK'
      \ },
      \ 'component_type': {
      \   'readonly': 'error',
      \   'linter_warnings': 'warning',
      \   'linter_errors': 'error'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }


function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ◆', all_non_errors)
endfunction

function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ✗', all_errors)
endfunction

function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓ ' : ''
endfunction


" ----------
" Plugin 'haya14busa/incsearch.vim'
" ----------

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" ----------
" Plugin 'jpalardy/vim-slime'
" ----------

let g:slime_paste_file = "~/.vim/slime/.slime_paste"
let g:slime_target = "tmux"
let g:slime_python_ipython = 1
" generally use target pane like ':.1'

" ----------
" Plugin 'machakann/vim-highlightedyank'
" ----------

" persist yank highlight until edit
let g:highlightedyank_highlight_duration = -1

" ----------
" Plugin 'mhinz/vim-startify'
" ----------

" don't change project root
let g:startify_change_to_dir=0

" ----------
" Plugin 'ryanoasis/vim-devicons'
" ----------
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

" avoid brackets around icons in nerdtree
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif

" ----------
" Plugin 'luochen1990/rainbow'
" ----------
let g:rainbow_active = 1
" use Iceterm colors for bracket highlighting
" blue / red / orange / green / purple
let g:rainbow_conf = {
      \ 'guifgs': ['#e2a478', '#e27878', '#89b8c2', '#b4be82', '#a093c7'],
      \ 'ctermfgs': ['150', '203', '216', '109', '140']
      \ }

" ----------
" Plugin 'mtth/scratch.vim'
" ----------

let g:scratch_top = 0
let g:scratch_horizontal = 0
let g:scratch_height = 100
let g:scratch_persistence_file = '.scratch.vim'


"
" avoid duplicate autocmd handlers & spam by grouping all autocmds together
"

augroup vimrc_plugins
  autocmd!

  " auto close error/warning list when file/buffer is closed
  autocmd QuitPre * if empty(&buftype) | lclose | endif

  " close vim if only a NERDTree is left open
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  autocmd User ALELint call lightline#update()

  " open up Startify and NERDTree automatically
  autocmd vimenter *
    \   if !argc()
    \ |   Startify
    \ |   NERDTree
    \ |   wincmd w
    \ | endif

  " ----------
  " Plugin 'junegunn/vim-easy-align'
  " ----------

  " Align GitHub-flavored Markdown tables
  au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>
augroup END
