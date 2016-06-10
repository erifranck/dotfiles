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
map <F12> :!mkdir
map <C-s> :w <cr>
set background=dark
set number
set clipboard=unnamed
set relativenumber
set tabstop=2
set smartcase
set expandtab
set shiftwidth=2
set noswapfile
set undofile
set completeopt-=preview
source ~/.config/nvim/config/plugin/all.vim
source ~/.config/nvim/config/bindings.vim
source ~/.config/nvim/config/autocmds.vim
