function! s:install_plug()
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
    echo 'Downloading Plug. Please wait...'
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
    echo 'success :3'
  endif
  set runtimepath+=~/.config/nvim/autoload/plug.vim/
  call plug#begin()
  source ~/.config/nvim/bundle.vim
  call plug#end()
endfunction
call s:install_plug()

let base16colorspace=256
syntax enable
" "colorscheme gruvbox
colorscheme monokain

set clipboard+=unnamedplus
" " Copy to clipboard
"
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
set guifont=Droid\ Sans\ Mono\ for\ FontAwesome\ Plus\ Nerd\ File\ Types:h11
set wrap!
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
