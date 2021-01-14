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

let need_to_install_plugins=0
if empty(system("grep 'dein#call' ~/.vim/pack/opt/dein.vim/autoload/dein.vim"))
    echoerr "dein.vim not properly installed. Ensure you have recursively initialized git submodules"
else
  " initialize dein.vim
  set runtimepath+=~/.vim/pack/opt/dein.vim

  if dein#load_state('~/.vim/pack/opt')
    call dein#begin('~/.vim/pack/opt')

    " let dein manage dein, required
    call dein#add('~/.vim/pack/opt/dein.vim')

    " required by dein.vim
    call dein#add('Shougo/deoplete.nvim')
    if !has('nvim')
      call dein#add('roxma/nvim-yarp')
      call dein#add('roxma/vim-hug-neovim-rpc')
    endif

    " dein plugins must be below this line
    " required by other plugins, must come first
    call dein#add('godlygeek/tabular')

    " nice status bar
    call dein#add('itchyny/lightline.vim')
    " show git diff (added, mod'd, removed) in the gutter
    call dein#add('mhinz/vim-signify')
    " show file content outline
    call dein#add('majutsushi/tagbar')
    call dein#add('lvht/tagbar-markdown')
    " vim themes
    call dein#add('drewtempelmeyer/palenight.vim')
    call dein#add('cocopon/iceberg.vim')
    call dein#add('ayu-theme/ayu-vim')
    call dein#add('kyoz/purify', {'rtp': 'vim'})
    " rainbow bracket highlighting
    call dein#add('luochen1990/rainbow')
    " show whitespace
    call dein#add('Yggdroot/indentLine')
    " autocompletion
    call dein#add('ervandew/supertab')
    " scratch pad
    call dein#add('mtth/scratch.vim')
    " file system explorer
    call dein#add('scrooloose/nerdtree')
    call dein#add('jistr/vim-nerdtree-tabs')
    " fancy startup screen
    call dein#add('mhinz/vim-startify')
    " connect to a REPL
    call dein#add('jpalardy/vim-slime')
    " easily bulk un/comment regions
    call dein#add('scrooloose/nerdcommenter')
    " easily expand/collapse visually selected region
    call dein#add('terryma/vim-expand-region')
    " easily move selected code up/down
    call dein#add('matze/vim-move')
    " easily add/remove/change quotes etc. for selected text objects
    "   ds" to delete surrounding quotes
    "   ys[select text obj]" to add quotes
    "   cs"' to replace " with '
    call dein#add('tpope/vim-surround')
    " additional text objects
    call dein#add('wellle/targets.vim')
    " syntax checker
    call dein#add('w0rp/ale')
    " code search/replace tools
    call dein#add('dyng/ctrlsf.vim')
    call dein#add('terryma/vim-multiple-cursors')
    " git integration
    call dein#add('tpope/vim-fugitive')
    " search everything
    call dein#add('junegunn/fzf')
    call dein#add('junegunn/fzf.vim')
    " incremental search highlighting w/ regex search support (use /\v)
    call dein#add('haya14busa/incsearch.vim')
    " highlight all occurrences of hovered over token
    call dein#add('RRethy/vim-illuminate.git')
    " cross-editor config
    call dein#add('editorconfig/editorconfig-vim')
    " included in polyglot, but
    " https://github.com/sheerun/vim-polyglot/issues/152
    call dein#add('plasticboy/vim-markdown')
    " included in vim-polyglot, but ctags not detected properly
    call dein#add('derekwyatt/vim-scala')
    " collection of language packs for better defaults
    call dein#add('sheerun/vim-polyglot')
    " alignment
    call dein#add('junegunn/vim-easy-align')
    " todo list plugin
    call dein#add('lukaszkorecki/workflowish')
    " interactive scratchpad that shows output as right side comment
    call dein#add('metakirby5/codi.vim')
    " show markers in sidebar
    call dein#add('kshenoy/vim-signature')

    "
    " Python
    "

    " code folding
    call dein#add('tmhedberg/SimpylFold')
    " auto indentation
    call dein#add('vim-scripts/indentpython.vim')
    " better jinja filetype detection
    call dein#add('lepture/vim-jinja')

    "
    " Yaml
    "

    " code folding
    call dein#add('pedrohdz/vim-yaml-folds')
    " autoformatting
    call dein#add('tarekbecker/vim-yaml-formatter')

    "
    " JSON
    "
    call dein#add('tpope/vim-jdaddy')

    "
    " LookML
    "
    call dein#add('thalesmello/lkml.vim')

    "
    " Fluentd
    "
    call dein#add('itkq/fluentd-vim')

    "
    " Terraform
    "
    " for autocompletion, linting, and ctags
    call dein#add('juliosueiras/vim-terraform-completion')
    call dein#add('hashivim/vim-terraform')

    " devicons and glyphs (must be last)
    call dein#add('ryanoasis/vim-devicons')

    " dein plugins must be added before this line
    call dein#end()
    call dein#save_state()
  endif

  " enable filetype plugins
  filetype plugin indent on

  syntax on

  " load custom vim scripts
  runtime! pack/usr/**.vim

  " load local vim overrides
  if filereadable($HOME . "/.vimrc.local")
      source ~/.vimrc.local
  endif

  " install not installed plugins on startup.
  if dein#check_install()
   call dein#install()
  endif
endif
