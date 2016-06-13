" General
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-commentary'

NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-repeat'
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'msanders/snipmate.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tsaleh/vim-align'
NeoBundle 'rking/ag.vim'
NeoBundle 'austintaylor/vim-indentobject'
NeoBundle 'greplace.vim'
NeoBundle 'sjl/splice.vim'
NeoBundle 'Indent-Guides'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-vividchalk'
NeoBundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
NeoBundle 'Puppet-Syntax-Highlighting'
NeoBundle 'JSON.vim'
NeoBundle 'tpope/vim-cucumber'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'vitaly/vim-syntastic-coffee'
NeoBundle 'vim-scripts/jade.vim'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat' 
NeoBundle 'Blackrush/vim-gocode'
NeoBundle 'ryanoasis/vim-devicons'
NeoBundle 'pocke/lemonade'
NeoBundle 'ekalinin/Dockerfile.vim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'mtscout6/vim-cjsx'
NeoBundle 'vitaly/vim-literate-coffeescript'
NeoBundle 'rust-lang/rust', {'rtp': 'src/etc/vim/'}
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'vitaly/vim-gitignore'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/vim-space'
NeoBundle 'mattn/gist-vim'
NeoBundle 'valloric/youcompleteme'
NeoBundle 'matze/vim-move'
NeoBundle 'maksimr/vim-jsbeautify'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'iurifq/ctrlp-rails.vim', {'depends' : 'kien/ctrlp.vim' }
NeoBundle 'SirVer/ultisnips'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'airblade/vim-gitgutter'
NeoBundleLazy 'benekastah/neomake', {'on_cmd': 'Neomake'}
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundleLazy 'Raimondi/delimitMate', {'on_i': 1}
NeoBundleLazy 'Shougo/deoplete.nvim', { 'on_i': 1 }
NeoBundle 'mhinz/vim-startify'
NeoBundle 'chrisbra/vim-diff-enhanced'
NeoBundle 'mhinz/vim-signify'
" Unite
NeoBundle     'Shougo/vimproc.vim', { 'build' : 'make' }
NeoBundleLazy 'Shougo/unite.vim', { 'on_cmd': 'Unite' }
NeoBundleLazy 'Shougo/vimfiler.vim', { 'depends': 'Shougo/unite.vim', }

" JavaScript
NeoBundle 'moll/vim-node'
NeoBundleLazy 'mxw/vim-jsx', {'on_ft': 'javascript'}
NeoBundleLazy 'othree/yajs.vim', {'on_ft': 'javascript'}
NeoBundleLazy 'othree/es.next.syntax.vim', {'on_ft': 'javascript'}
NeoBundleLazy 'gavocanov/vim-js-indent', {'on_ft': 'javascript'}
NeoBundleLazy 'carlitux/deoplete-ternjs', { 'on_ft': 'javascript', 'on_i': 1 }

" Markdown
NeoBundleLazy 'plasticboy/vim-markdown', {'on_ft': 'markdown'}
NeoBundleLazy 'dhruvasagar/vim-table-mode', {'on_ft': 'markdown'}
NeoBundleLazy 'junegunn/goyo.vim', {'on_cmd': 'Goyo'}

" Syntax
NeoBundleLazy 'tmux-plugins/vim-tmux', {'on_ft': 'tmux'}
