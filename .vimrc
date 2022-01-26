"      _
" __ _(_)_ __  _ _ __
" \ V / | '  \| '_/ _|
"  \_/|_|_|_|_|_| \__|
"
" Enable syntax highlighting
syntax on

" Leader key
let mapleader =","
map <leader>g :Goyo<CR>

" Plugins
call plug#begin()
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'
"Plug 'skammer/vim-css-color'
"Plug 'pradyungn/Mountain', {'rtp': 'vim'}
"Plug 'chrisbra/Colorizer'
"jPlug 'rakr/vim-one'
"Plug 'jiangmiao/auto-pairs'
"Plug 'pradyungn/Mountain', {'rtp': 'vim'}
"Plug 'preservim/nerdtree'
"Plug 'arcticicestudio/nord-vim'
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
"let g:airline_powerline_fonts = 1
set omnifunc=syntaxcomplete#Complete
"autocmd vimenter * ++nested colorscheme gruvbox
"let g:airline_theme='base16_gruvbox_dark_hard'
"set bg=dark

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

set noshowmode
