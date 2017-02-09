set nocompatible              " be iMproved, required
set relativenumber
set encoding=utf-8

set backspace=2
filetype off                  " required

call plug#begin('~/.local/share/nvim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'whatyouhide/vim-gotham'
Plug 'mhartington/oceanic-next'
Plug 'NLKNguyen/papercolor-theme'
Plug 'kchmck/vim-coffee-script'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-scripts/tComment' 
Plug 'tpope/vim-rails'
" Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'vim-ruby/vim-ruby'
Plug 'mattn/emmet-vim'
Plug 'will133/vim-dirdiff'
Plug 'mustache/vim-mustache-handlebars'
Plug 'maksimr/vim-jsbeautify'
Plug 'junegunn/vim-easy-align'
Plug 'rking/ag.vim' 
Plug '2072/PHP-Indenting-for-VIm'

" Initialize plugin system
call plug#end()

" Theme
syntax enable

" molokai
" let g:molokai_original = 1
" let g:rehash256 = 1

" colorscheme molokai

" Solarized
if !has("gui_running")
	let g:solarized_termtrans=1
	" let g:solarized_termcolors=256
endif

colorscheme solarized

set background=dark

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:airline#extensions#tmuxline#enabled = 0
set t_Co=256

set visualbell t_vb=  " Disable error noises
set laststatus=2      " Always display the status line
set tabstop=2         " The width of a TAB is set to 2.
                      " Still it is a \t. It is just that
                      " Vim will interpret it to be having
                      " a width of 2.

set shiftwidth=2      " Indents will have a width of 2

set softtabstop=2     " Sets the number of columns for a TAB

set expandtab         " Expand TABs to spaces

set clipboard=unnamed " Copy to clipboard

set nu                " Set line numbers

" Allow JSX Syntax in JS files
let g:jsx_ext_required = 0

" Set Ctrl-P to current directory
let g:ctrlp_working_path_mode = 0

" Ctrl-P ignore list
let g:ctrlp_custom_ignore = '\v[\/](bower_components|node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" Emmet - Use tab to expand HTML
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Easy Align plugin
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Window navigation
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" Window arrangement
" nmap <C-S-J> <C-W><S-J>
" nmap <C-S-K> <C-W><S-K>
" nmap <C-S-H> <C-W><S-H>
" nmap <C-S-L> <C-W><S-L>

" enter normal mode from terminal
tnoremap <esc> <C-\><C-n>

" Auto save files when focus is lost
" :au FocusLost * :wa

:command Q q
:command W w
