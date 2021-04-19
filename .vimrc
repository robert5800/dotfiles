"      _
" __ _(_)_ __  _ _ __
" \ V / | '  \| '_/ _|
"  \_/|_|_|_|_|_| \__|

syntax on

call plug#begin()
Plug 'junegunn/goyo.vim'
Plug 'skammer/vim-css-color'
Plug 'chrisbra/Colorizer'
Plug 'rakr/vim-one'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'vimwiki/vimwiki'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'goballooning/vim-live-latex-preview'
call plug#end()

filetype plugin on

let mapleader =" "
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set noswapfile
set incsearch
set mouse=a
set backspace=2
set nocompatible

" Use system clipboard
set clipboard=unnamedplus

" Vertically center document when entering insert mode
"autocmd InsertEnter * norm zz

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Automatically compile LaTeX documents
autocmd BufWritePost *.tex ! pdflatex %
autocmd BufWritePost ~/.Xresources ! xrdb ~/.Xresources %
autocmd BufWritePost /home/robert/.config/i3/config ! i3-msg restart
autocmd BufWritePost config.h,config.def.h ! sudo make install

" Move within lines
nnoremap gh 0
nnoremap gl $
map j gj
map k gk
