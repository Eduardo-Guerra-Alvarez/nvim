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

" Icons

Plug 'ctrlpvim/ctrlp.vim'


call plug#end()

set termguicolors
let ayucolor="dark"
colorscheme ayu

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
