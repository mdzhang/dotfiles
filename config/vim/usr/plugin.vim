" ----------
" Plugin 'mileszs/ack.vim'
" ----------

" use the silver searcher for faster searching if available
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" ----------
" Plugin 'matze/vim-move
" ----------

let g:move_key_modifier = 'C'

" ----------
" Plugin 'kien/ctrlp.vim'
" ----------

if executable('ag')
  " use ag in CtrlP for more quickly listing files while respecting .gitignore
  let g:ctrlp_user_command = 'ag -Q -l --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  " regexp search by default
  let g:ctrlp_regexp = 1
endif

" ----------
" Plugin 'dyng/ctrlsf.vim'
" ----------

nmap <Leader>F :CtrlSF

" ----------
" Plugin 'vim-syntastic/syntastic'
" ----------

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ----------
" Plugin 'elzr/vim-json'
" ----------

let g:vim_json_syntax_conceal = 0

" ----------
" Plugin 'plasticboy/vim-markdown'
" ----------

let g:vim_markdown_conceal = 0

" ----------
" Plugin 'Yggdroot/indentLine'
" ----------

" show leading spaces
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '␣'

" ----------
" Plugin 'scrooloose/nerdtree'
" ----------

" close vim if only a NERDTree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" don't display these in file directory
let NERDTreeRespectWildIgnore = 1

" show dot/hidden files in file directory
let NERDTreeShowHidden=1

" show line numbers in file directory
let NERDTreeShowLineNumbers=1

nmap <Leader>nt :NERDTreeToggle

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
" Plugin 'jistr/vim-nerdtree-tabs'
" ----------

" let g:nerdtree_tabs_open_on_console_startup = 1

" ----------
" Plugin 'majutsushi/tagbar'
" ----------

" autofocus tagbar on open
let g:tagbar_autofocus = 1

" use the global line number settings
let g:tagbar_show_linenumbers = -1

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

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers['json'] = ['prettier']
let g:ale_fixers['python'] = ['yapf']

" ----------
" Plugin 'itchyny/lightline.vim'
" ----------

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'relativepath', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" ----------
" Plugin 'haya14busa/incsearch.vim'
" ----------


map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" ----------
" Plugin 'mhinz/vim-startify'
" ----------

" open up Startify and NERDTree automatically
autocmd vimenter *
  \   if !argc()
  \ |   Startify
  \ |   NERDTree
  \ |   wincmd w
  \ | endif
