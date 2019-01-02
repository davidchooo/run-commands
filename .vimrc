syntax enable
colorscheme elflord

set nocompatible

"Attempt to determine the type of a file based on its name and possibly its
"contents. Use this to allow intellignet auto-indenting for each filetypek,
"and for plugins that are filtype specific.
filetype indent plugin on

"Enable syntax highlighting
syntax on

set hidden

set wildmenu

set showcmd

set hlsearch

set ignorecase
set smartcase

set backspace=indent,eol,start

set autoindent

set nostartofline

set ruler

set laststatus=2

set confirm

set visualbell

set t_vb=

set cmdheight=2

set number
set relativenumber

set notimeout ttimeout ttimeoutlen=200

"Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

set shiftwidth=4
set softtabstop=4
set expandtab

nnoremap <C-L> :nohl<CR><C-L>

"Use <Enter> to insert newline below while staying in normal mode
nnoremap <CR> o<Esc>

"Use <j><k> as <Esc>
:imap jk <Esc>

"inoremap ;; <END>;
"inoremap ,, <END>,

"autocompletion
"inoremap (; (<CR>);<C-c>O
"inoremap (, (<CR>),<C-c>O
"inoremap {; {<CR>};<C-c>O
"inoremap {, {<CR>},<C-c>O
"inoremap [; [<CR>];<C-c>O
"inoremap [, [<CR>],<C-c>O
"inoremap {{ {<CR>}<C-c>O
"inoremap (( ()<Esc>i


execute pathogen#infect()

"syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_enable_signs=1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
