execute pathogen#infect()

filetype plugin indent on
syntax on

set mouse=a
set ruler
set paste
set tabstop=4
set expandtab
set incsearch
set hlsearch
set autowrite

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>r <Plug>(go-run)

let g:go_fmt_command = "goimports"

" use the quickfix window even for location lists to avoid using :lnext and :lprevious
let g:go_list_type = "quickfix"
