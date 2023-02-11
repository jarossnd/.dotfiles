


" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
"                     - VIM PLUG -
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' } "theme
call plug#end()

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
"                     - GENERAL SETTINGS -
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:set number
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a "allow mouse clicks
inoremap jk <Esc> " Change the escape key to jk
tnoremap jk <C-\><C-n> " Change the escape key to jk
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Disable commenting on new line

colorscheme dracula