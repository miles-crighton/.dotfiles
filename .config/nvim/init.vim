set exrc " if vimrc in current dir execute it
set relativenumber
set nu " Show current line number
set scrolloff=8 " 8 lines before top/bottom to begin scroll
set hidden " keep edited buffers in bg
set noerrorbells " Turn noise on error off

""" Tabs, columns
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap " Prevents wrapping of long lines
set colorcolumn=80
set signcolumn=yes " Gutter for errors/linting

""" Undo history
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

""" Search
set incsearch
set nohlsearch " No highlight search

"""""" PLUGINS """"""
call plug#begin('~/.vim/plugged')

" Theme
Plug 'embark-theme/vim', { 'as': 'embark' }

" Fzf - Fuzzy file finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Stylers
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

" COC - Auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
call plug#end()


"""""" THEME """"""
set termguicolors
colorscheme embark

"""""" REMAPS """""""
let mapleader = " "

" esc in insert mode
inoremap jk <esc>

" esc in command mode
cnoremap jk <C-C>

" Use K for show documentation in preview window
nnoremap <silent> K :call CocAction('doHover')<CR>
