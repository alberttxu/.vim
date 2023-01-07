execute pathogen#infect()

let mapleader = "\<Space>"
let g:camelcasemotion_key = '<leader>'

set cursorline

"set mouse=a
set clipboard=unnamed "also yank to clipboard"

"syntax on"
syntax on
syntax enable
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
" delete buffer without closing split
command Bd bp\|bd \#

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

"forward/back buffers
nmap <Leader>n :bn<CR>
nmap <Leader>p :bp<CR>

"fzf
nmap <Leader>l :Lines<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>B :Buffers<CR>
nmap <Leader>H :History<CR>

"ripgrep
nmap <Leader>F :Rg<CR>

"goyo + limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" `gf` opens file under cursor in a new vertical split
nnoremap gf :vertical wincmd f<CR>
