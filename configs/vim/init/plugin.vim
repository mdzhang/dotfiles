" ----------
" Helper functions
" ----------

function! ReadIgnores()
  let ignore = $HOME . "/.ignore"
  let iglist = []
  if filereadable(ignore)
    for oline in readfile(ignore)
       " ignore comments and empty lines
       let line = substitute(oline, '\s|\n|\r', '', "g")
       if line =~ '^#' | con | endif
       if line == ''   | con | endif
       call add(iglist, line)
     endfor
  endif
  return iglist
endfunction

function! ConvertNerdTreeIgnores(ignores)
    let iglist = []
    for ignore in a:ignores
        let cig = substitute(ignore, "^\\*", "", "")
        let cigf = substitute(cig, "^\\.", "\\\\.", "")
        call add(iglist, cigf)
    endfor
    return iglist
endfunction

" ----------
" Plugin 'mileszs/ack.vim'
" ----------

" use the silver searcher for faster searching if available
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" ----------
" Plugin 'kien/ctrlp.vim'
" ----------

if executable('ag')
  " use ag in CtrlP for more quickly listing files while respecting .gitignore
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'
endif

" ----------
" Plugin 'vim-syntastic/syntastic'
" ----------

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ----------
" Plugin 'Yggdroot/indentLine'
" ----------

" show leading spaces
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'

" ----------
" Plugin 'scrooloose/nerdtree'
" ----------

" open up NERDTree automatically
autocmd vimenter * NERDTree

" autofocus last opened window
" autocmd vimenter * wincmd p

" close vim if only a NERDTree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" don't display these in file directory
let NERDTreeIgnore = ConvertNerdTreeIgnores(ReadIgnores())

" show dot/hidden files in file directory
let NERDTreeShowHidden=1

nmap nt :NERDTreeToggle

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
" Plugin 'scrooloose/nerdcommenter'
" ----------

nmap <Leader>tt :TagbarToggle
