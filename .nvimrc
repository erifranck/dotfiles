" visual config
set number
set splitbelow
set splitright
set hidden
set ff=unix
set fileformat=unix
set lazyredraw
set noshowmode
set ignorecase
set smartcase
set gdefault

let mapleader = ","

" show trailing whitespaces, tabs and unpritable characters
set list
set listchars=tab:▸\ ,trail:◃,nbsp:•

" indentation
set expandtab
set shiftround
set shiftwidth=2
set tabstop=2

" encoding
if has('vim_starting')
  set encoding=utf-8
endif
set fileencoding=utf-8

" make a mark for column 80
set colorcolumn=80
highlight ColorColumn ctermbg=235

" mappings
map <F5> gT
map <F6> gt
map <F7> :tabnew<CR>
map <F8> :tabclose<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>fs :call FutureShock()<CR>
inoremap jj <ESC>
nnoremap <Leader><Space> :noh<return>
noremap <Leader>s :update<CR>
nnoremap \ :Ag<Space>
noremap <F3> :Autoformat<CR>
nnoremap <Leader>bt :BTags<CR>
nnoremap <Leader>gf :GitFiles<CR>
nnoremap <C-P> :Files<CR>

" yanking without moving the cursor position
vnoremap y myy`y
vnoremap Y myY`y

" easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" disable arrow keys
nnoremap <UP>    <NOP>
nnoremap <DOWN>  <NOP>
nnoremap <LEFT>  <NOP>
nnoremap <RIGHT> <NOP>
inoremap <UP>    <NOP>
inoremap <DOWN>  <NOP>
inoremap <LEFT>  <NOP>
inoremap <RIGHT> <NOP>

" Neomake
nmap <Leader><Space>o :lopen<CR>
nmap <Leader><Space>c :lclose<CR>
nmap <Leader><Space>, :ll<CR>
nmap <Leader><Space>n :lnext<CR>
nmap <Leader><Space>p :lprev<CR>

" CamelCaseMotion
map <S-W> <Plug>CamelCaseMotion_w
map <S-B> <Plug>CamelCaseMotion_b
map <S-E> <Plug>CamelCaseMotion_e

" workaround for ctrl-h not working on nvim
"if has('nvim')
  "nmap <BS> <C-W>h
"endif

" toggle auto-indenting for code paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

call plug#begin('~/.nvim/plugged')

" plugins definitions
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'unblevable/quick-scope'
Plug 'flazz/vim-colorschemes'
Plug 'Valloric/MatchTagAlways'
Plug 'itchyny/lightline.vim'
Plug 'Shutnik/jshint2.vim'
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'mattn/emmet-vim'
Plug 'nvie/vim-flake8'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
Plug 'Matt-Deacalion/vim-systemd-syntax'
Plug 'godlygeek/tabular'
Plug 'bkad/CamelCaseMotion'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'kshenoy/vim-signature'
Plug 'Chiel92/vim-autoformat'
Plug 'cohama/lexima.vim'
Plug 'elzr/vim-json'
Plug 'terryma/vim-multiple-cursors'
Plug 'derekwyatt/vim-scala'
Plug 'diepm/vim-rest-console'
Plug 'mhinz/vim-startify'
Plug 'benekastah/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'ervandew/supertab'
Plug 'kassio/neoterm'
Plug 'wellle/targets.vim'
Plug 'mxw/vim-jsx'
Plug 'junegunn/gv.vim'

call plug#end()

" colorscheme
set background=dark
colorscheme monokain

" fzf config
let g:fzf_buffers_jump = 1
let g:fzf_layout = { 'down': '~25%' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


" vim-easy-tags
let g:easytags_async = 1
let g:easytags_suppress_ctags_warning = 1 " temporary fix for broken version detection with universal-ctags

" vim-rest-console
let g:vrc_trigger = '<C-q>'

" use deoplete
let g:deoplete#enable_at_startup = 1

" supertab
let g:SuperTabDefaultCompletionType = '<C-n>'

" key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" [Ag] Start searching from the root of the project instead of cwd
let g:ag_working_path_mode="r"

" [quick-scope] Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

" Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_error_sign = {
      \ 'text': 'E',
      \ 'texthl': 'ErrorMsg',
      \ }

hi WarningMsg ctermbg=black ctermfg=3
let g:neomake_warning_sign = {
      \ 'text': 'W',
      \ 'texthl': 'WarningMsg',
      \ }

autocmd! BufWritePost,BufEnter * Neomake

" save swap files in a temp directory
set backupdir=~/.tmp,/tmp,/var/tmp
set directory=~/.tmp,/tmp,/var/tmp
silent! set undodir=~/.tmp,/tmp,/var/tmp

" From https://github.com/Dinduks/dotfiles/blob/master/vim/.vimrc
" Remove trailing whitespaces, replace tabs and non-breaking spaces with spaces
function! FutureShock()
  silent! %retab
  silent! %s/\%u00a0/ /
  silent! %s/\s\+$//
endfunction
