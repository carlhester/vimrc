set nocompatible
filetype off
filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set fileformat=unix
set number
set laststatus=2
set statusline+=Row:\ %-4l
set statusline+=Col:\ %-4c
set statusline+=TotRows:\ %-4L
set statusline+=File:
set statusline+=%f
set list
set splitbelow
set splitright
set listchars=tab:▸\
set path+=**
set wildignore+=**/build/**
syntax on
let g:go_fmt_command = "goimports"
set rtp+=/Users/chstr/go/src/golang.org/x/lint/misc/vim
autocmd BufWritePost,FileWritePost *.go silent! execute '!goimports -w % 2>/dev/null' | cwindow 15
" autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow 15
let g:go_version_warning = 0
let g:go_gopls_enabled = 0
nnoremap ,test :wa!<CR>:GoTest<CR>
nnoremap ,aaa :-1read ~/.vim/snippets/aaa<CR>jjj
nnoremap ,trun :-1read ~/.vim/snippets/trun<CR>7l
nnoremap ,tt :-1read ~/.vim/snippets/tt<CR>9la
nnoremap ,whit :%s/ \+$//g<CR>
vnoremap > >gv
vnoremap < <gv
