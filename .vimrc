filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on                           	" syntax highlighing
set background=dark
colorscheme solarized
filetype on                          	" try to detect filetypes
filetype plugin indent on    		" enable loading indent file for filetype

let mapleader = ","			" Change the leader key to comma

set showcmd                       	" Display incomplete commands.
set showmode                      	" Display the mode you're in.
set backspace=indent,eol,start    	" Intuitive backspacing.
set ignorecase                    	" Case-insensitive searching.
set smartcase                     	" But case-sensitive if expression contains a capital letter.
set number                        	" Show line numbers.
set ruler                         	" Show cursor position.
set incsearch                     	" Highlight matches as you type.
set hlsearch                      	" Highlight matches.
set wrap                          	" Turn on line wrapping.
set scrolloff=3                   	" Show 3 lines of context around the cursor.
set title                         	" Set the terminal's title
set visualbell                    	" No beeping.

set laststatus=2                  	" Show the status line all the time

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

"Bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"TaskList
map <leader>td <Plug>TaskList

"Gundo
map <leader>g :GundoToggle<CR>

"Searching with Ack
nmap <leader>a <Esc>:Ack!
