" Base VIM Settings
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
syntax on
filetype on
filetype indent on
filetype plugin on

" Special File Types Rules
au Filetype make set noexpandtab
au BufNewFile,BufRead *.sls set filetype=yaml
au BufNewFile,BufReadPost *.md set filetype=markdown
au Filetype python,sh,c set tabstop=4
au Filetype python,sh,c set shiftwidth=4

" Highlight Over 80 Columns
highlight Over80Cols ctermbg=magenta guibg=magenta
call matchadd('Over80Cols', '\%81v.', 100)

" Highlight Trailing Whitespace
"highlight ExtraWhitespace ctermbg=red guibg=red
"call matchadd('ExtraWhitespace', '\s\+$', 100)

" Highlight Trailing Whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
