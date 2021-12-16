"curl -fLO $HOME/.config/nvim/autoload/plug.vim --create-dirs \ "
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plugrvim"

"set compatibility to Vim Only
"set nocompatible
set nolist
set rnu "See relative numbers

" Helps force plug-ins to load correctly when it is turned back on below.
"filetype off

" Turn on syntax highlighting.
syntax on

set title  " Muestra el nombre del archivo en la ventana de la terminal "
set number  " Muestra los números de las líneas "
set mouse=a  " Permite la integración del mouse (seleccionar texto, mover el cursor)"
set cursorline "Resalta la linea actual"
" Identacion a 2 espacios
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab " Inserta espacios en lugar de tabs

set ignorecase " Ignorar mayusculas al hacer una busqueda"
set smartcase " No ignorar mayusculas si la palabra a buscar contiene mayusculas"
set clipboard=unnamedplus "Copiar al portapapeles"
set encoding=UTF-8
set smartindent
set showmatch " show matching"
set autowriteall
set colorcolumn=120

call plug#begin('~/.config/nvim/plugged')

" Temas
Plug 'ayu-theme/ayu-vim'
Plug 'tomasr/molokai'

Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'

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

" Color in brackets and different things
Plug 'frazrepo/vim-rainbow'

" Icons
Plug 'ryanoasis/vim-devicons'

" Show MarkDown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

set termguicolors
let ayucolor="dark"
colorscheme ayu
hi Normal guibg=NONE ctermbg=NONE

" lightline
set laststatus=2

" Show always hidden files
let NERDTreeShowHidden=1

set rtp+=/usr/local/opt/fzf

let g:airline#extensions#default#section_truncate_width = {
      \ 'b': 79,
      \ 'x': 60,
      \ 'y': 88,
      \ 'z': 45,
      \ 'warning': 80,
      \ 'error': 80,
      \ }

let g:airline_highlighting_cache = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_highlighting_cache = 1
let g:airline_powerline_fonts = 1

" this command auto write when you leave window
"au FocusLost,WinLeave * :silent! w
" Airlinei

" Commands
" Config key leader like space
let mapleader = " "

nnoremap <silent> <C-n> :NERDTreeFocus<CR>
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusLine = ''

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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
nnoremap <leader> K :call <SID>show_documentation()<CR>

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver']

" Open FZF with ctrl-p
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
        \ 'ctrl-t': 'tab split',
        \ 'ctrl-s': 'split',
        \ 'ctrl-v': 'vsplit'
        \}
" Ignore node_modules u others files not necesary
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" disable up, down, left and right to move in nvim
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

"keys left, right, up and down relize window
nnoremap <leader><left> :vertical resize -5 <CR> 
nnoremap <leader><right> :vertical resize +5 <CR> 
nnoremap <leader><up> :resize +5 <CR> 
nnoremap <leader><down> :resize -5 <CR>

" move in windows with keys
nnoremap <silent> <right> <C-w><C-l>
nnoremap <silent> <left> <C-w><C-h>
nnoremap <silent> <up> <C-w><C-k>
nnoremap <silent> <down> <C-w><C-j>

" Move in tabs or buffers
nnoremap <silent> <tab> :bn <CR>
nnoremap <silent> <S-tab> :bp <CR>
nnoremap <leader>d :bd <CR>

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
