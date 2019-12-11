" Default settings

set number
execute pathogen#infect()
syntax on

filetype plugin indent on

syntax enable

" Indent
set smarttab
set shiftwidth=4
set tabstop=4

" Personal Definitions / Copy to clipboard
let mapleader=","

" Copy to clipboard (mac uses * register: linux uses + reg)
vnoremap <leader>y "*y
nnoremap <leader>Y "*yg_
nnoremap <leader>y "*y
nnoremap <leader>yy "*yy

" Paste from clipboard
nnoremap <leader>p "*p
nnoremap <leader>P "*P
vnoremap <leader>p "*p
vnoremap <leader>P "*P


" Checking the Gui Running
if has('gui_running')
    set background=light
else
    set background=dark
endif


" Solarized Color Scheme Setting
" let g:solarized_termcolors=256
" let g:soloarized_contrast="high"
let g:solarized_termtrans=1
colorscheme solarized

" Auto Complete for future use
autocmd FileType python setlocal completeopt-=preview
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags


" Clear Trailing White Space w/ F5
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" Set Backspaces
set backspace=indent,eol,start

" Turn Off Bell
set belloff=all
