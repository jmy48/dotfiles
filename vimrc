" Nvim windows 
tnoremap <Esc> <C-\><C-n>
tnoremap qw <C-\><C-n> 

" Automatically enter terminal mode focusing on a terminal window
autocmd BufWinEnter,WinEnter term://* startinsert
nnoremap <Right> <C-w><Right>
nnoremap <Left> <C-w><Left>
nnoremap <Up> <C-w><Up>
nnoremap <Down> <C-w><Down>
nnoremap <S-Right> <C-W>>
nnoremap <S-Left> <C-W><
nnoremap <S-Down> <C-W>-
nnoremap <S-Up> <C-W>+

" Editing and cursor movement
noremap q i
inoremap qw <ESC>:w<CR>l
noremap { <C-o>
noremap } <C-i>
noremap w b
noremap e w
noremap <BS> diw
nnoremap 2 {
nnoremap 3 }
nnoremap - <C-u>
nnoremap = <C-d>
inoremap <C-x> <Esc>u

" Adding empty lines and spaces
nnoremap > :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap < :<c-u>put =repeat(nr2char(10), v:count1)<cr>
nnoremap <Space> a<Space><Esc> 

" Moving current line
nnoremap <C-m> :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap <C-n> :<c-u>execute 'move +'. v:count1<cr>

set nomodeline
set encoding=utf8

" Stop word wrapping
set nowrap
autocmd FileType markdown setlocal wrap

" Adjust system undo levels
set undolevels=100

" Use system clipboard
set clipboard=unnamed

" Customize pane split
highlight VertSplit guibg=NON cterm=NONE
set fillchars+=vert:\ 

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

Plug 'Yggdroot/indentLine'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'justinmk/vim-sneak'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhinz/vim-grepper'

call plug#end()

let g:deoplete#enable_at_startup = 1

" Lightline config
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             ['filename'] ],
      \   'right': [['lineinfo']]
      \ },
      \ 'inactive': {
      \   'left': [['filename']],
      \   'right': [['lineinfo']]
      \ },
      \ }

" Indentline config
let g:indentLine_enabled = 1
let g:indentLine_char = '⠂'
let g:indentLine_color_term = '234'

" Sneak 
let g:sneak#s_next = 1
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F

" Grepper
nnoremap gb :Grepper<Space>-buffers<Space>-query<Space>-<Space>
nnoremap gp :Grepper<Space>-query<Space>
