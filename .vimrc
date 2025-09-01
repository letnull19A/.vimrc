syntax on

set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab
set number ruler
set autoindent smartindent
syntax enable
filetype plugin indent on

for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

if has('termguicolors')
  set termguicolors
endif
set background=dark

let g:everforest_background = 'soft'
let g:everforest_better_performance = 1

colorscheme everforest

set guioptions-=T
set guioptions-=m
set mouse=
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [POS=%04l,%04v]\ [LEN=%L]
set guifont=Courier\10
set wildmenu
set number

nmap j gj
nmap <down> gj
nmap k gk
nmap <up> gk

map <silent> <F8>   :Explore<CR>
map <silent> <S-F8> :sp +Explore<CR>

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

call plug#begin('~/.vim/plugged')

Plug 'sainnhe/everforest'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
Plug 'tpope/vim-sensible'

call plug#end()
