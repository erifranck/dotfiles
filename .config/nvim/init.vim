function! s:install_neobundle()
  if (!isdirectory(expand("$HOME/.config/nvim/bundle/neobundle.vim")))
    echo 'Downloading NeoBundle. Please wait...'
    call system(expand("mkdir -p $HOME/.config/nvim/bundle"))
    call system(expand("git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim"))
    echo 'NeoBundle has been downloaded...'
  endif
  if has('vim_starting')
    set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
  endif
  call neobundle#begin()
  NeoBundleFetch 'Shougo/neobundle.vim'
  source ~/.config/nvim/bundle.vim
  call neobundle#end()
  NeoBundleCheck
endfunction
call s:install_neobundle()

let base16colorspace=256
syntax enable
colorscheme gruvbox

nmap <F2> :tabprevious<cr>
nmap <F3> :tabnext<cr>
nmap <F4> :NERDTreeToggle<cr>
nmap <F5> :NERDTreeFind<cr>
nmap <F9> :set ignorecase<cr>
nmap <F10> :set smartcase<cr>
map <F12> :!mkdir
map <C-s> :w <cr>
set clipboard+=unnamedplus
" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap <leader>p "+p
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

set background=dark
set number
set relativenumber
set tabstop=2
"" set smartcase
set ignorecase
set expandtab
set shiftwidth=2
set noswapfile
set undofile
set completeopt-=preview
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
set wrap!
" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

"beauty
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

" disable arrow keys
nnoremap <UP>    <NOP>
nnoremap <DOWN>  <NOP>
nnoremap <LEFT>  <NOP>
nnoremap <RIGHT> <NOP>
inoremap <UP>    <NOP>
inoremap <DOWN>  <NOP>
inoremap <LEFT>  <NOP>
inoremap <RIGHT> <NOP>

source ~/.config/nvim/config/plugin/all.vim
source ~/.config/nvim/config/bindings.vim
source ~/.config/nvim/config/autocmds.vim
