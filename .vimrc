colorscheme molokai
set nocompatible
filetype off
set backspace=indent,eol,start

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" The bundles you install will be listed here
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'davidhalter/jedi-vim'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-surround'
Bundle 'klen/python-mode'
Bundle 'Lokaltog/powerline'

filetype plugin indent on

" The rest of your config follows here
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
augroup END

" Powerline setup
set laststatus=2
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" And set some nice chars to do it with
set listchars=tab:»\ ,eol:¬

" automatically change window's cwd to file's dir
set autochdir

" I'm prefer spaces to tabs
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set foldmethod=indent
set foldnestmax=0

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" more subtle popup colors
if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold
    colorscheme molokai
endif

map <F2> :NERDTreeToggle<CR>
let g:pymode = 1
let g:pymode_rope = 1
let g:pymode_motion = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_autoimport = 1
let g:pymode_rope_rename_bind = '<C-c>rr'

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 0

" Set 'R' to run python code
let g:pymode_run_key = 'R'

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

syntax enable
set background=dark
set guifont=Monaco\ for\ Powerline
let g:Powerline_symbols = 'fancy'
nnoremap <space> za
map <S-Enter> O<Esc>
map <CR> o<Esc>


let g:django_projects = '~/PycharmProjects' "Sets all projects under project
let g:django_project_container = 'report_automation' "Inside of these folders look for source
let g:django_activate_virtualenv = 0 "Try to activate the associated virtualenv
let g:django_activate_nerdtree = 1 "Try to open nerdtree at the project root.

let @n = 'v2we"byWWWWv2we"bpbbblllxwwlllxwwwwwwv2we"bp'
