"
"      _
" __ _(_)_ __  _ _ __
" \ V / | '  \| '_/ _|
"  \_/|_|_|_|_|_| \__|

" Enable syntax highlighting
syntax on

" Leader key
let mapleader =","
map <leader>g :Goyo<CR>

" Plugins
call plug#begin()
Plug 'junegunn/goyo.vim'
"Plug 'skammer/vim-css-color'
Plug 'pradyungn/Mountain', {'rtp': 'vim'}
"Plug 'chrisbra/Colorizer'
"jPlug 'rakr/vim-one'
"Plug 'jiangmiao/auto-pairs'
"Plug 'preservim/nerdtree'
"Plug 'sheerun/vim-polyglot'
"Plug 'vimwiki/vimwiki'
"Plug 'arcticicestudio/nord-vim'
"Plug 'jeffkreeftmeijer/vim-dim'
Plug 'alvan/vim-closetag'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'goballooning/vim-live-latex-preview'
call plug#end()

filetype plugin on
set omnifunc=syntaxcomplete#Complete
"colorscheme nord
"colorscheme grim
"colorscheme mountain

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
"set nu
set nowrap
set noswapfile
set incsearch
set mouse=a
set backspace=2
set nocompatible
set so=7

" Use system clipboard
"set clipboard=unnamedplus

" Vertically center document when entering insert mode
"autocmd InsertEnter * norm zz

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Automatically compile LaTeX documents
autocmd BufWritePost *.tex ! pdflatex %
autocmd BufWritePost ~/.Xresources ! xrdb ~/.Xresources %
autocmd BufWritePost /home/robert/.config/i3/config ! i3-msg restart
autocmd BufWritePost config.h,config.def.h ! sudo make install
autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }

" Move within lines
nnoremap gh 0
nnoremap gl $
map j gj
map k gk

