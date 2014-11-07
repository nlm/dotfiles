set tabstop=2
set shiftwidth=2
set smartindent
set autoindent
set expandtab
set smarttab
sy on
filetype on

" Special File Types Rules
au Filetype make set noexpandtab
au BufNewFile,BufRead *.sls set filetype=yaml
au Filetype python,sh set tabstop=4
au Filetype python,sh set shiftwidth=4

" Highlight Trailing Whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
