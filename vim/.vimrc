" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/pack/usr.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Vundle and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/pack/usr, or create a new one.

set nocompatible               " be iMproved

" install vim-plug and plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

call plug#begin('~/.vim/plugged')
  " required by other plugins, must come first
  Plug 'godlygeek/tabular'

  " nice status bar
  Plug 'itchyny/lightline.vim'
  " show git diff (added, mod'd, removed) in the gutter
  Plug 'mhinz/vim-signify'
  " show file content outline
  Plug 'majutsushi/tagbar'
  Plug 'lvht/tagbar-markdown'
  " vim themes
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'cocopon/iceberg.vim'
  Plug 'ayu-theme/ayu-vim'
  Plug 'kyoz/purify', {'rtp': 'vim'}
  Plug 'arcticicestudio/nord-vim'
  " rainbow bracket highlighting
  Plug 'luochen1990/rainbow'
  " show whitespace
  Plug 'Yggdroot/indentLine'
  " autocompletion
  Plug 'ervandew/supertab'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " scratch pad
  Plug 'mtth/scratch.vim'
  " file system explorer
  Plug 'scrooloose/nerdtree'
  Plug 'jistr/vim-nerdtree-tabs'
  " fancy startup screen
  Plug 'mhinz/vim-startify'
  " connect to a REPL
  Plug 'jpalardy/vim-slime'
  " easily bulk un/comment regions
  Plug 'scrooloose/nerdcommenter'
  " easily expand/collapse visually selected region
  Plug 'terryma/vim-expand-region'
  " easily move selected code up/down
  Plug 'matze/vim-move'
  " easily add/remove/change quotes etc. for selected text objects
  "   ds" to delete surrounding quotes
  "   ys[select text obj]" to add quotes
  "   cs"' to replace " with '
  Plug 'tpope/vim-surround'
  " additional text objects
  Plug 'wellle/targets.vim'
  " syntax checker
  Plug 'w0rp/ale'
  " code search/replace tools
  Plug 'dyng/ctrlsf.vim'
  Plug 'terryma/vim-multiple-cursors'
  " git integration
  Plug 'tpope/vim-fugitive'
  " search everything
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'haya14busa/incsearch.vim'
  " highlight all occurrences of hovered over token
  Plug 'RRethy/vim-illuminate'
  " cross-editor config
  Plug 'editorconfig/editorconfig-vim'
  " collection of language packs for better defaults
  Plug 'sheerun/vim-polyglot'
  " included in vim-polyglot, but ctags not detected properly
  Plug 'derekwyatt/vim-scala'
  " alignment
  Plug 'junegunn/vim-easy-align'
  " todo list plugin
  Plug 'lukaszkorecki/workflowish'
  " interactive scratchpad that shows output as right side comment
  Plug 'metakirby5/codi.vim'
  " show markers in sidebar
  Plug 'kshenoy/vim-signature'

  "
  " Python
  "

  " code folding
  Plug 'tmhedberg/SimpylFold'
  " auto indentation
  Plug 'vim-scripts/indentpython.vim'
  " better jinja filetype detection
  Plug 'lepture/vim-jinja'

  "
  " Yaml
  "

  " code folding
  Plug 'pedrohdz/vim-yaml-folds'
  " autoformatting
  Plug 'tarekbecker/vim-yaml-formatter'

  "
  " JSON
  "
  Plug 'tpope/vim-jdaddy'

  "
  " LookML
  "
  Plug 'thalesmello/lkml.vim'

  "
  " Fluentd
  "
  Plug 'itkq/fluentd-vim'

  "
  " Terraform
  "
  " for autocompletion, linting, and ctags
  Plug 'juliosueiras/vim-terraform-completion'
  Plug 'hashivim/vim-terraform'

  " devicons and glyphs (must be last)
  Plug 'ryanoasis/vim-devicons'

  " testing
  Plug 'junegunn/vader.vim'

" vim-plugin plugins must be added before this line
call plug#end()

" enable filetype plugins
filetype plugin indent on

syntax on

" load custom vim scripts
runtime! pack/usr/**.vim

" load local vim overrides
if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
endif
