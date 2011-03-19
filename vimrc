" Vim Configuration
" Author- Anup Nivargi
" ~/.vimrc
" =================================================================================================
set nocompatible                  " Load VIM in nocompatible mode to use enhanced features

set shell=/bin/bash               " Set the shell path

set history=700                   " Set Command history

filetype plugin indent on         " Enable filetype plugin and indentation

set autoread                      " Update file when changed from outside

set hidden                        " Handle multpile buffers better

" Visual Information
set showmode                      " Show the current mode
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]
set number                        " Show line numbers
set wildmenu                      " Enhanced command line completition
set laststatus=2                  " Show status line all the time. Takes a extra line on the screen
set cmdheight=2                   " The commandbar height
"set ruler                        " Always show current position

" Error handeling
set noerrorbells
set novisualbell

" Visual Enhancement
syntax enable                     " Enable syntax highlighting
set cursorline                    " Highlight the cursor line
set showmatch                     " Highlight matching bracets
set magic                         " Set magic on, for regular expressions
colorscheme default               " Colorscheme to use in normal VI

" Backups
set nobackup
set nowritebackup
set noswapfile

" Tabs and indentation
set expandtab                     " Use spaces instead if tabs
set autoindent                    " Auto indent
set smartindent                   " Smart indent
set shiftwidth=2                  " Maintain 2 level indentation
set tabstop=2                     " 2 level indentation for Tab
set wrap linebreak textwidth=0    " Wrap lines

" Search
set ignorecase                    " Case insensitive search
set smartcase                     " Case sensitive when search contains capital
set hlsearch                      " Highlight search things
set incsearch                     " Incremental search

" autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

" Aliases
let mapleader = ","
nmap <leader>n o<ESC><CR>
nmap <leader>j gj<CR>
nmap <leader>k gk<CR>
nmap <F12> :NERDTreeToggle<CR>
