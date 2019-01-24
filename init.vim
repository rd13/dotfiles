set nocompatible              " be iMproved, required
set relativenumber
set encoding=utf-8

set backspace=2
filetype off                  " required

call plug#begin('~/.local/share/nvim/plugged')

Plug 'mhinz/vim-startify'
Plug 'kien/ctrlp.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-scripts/tComment' 
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'vim-ruby/vim-ruby'
Plug 'mattn/emmet-vim'
Plug 'will133/vim-dirdiff'
Plug 'mustache/vim-mustache-handlebars'
Plug 'maksimr/vim-jsbeautify'
Plug 'junegunn/vim-easy-align'
Plug 'rking/ag.vim' 
Plug '2072/PHP-Indenting-for-VIm'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'leafgarland/typescript-vim'

" Themes
Plug 'jacoborus/tender.vim'
" Plug 'skielbasa/vim-material-monokai'
" Plug 'tomasr/molokai'
" Plug 'mhartington/oceanic-next'
" Plug 'joshdick/onedark.vim'
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'altercation/vim-colors-solarized'

" Shows a git diff in the gutter (sign column) and stages/undoes hunks
Plug 'airblade/vim-gitgutter'

" Preview colours in source code while editing
Plug 'ap/vim-css-color'

" CSS3 syntax (and syntax defined in some foreign specifications) support for Vim's built-in syntax/css.vim
Plug 'hail2u/vim-css3-syntax'
augroup VimCSS3Syntax
	autocmd!
	autocmd FileType css setlocal iskeyword+=-
augroup END

" Lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_inactive_collapse=0
let g:airline_powerline_fonts = 1
" let g:airline_section_a = ''
" let g:airline_section_b = ''
" let g:airline_section_c = '%t'
" let g:airline_section_x = ''
" let g:airline_section_y = ''
" let g:airline_section_z = ''
let g:airline_theme='tender'
set t_Co=256

" Asynchronous Lint Engine
Plug 'w0rp/ale'
let g:ale_linters = {
			\   'javascript': ['eslint'],
			\   'javascript.jsx': ['eslint'],
			\}
" let g:ale_fix_on_save = 1
let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']

" Make the yanked region apparent!
Plug 'machakann/vim-highlightedyank'

" Initialize plugin system
call plug#end()

" Theme
syntax enable

" Solarized
if !has("gui_running")
	let g:solarized_termtrans=1
	" let g:solarized_termcolors=256
endif

colorscheme tender 

set background=dark

set visualbell t_vb=  " Disable error noises
set laststatus=2      " Always display the status line
set tabstop=2         " The width of a TAB is set to 2.
                      " Still it is a \t. It is just that
                      " Vim will interpret it to be having
                      " a width of 2.

set shiftwidth=2      " Indents will have a width of 2

set softtabstop=2     " Sets the number of columns for a TAB

" set expandtab         " Expand TABs to spaces

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

au BufNewFile,BufRead *.es6 set filetype=javascript
