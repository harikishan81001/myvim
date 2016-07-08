set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" The bundles you install will be listed here

filetype plugin indent on

" The rest of your config follows here


augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%79v.*/
    autocmd FileType python set nowrap
    augroup END

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2


Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'

map <F2> :NERDTreeToggle<CR>

Bundle 'klen/python-mode'


let g:pymode_rope = 1


" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'


"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"


" Auto check on save
let g:pymode_lint_write = 0


" Support virtualenv
let g:pymode_virtualenv = 1


" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'


let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

let g:pymode_folding = 0



" Others
"set autochdir
set tabstop=4
set shiftwidth=4
set expandtab

if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold
endif


map <C-z> <Esc>:tabprev<CR>
map <C-x> <Esc>:tabnext<CR>
map <C-n> <Esc>:tabe
