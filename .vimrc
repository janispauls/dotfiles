execute pathogen#infect()

syntax on

let g:solarized_termcolors=256
let g:solarized_termtrans=0

set background=dark

colorscheme solarized


filetype plugin indent on

set incsearch
set ignorecase
set hlsearch

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
autocmd FileType python setlocal shiftwidth=4 tabstop=4

set noerrorbells

nmap <leader>ew :e <C-R>=expand('%:h').'/'<cr>

" jshint "
let jshint2_read = 1
let jshint2_save = 1

"line numbers"
set nu

autocmd BufWritePre,BufRead *.coffee call CoffeeLintAndShow()

function CoffeeLintAndShow()
  CoffeeLint -f coffeelint.json
  cwindow
endfunction

"disabling audio bell"
set vb

"coloring parentheses"
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
