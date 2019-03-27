set nocompatible

source ~/.vim/.vimrc.bundles

" Leader
let mapleader = " "

" Options
set t_Co=256
syntax on
filetype plugin on

map <c-c> <plug>NERDCommenterToggle
let g:NERDSpaceDelims=1

let g:solarized_termcolors=16
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1
let g:neodark#use_256color=1
colorscheme neodark

scriptencoding utf-8
set encoding=utf-8
set autoread
set autowrite
set backspace=2
set colorcolumn=+1
set cursorline
set expandtab
set hidden
set hlsearch
set incsearch
set laststatus=2
set list listchars=tab:»·,trail:·,nbsp:·
set mouse=a
set nobackup
set noswapfile
set number
set numberwidth=4
set regexpengine=1
set ruler
set showcmd
set smartindent
set splitbelow
set splitright
set softtabstop=2
set shiftwidth=2
set shiftround
set tabstop=2
set tags=./tags
set textwidth=120
set timeoutlen=1000 ttimeoutlen=10

" Custom Mappings
inoremap jk <ESC>
cnoremap jk <ESC>
noremap J jzz
noremap K kzz
nnoremap c* *Ncgn
nnoremap <CR> :
vnoremap <CR> :
nnoremap <SPACE> <Nop>

if has('mac')
  vmap  <Leader>y :w !pbcopy<CR><CR>
else
  vmap  <Leader>y  "+y
endif

map <leader>k :Explore<cr>
map <leader>c :noh<cr>
map <leader>p "*p

" Make Yank behave
vnoremap y myy`y
vnoremap Y myY`y

" Remove Trailing Whitespace
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufWritePre !*.slim :%s/\s\+$//e
autocmd BufWritePre !*.md :%s/\s\+$//e

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp|node_modules|bin$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
set wildignore+=*/tmp/*,*/bin/*,*/node_modules/*,*.so,*.swp,*.zip

let g:netrw_liststyle = 3
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = 'ag %s -l -g ""'
let g:move_key_modifier = 'C'

let g:gitgutter_grep_command = 'ag'
let g:gitgutter_diff_base = 'develop'
let g:gitgutter_sign_column_always = 1
