set tabstop=4
set softtabstop=4
set autoindent
set expandtab
set shiftwidth=4
"set mouse=a
set modeline
set modelines=5
" 转换tab的显示
set list listchars=tab:>-  

autocmd FileType make set noexpandtab
autocmd FileType markdown set nonumber

if has("pathogen")
    execute pathogen#infect()
endif

if has("autocmd")
  filetype  plugin indent on
endif

if has("autochdir")
    set autochdir
endif

filetype plugin on
set ofu=syntaxcomplete#Complete

"set number
set ruler

set nolinebreak
set background=light
set showmatch
set shortmess=atI

set t_Co=256
colorscheme desert

hi LineNr ctermfg=245 ctermbg=235 
set cursorline
hi CursorLine ctermbg=235 cterm=NONE guibg=Grey40
syntax on

"记住上次打开的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

auto BufNewFile *.py call PythonHeader()

func PythonHeader()
    call setline(1, "#!/usr/bin/env python")
    call append(1, "# -*- coding: utf-8 -*-")
    call append(2, "")
    call append(3, "from __future__ import unicode_literals")
    call append(4, "from __future__ import absolute_import")
endf
