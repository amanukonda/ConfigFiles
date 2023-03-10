syntax on                        " Turn syntax highlighting on.

filetype on                      " Enable type file detection. Vim will be able to try to detect the type of file in use.i
filetype plugin on               " Enable plugins and load plugin for the detected file type.
filetype indent on               " Load an indent file for the detected file type.


set incsearch                    "" Incremental search that shows partial matches.
set ignorecase                   "" Ignore case during search
set smartcase                    "" Automatically switch search to case-sensitive when search query contains an uppercase letter.
set showmatch                    "" Highlights matching parentheses
set hlsearch                     "" Enable search highlighting.
set autoindent                   "" New lines inherit the indentation of previous lines.

set expandtab                    "" Convert tabs to spaces.
set tabstop=4                    "" Indent using four spaces.

set nocompatible                 "" Disable compatibility with vi which can cause unexpected issues.
set mouse=a                      "" Enable mouse for scrolling and resizing.


" Key Binding for Go to Beginning(Ctrl+a)/End of line(Ctrl+e) in Normal and Insert Mode
map <C-a> <ESC>^
imap <C-a> <ESC>I
map <C-e> <ESC>$
imap <C-e> <ESC>A


" Miscellaneous

"set visualbell                  "" Flash the screen instead of beeping on errors.
"set number                      "" Add numbers to each line on the left-hand side
