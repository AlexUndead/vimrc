call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Colorschemes
Plug 'morhetz/gruvbox'
" Grep
" apt-get install silversearcher-ag
Plug 'rking/ag.vim'
" Lazyload
Plug 'kien/ctrlp.vim'
" Easy motion
Plug 'easymotion/vim-easymotion'

" Initialize plugin system
call plug#end()

syntax on
colorscheme gruvbox
set background=dark
set number
set hlsearch
set incsearch
set showcmd

"маппинг

" C(trl)+d - дублирование текущей строки
imap <C-d> <esc>yypi

"маппинг плагинов
map <C-n> :NERDTreeToggle<CR>
map <C-l> :bn<CR>
map <C-h> :bp<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let mapleader = ','
