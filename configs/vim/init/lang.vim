" treat files with .es6 extension as JS files
au BufNewFile,BufRead *.es6 set filetype=javascript

" ----------
" Plugin 'vim-syntastic/syntastic'
" ----------

" prefer flake8/pep8 over pylint
let g:syntastic_python_checkers = ['flake8', 'pep8']

" ----------
" Plugin 'vim-python/python-syntax'
" ----------

" prefer more highlighting
let g:python_highlight_all = 1

