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

" enable filetype plugins
" must be set before any runtimepath changes
filetype plugin indent on

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
  Plug 'preservim/tagbar'
  " vim themes
  Plug 'ayu-theme/ayu-vim'
  Plug 'kyoz/purify', {'rtp': 'vim'}
  " rainbow bracket highlighting
  Plug 'luochen1990/rainbow'
  " show whitespace
  Plug 'Yggdroot/indentLine'
  " autocompletion
  Plug 'ervandew/supertab'
  " scratch pad
  Plug 'mtth/scratch.vim'
  " file system explorer
  Plug 'scrooloose/nerdtree'
  Plug 'jistr/vim-nerdtree-tabs'
  " fancy startup screen
  Plug 'mhinz/vim-startify'
  " connect to a terminal REPL
  Plug 'jpalardy/vim-slime'
  " in-editor REPL
  Plug 'sillybun/vim-repl'
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
  Plug 'dense-analysis/ale'
  " code search/replace tools
  Plug 'dyng/ctrlsf.vim'
  Plug 'terryma/vim-multiple-cursors'
  " git integration
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
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
  "   in vim-polyglot above, but does not init properly w/o explicit inclusion
  Plug 'fatih/vim-go'
  " included in vim-polyglot, but ctags not detected properly
  Plug 'derekwyatt/vim-scala'
  Plug 'peitalin/vim-jsx-typescript'
  " alignment
  Plug 'junegunn/vim-easy-align'
  " show markers in sidebar
  Plug 'kshenoy/vim-signature'

  "
  " Prose writing
  "

  " text wrap
  Plug 'reedes/vim-pencil'
  " distraction free
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'

  "
  " Ruby
  "
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-endwise'

  "
  " JS/TS
  "
  Plug 'leafgarland/typescript-vim'
  Plug 'mogelbrod/vim-jsonpath'
  Plug 'prisma/vim-prisma'
  Plug 'wuelnerdotexe/vim-astro'

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
  " Neo4j/Cypher
  "
  Plug 'neo4j-contrib/cypher-vim-syntax'

  "
  " Terraform
  "
  " for autocompletion and linting
  Plug 'hashivim/vim-terraform'

  " devicons and glyphs (must be last)
  Plug 'ryanoasis/vim-devicons'

  "
  " AI
  "
  Plug 'github/copilot.vim'

" vim-plugin plugins must be added before this line
call plug#end()

syntax on

" load custom vim scripts
runtime! pack/usr/**.vim

" load local vim overrides
if filereadable($HOME . "/.vimrc.local")
   source ~/.vimrc.local
endif
