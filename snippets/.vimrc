set nocompatible " Début plugins ----------
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
" Les plugins s'installent avec la commande :PluginInstall dans Vim

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

filetype plugin indent on " Fin plugins ---


" Configuration
syntax on
set encoding=utf-8
set fileencoding=utf-8
set softtabstop=4
set expandtab
set number

" Police sur windows
if has("gui_running")
    set background=dark
    colorscheme solarized
    if has("gui_win32")
        set guifont=Consolas:h10:cANSI
    endif
endif


