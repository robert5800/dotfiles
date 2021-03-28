syntax on

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

" Use system clipboard
set clipboard=unnamedplus

" Vertically center document when entering insert mode
autocmd InsertEnter * norm zz

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Automatically compile LaTeX documents
autocmd BufWritePost *.tex ! pdflatex %
autocmd BufWritePost /home/robert/.config/i3/config ! i3-msg restart

" Move within lines
nnoremap gh 0
nnoremap gl $
map j gj
map k gk
