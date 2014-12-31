set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

set nocompatible
set modeline
set hlsearch
set undolevels=1000
set showmatch

set number

syntax on
filetype on

set background=dark

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

:highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
