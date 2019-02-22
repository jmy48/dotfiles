" janky personalized keybindings
noremap q i
inoremap qw <ESC>:w<CR>

" nvim window movement
tnoremap <Esc> <C-\><C-n>
" automatically enter terminal mode focusing on a terminal window
autocmd BufWinEnter,WinEnter term://* startinsert
nnoremap <Right> <C-w><Right>
nnoremap <Left> <C-w><Left>
nnoremap <Up> <C-w><Up>
nnoremap <Down> <C-w><Down>
nnoremap <S-Right> <C-W>>
nnoremap <S-Left> <C-W><
nnoremap <S-Down> <C-W>-
nnoremap <S-Up> <C-W>+
" cursor movement
noremap { <C-o>
noremap } <C-i>
noremap w b
noremap e w
noremap - g_
noremap <BS> diw
nnoremap 2 {
nnoremap 3 }
nnoremap - <C-u>
nnoremap = <C-d>

set nomodeline
set encoding=utf8

" Stop word wrapping
set nowrap
autocmd FileType markdown setlocal wrap

" Adjust system undo levels
set undolevels=100

" Use system clipboard
set clipboard=unnamed

" Set tab width and convert tabs to spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Don't let Vim hide characters or make loud dings
set conceallevel=1
set noerrorbells

" Use search highlighting
set hlsearch

" Space above/beside cursor from screen edges
set scrolloff=3
set sidescrolloff=5

" Disable mouse support
set mouse=r
set guicursor=
let NVIM_TUI_ENABLE_CURSOR_SHAPE=0

call plug#begin('~/.local/share/nvim/plugged')

" Required
" Plug 'Shougo/unite.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'Yggdroot/indentLine'
" Plug 'airblade/vim-gitgutter'

" Navigating Project Files
" Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
" Plug 'mhinz/vim-grepper'
" Plug 'Shougo/vimfiler.vim', { 'on': 'VimFiler' }

" Movement
Plug 'justinmk/vim-sneak'

" Language Specific
call plug#end()

" Configuration
let g:indentLine_enabled = 1
let g:indentLine_char = "⟩"

" Leader
let mapleader="<Tab>"

" Return to last opened file
nmap <Leader><Leader> <c-^>

" adding empty lines
nnoremap <C-[>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap <C-]>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" moving current line
nnoremap <C-m> :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap <C-n> :<c-u>execute 'move +'. v:count1<cr>

" Grepper
"nnoremap <Leader>fp :Grepper<Space>-query<Space>
"nnoremap <Leader>fb :Grepper<Space>-buffers<Space>-query<Space>-<Space>

" Fuzzy Finder
"nnoremap <Leader>p :CtrlP<CR>
"nnoremap <Leader>t :CtrlP<CR>

" deoplete
"let g:deoplete#enable_at_startup = 1
"inoremap <expr><tab> pumvisible() ? \<c-n>" : \<tab>"

" sneak
let g:sneak#s_next = 1
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
