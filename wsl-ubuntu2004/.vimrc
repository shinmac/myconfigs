" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Show line numbers
set relativenumber number

" Fix automatic replace mode upon start-up if windows cmd terminal is used
set t_u7=
" fix automatic replace mode but will conflict with vim-airline arrow visual
set ambw=double

" Turn on syntax highlighting.
syntax on

" Change colorscheme
" colorscheme slate

" For plug-ins to load correctly.
filetype plugin indent on

" Turn off modelines
set modelines=0

" Automatically wrap text that extends beyond the screen length.
set wrap

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Fixes common backspace problems
set backspace=indent,eol,start

" Status bar
set laststatus=2

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Set status line display
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch

" Enable incremental search
set incsearch

" Include matching uppercase words with lowercase search term
set ignorecase

" Include only uppercase words with uppercase search term
set smartcase

" enable python highlights
let python_highlight_all = 1

" change fileformat to unix if file(s) is for linux environment use.
set fileformat=unix

" for testing not working
" nmap <F9> :!cls<CR>:w<CR>:exec '!python' shellescape(@%, 1)<CR>
" imap <F9> <esc>:!cls<CR>:w<CR>:exec '!python' shellescape(@%, 1)<CR>

" working keybind to run python file within vim
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <F5> :w !python3<CR>
autocmd FileType python imap <buffer> <F5> :w !python3<CR>

" working keybind for python, if os is linux change time to date, date is windos
" nmap <F5> <Esc>:w<CR>:!cls <CR>:!time /T<CR>:!%:p<CR>
" imap <F5> <Esc>:w<CR>:!cls <CR>:!time /T<CR>:!%:p<CR>


""vim-plug manager
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'jayli/vim-easycomplete'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'vim-scripts/vim-gitgutter'
call plug#end()

" Default Color Theme Profile
set t_Co=256
set term=xterm-256color
set background=dark

" PaperColor Theme Settings
" colorscheme PaperColor
" enable termguicolors if you want to set papercolor as the ColorScheme 
set termguicolors 

" Gruvbox Theme Settings
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
"let g:gruvbox_contrast_light='hard'
autocmd vimenter * ++nested colorscheme gruvbox

" Airline Settings
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
" Airline unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.colnr = ' ㏇:'
  let g:airline_symbols.colnr = ' ℅:'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.linenr = ' ␊:'
  let g:airline_symbols.linenr = ' ␤:'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.maxlinenr = '㏑'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = 'Ɇ'
  let g:airline_symbols.whitespace = 'Ξ'
" Airline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.colnr = ' :'
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ' :'
  let g:airline_symbols.maxlinenr = '☰ '
  let g:airline_symbols.dirty='⚡'
" Airline Theme additionsal section
  let g:airline_theme="minimalist"
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#show_close_button = 0

" vim-rainbow
let g:rainbow_active = 1

" startify
let g:startify_session_persistence = 1
let g:startify_custom_header = 'startify#pad(startify#fortune#quote())'
let g:startify_files_number = 10
let g:startify_lists = [
            \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]

" NERDTree Settings
silent! nmap <F2> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"
