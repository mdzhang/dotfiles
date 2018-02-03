" treat .cf configuration files as ini files
au BufNewFile,BufRead *.cf set filetype=dosini
au BufNewFile,BufRead *.conf set filetype=dosini

" set filetype on config files for mutt
au BufNewFile,BufRead *.muttrc setfiletype muttrc

" treat files with .es6 extension as JS files
au BufNewFile,BufRead *.es6 set filetype=javascript

au BufNewFile,BufRead Brewfile set filetype=ruby


" ----------
" Plugin 'vim-syntastic/syntastic'
" ----------

" prefer flake8/pep8 over pylint
let g:syntastic_python_checkers = ['flake8', 'pep8']

" fix for https://github.com/fatih/vim-go/issues/889
let g:syntastic_go_checkers = ['govet', 'errcheck', 'go']

" ----------
" Plugin 'vim-python/python-syntax'
" ----------

" prefer more highlighting
let g:python_highlight_all = 1

