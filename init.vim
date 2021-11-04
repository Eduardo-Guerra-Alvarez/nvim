"curl -fLO $HOME/.config/nvim/autoload/plug.vim --create-dirs \ "
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plugrvim"

"set compatibility to Vim Only
"set nocompatible
set nolist
set rnu "See relative numbers

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on

set title  " Muestra el nombre del archivo en la ventana de la terminal "
set number  " Muestra los números de las líneas "
set mouse=a  " Permite la integración del mouse (seleccionar texto, mover el cursor)"
set cursorline "Resalta la linea actual"
" Identacion a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab " Inserta espacios en lugar de tabs

set ignorecase " Ignorar mayusculas al hacer una busqueda"
set smartcase " No ignorar mayusculas si la palabra a buscar contiene mayusculas"
set clipboard=unnamedplus "Copiar al portapapeles"
set encoding=UTF-8
set smartindent
set showmatch " show matching"
set autowriteall

call plug#begin('~/.config/nvim/plugged')

" Temas
Plug 'ayu-theme/ayu-vim'
Plug 'sonph/onehalf'

Plug 'morhetz/gruvbox'

" Buscador de archivos
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Sugerencias
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Muestra arbol de archivos
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'

" Mostrar linea visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Multiple cursor
Plug 'terryma/vim-multiple-cursors'
" Icons
Plug 'ctrlpvim/ctrlp.vim'

" Color in brackets and different things
Plug 'frazrepo/vim-rainbow'

" Icons
Plug 'ryanoasis/vim-devicons'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Show MarkDown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

set termguicolors
let ayucolor="dark"
colorscheme ayu
hi Normal guibg=NONE ctermbg=NONE

" lightline
set laststatus=2

set rtp+=/usr/local/opt/fzf

let g:airline_powerline_fonts = 1

let g:airline#extensions#default#section_truncate_width = {
      \ 'b': 79,
      \ 'x': 60,
      \ 'y': 88,
      \ 'z': 45,
      \ 'warning': 80,
      \ 'error': 80,
      \ }

" rainbow
au FileType c,cpp,objc,objcpp call rainbow#load()

" this command auto write when you leave window
au FocusLost,WinLeave * :silent! w

" Airline
" let g:airline#extensions#tabline#enabled = 1

" Commands
nnoremap <silent> <C-n> :NERDTreeFocus<CR>

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Mapping of multi cursors
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = 'g<C-n>'
let g:multi_cursor_select_all_word_key = 'g<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = 'g<C-n>'
let g:multi_cursor_prev_key            = 'g<C-p>'
let g:multi_cursor_skip_key            = 'g<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" Command to color word mistakes in English
nnoremap <F6> :setlocal spell! spelllang=en<Enter>
