set nocompatible              " be iMproved, required
filetype off                  " required

fun SetupVundle()
    let c = get(g:, 'bundle', {})
    let g:bundle = c
    let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/bundle'
    let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/Vundle.vim'
    if !isdirectory(c.plugin_root_dir.'/Vundle.vim')
        execute '!git clone --depth=1 git@github.com:gfediere/Vundle.vim.git'
            \       shellescape(c.plugin_root_dir.'/Vundke.vim', 1)
    endif
endfun
call SetupVundle()

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

  Plugin 'VundleVim/Vundle.vim'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'valloric/youcompleteme'
  Plugin 'scrooloose/syntastic' " Complete syntax error
  Plugin 'tpope/vim-fugitive' " FOr git branch


" Now we can turn our filetype functionality back on
call vundle#end()
filetype plugin indent on

set laststatus=2
let g:airline_theme='cool'
set cursorline
"hi cursorline cterm=none term=none 
"set number
"set mouse+=a
set incsearch                       " Highlight matches as you type.
set hlsearch                        " Highlight matches.
set copyindent                      " copy the previous indentation on autoindenting
set showmatch                       " set show matching parenthesis
set autoindent
set undolevels=1000                 " use many levels of undo

" I use space for all indentention
set expandtab
set shiftwidth=2
set softtabstop=2
"let g:airline_powerline_fonts = 1
