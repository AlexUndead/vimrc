call plug#begin('~/.vim/plugged')

"" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Colorschemes
"Plug 'morhetz/gruvbox'
Plug 'ErichDonGubler/vim-sublime-monokai'

" Grep
Plug 'rking/ag.vim'

"" Lazyload
Plug 'ctrlpvim/ctrlp.vim'

"" Easy motion
Plug 'easymotion/vim-easymotion'

"" Emmet
Plug 'mattn/emmet-vim'

"" Ctags
Plug 'vim-scripts/taglist.vim'

"" Git annotate
Plug 'zivyangll/git-blame.vim'

"" Snipets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"" jedi (rename, completion, goto)
Plug 'davidhalter/jedi-vim'

"" Ale
Plug 'dense-analysis/ale'

"" Fixers
"" Black
Plug 'ambv/black'

"" Initialize plugin system
call plug#end()

"syntax on
colorscheme sublimemonokai 
"colorscheme gruvbox 
"set bg=dark
"set number
set hlsearch
set incsearch
"set showcmd
set nobackup
set noswapfile
"set tabpagemax=50
"set mouse=a
set incsearch
set smartcase
set relativenumber
set number
set undofile
set undodir=~/.vim/undo-dir
"set textwidth=90

"" Отступы
"set tabstop=4
"set shiftwidth=4
"set smarttab
"set expandtab
"set smartindent

"" Настройки модулей

"let python_highlight_all = 1

"Jedi
let g:jedi#popup_on_dot = 0
let g:jedi#environment_path = "env"

"Ale
let g:ale_linters = {'python': ['flake8', 'pylint']}
let g:ale_fixers = {'*': [], 'python':['black']}
let g:ale_completion_autoimport = 1
"let g:ale_fix_on_save = 1
let g:black_skip_string_normalization = 1
set omnifunc=ale#completion#OmniFunc

"" Mаппинг

"" Mаппинг плагинов
" Удобное копирование
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d
map <C-n> :NERDTreeToggle<CR>
map <C-g> :NERDTreeFind<CR>
nnoremap <Up>    <C-w>+
nnoremap <Down>  <C-w>-
nnoremap <Left>  <C-w><
nnoremap <Right> <C-w>>
map <C-l> :bn<CR>
map <C-h> :bp<CR>
map <C-j> :tabn<CR>
map <C-k> :tabp<CR>
let mapleader = ','
noremap U :%bd\|e#<CR>
nnoremap <Leader>x :<C-u>call gitblame#echo()<CR>

"" Маппинг easymotion
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

"" Маппинг ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"" Маппинг UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"" Маппинг jedi
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_stubs_command = "<leader>s"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

"" Маппинг Ag
noremap <Leader>f :Ag! -Q "

"" Функции
function! Escape(stuff)
    return substitute(escape(a:stuff, '\/.*$^~[]'), "\n", '\\n', "g")
endfunction
