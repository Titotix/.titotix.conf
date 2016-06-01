source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim

set nocompatible
syntax on
filetype plugin indent on
set hidden
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set number
set showmatch
set mat=1
set noerrorbells
set novisualbell
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set copyindent

" ===== Synthastic module
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0 "default value anyway
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1 "default value anyway

" Syntastic chosen checkers :
let g:syntastic_python_checkers = ["pep8"] 
" let g:syntastic_html_checkers = ['w3']

" autopep8
let g:autopep8_disable_show_diff=1

if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
