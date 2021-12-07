" Just testing the pull request
" Clone Vundle repo using "git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim" for this configuration to take affect 

set nocompatible              " be iMproved, required
filetype off                  " required


" Vim Configuration
syntax on
set hlsearch          " Search highlighting
set ignorecase        " Ignore case
set smartcase         " Do not ignore case if an uppercase character is used in search word
set incsearch         " Incremental search
set nowrapscan        " Do not search from start if end of document is reached
set number            " Line Numbering 
" set relativenumber    " Enable relative numbering

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Code Completing Plugin
Plugin 'valloric/youcompleteme'

" Tree Explorer Plugin
Plugin 'scrooloose/nerdtree'
" Plugin 'Xuyuanp/nerdtree-git-plugin'

" Indent Lines Plugin
Plugin 'Yggdroot/indentLine'

" Auto-pairs
Plugin 'jiangmiao/auto-pairs' 

" Ansible YAML Syntax Highlighting Plugin
Plugin 'pearofducks/ansible-vim'

" Python Linter, PEP8 Plugin. Requires installation of flake8 using pip.
Plugin 'nvie/vim-flake8'

" Git Plugin
Plugin 'airblade/vim-gitgutter'

" Surround
Plugin 'tpope/vim-surround'

" Git Plugin
Plugin 'tpope/vim-fugitive' 

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


""""""""NerdTree Configuration""""""""""
map <C-n> :NERDTreeToggle<CR>

""""""""Syntastic Configuration"""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""Ansible-VIM Configuration""""""""
au BufRead,BufNewFile *.{yml,yaml} set filetype=yaml.ansible
"let g:ansible_yamlKeyName = 'yamlKey'
"let g:ansible_attribute_highlight = "ob"
"let g:ansible_name_highlight = 'd'
"let g:ansible_extra_keywords_highlight = 1
"let g:ansible_template_syntaxes = { '*.rb.j2': 'ruby' }

""""""""Vim Gitgutter Configuration""""""""
set updatetime=100
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow

""""""""vim-flake8 Configuration""""""""""
let g:flake8_show_in_gutter=1
let g:flake8_show_in_file=1


" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
