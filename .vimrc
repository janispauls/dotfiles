execute pathogen#infect()

syntax on

let g:solarized_termcolors=256
let g:solarized_termtrans=0

set background=dark

colorscheme solarized


filetype plugin indent on

set incsearch
set ignorecase

set shiftwidth=2
set tabstop=2
set softtabstop=2

set smarttab
set expandtab

set list
set listchars=tab:>-,trail:~,extends:>,precedes:<

set directory=~/.tmp
set backupdir=~/.backup

set backspace=indent,eol,start

autocmd FileType coffeescript setlocal shiftwidth=2 tabstop=2

set noerrorbells

nmap <leader>ew :e <C-R>=expand('%:h').'/'<cr>

" jshint "
let jshint2_read = 1
let jshint2_save = 1
