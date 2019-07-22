execute pathogen#infect()

let mapleader = "\<Space>"

"set mouse=a
set clipboard=unnamed "also yank to clipboard"

"syntax on"
syntax on
syntax enable
let g:solarized_termcolors=256
colorscheme solarized

filetype indent plugin on
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
" indent
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html       setlocal shiftwidth=2 tabstop=2
autocmd FileType python     setlocal shiftwidth=4 softtabstop=4 expandtab

set backspace=2
set backspace=indent,eol,start
set hlsearch
set incsearch
set ignorecase
set smartcase

set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"save
noremap  <silent> <C-S>  :update<CR>
vnoremap <silent> <C-S>  <C-C>:update<CR>
inoremap <silent> <C-S>  <C-O>:update<CR>

"add line numbers"
set nu

"W save"
cnoreabbrev W w

"esc
imap jk <Esc>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"fzf
nmap <Leader>l :Lines<CR>
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>

"black
nmap <Leader>k :Black<CR>
