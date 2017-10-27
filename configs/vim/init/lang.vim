" treat files with .es6 extension as JS files
au BufNewFile,BufRead *.es6 set filetype=javascript
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype yaml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

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

